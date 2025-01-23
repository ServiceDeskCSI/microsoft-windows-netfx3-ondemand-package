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

How to Download Old Windows 11 ISOs [23H2, 22H2, 21H2]: https://www.youtube.com/watch?v=zBjzQTn

------------
