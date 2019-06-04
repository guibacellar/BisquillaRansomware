# BisquillaRansomware
The evolution of NxRansomware (https://github.com/guibacellar/NxRansomware), Fully written using a .Net Framework + C&amp;C System

**Created By:** Th3 0bservator (Guilherme Bacellar Moralez)

# Disclaimer
**This code is created and maintened only for a research proposal. Please do not use for other proposes.**

**Please, do not run the code with a release profile. It can be seriously dangerous. Really!**


# Objectives
This project has a 1 main objectives:
  * Improve previous Ransomware
  * Create an Memory injectable ransomware 

# Improvements
  * New File Encryption Algorithm (ChaCha20 from Keepass Source Code) - Previous: AES-256
  * New In Memory String Protection (Same as Keepass does) - Previous: Standard .Net SecureString
  * New Key Rotation Statistics (Now 10% of chance) - Previous: 5%
  * Encryption now Run on MultiThreading (N. of Threads = N. of Cores on Target Machine)
  * Compiled against x86 Cpu Target (Allow to be Injected on Any Unmanaged Process)
  * Two Debugger Detections (Simple, yet powerfull)
  * Execution UI (For Encryption Only)
  

# Direct Ransomware Operation (Without Injection)

***Attention:*** The Ransomware execution is locked using a hard coded rule to run (hijack files) at c:\temp - Locate the "ConfigurationManager.cs" for more informations.

**To Hijack Files**: Just run the binary (BisquillaRansomware.exe)

**To Restore Files**: Run (BisquillaRansomware.exe --decrypt)

# Malware Operation with Memory Injection
***Attention:*** The Ransomware dropper is locked to use a notepad++ process for injection.

**To Hijack Files**: Just run the binary (BisquillaRansomware.exe)
   * Open Notepad++
   * Run (GoogleChromeUpdate.exe)

**To Restore Files**: Just run the binary (BisquillaRansomware.exe)
   * Open Notepad++
   * Run (GoogleChromeUpdate.exe --decrypt) 
   
