 # microsoft-windows-netfx3-ondemand-package

Windows 11 is missing microsoft-windows-netfx3-ondemand-package by default. 


Manually Copy Missing Files

If you get Error 0x800f0950, Windows may be missing installation files.

C:\Windows\WinSxS

microsoft-windows-netfx3-ondemand-package

![image](https://github.com/user-attachments/assets/0e29f471-2734-4d77-a660-32e643c25622)

------------

Extract Cab files from Old Windows 11 ISO: [https://archive.org/details/Win11_English_x64](https://archive.org/details/Win11_English_x64)

Mount the ISO 

    Mount-DiskImage -ImagePath “C:\Temp\Windows.iso”

    Enable-WindowsOptionalFeature -online -FeatureName NetFX3 -all -limitaccess -source D:\


------------

To install the .cab file for .NET Framework 3.5 (Microsoft-Windows-NetFx3-OnDemand-Package.cab), follow these steps:

**Method 1: Using DISM (Deployment Image Servicing and Management)**

Open Command Prompt as Administrator.

Run the following command (replace X:\path\to\cabfile.cab with the actual path to the .cab file):

    DISM /Online /Add-Package /PackagePath: C:\path\to\cabfile.cab

Wait for the installation to complete. Restart your computer if required.

**Method 2: Using PowerShell**

Open PowerShell as Administrator.

Run the following command:

    Add-WindowsPackage -Online -PackagePath "C:\path\to\cabfile.cab"

Wait for the process to complete.

**Method 3: Using DISM with Source (If Internet Installation Fails)**

If the above methods fail due to missing source files, try installing .NET Framework 3.5 from a Windows installation ISO:

Mount the Windows installation ISO (or insert a bootable USB).

Note the drive letter of the mounted ISO (e.g., D:).

Run the following command, replacing D:\sources\sxs with the correct path:

    DISM /Online /Enable-Feature /FeatureName:NetFx3 /All /LimitAccess /Source:D:\sources\sxs

------------
