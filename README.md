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

    Mount-DiskImage -ImagePath “C:\Temp\Win11_English_x64.iso”

    md %systemdrive%\tempnetfx3
    
    expand.exe -f:* D:\Sources\SxS\microsoft-windows-netfx3-ondemand-package~31bf3856ad364e35~amd64~~.cab %systemdrive%\tempnetfx3 >nul

    dism.exe /Online /Add-Package /PackagePath:"%systemdrive%\tempnetfx3\update.mum"

    rd /s /q %systemdrive%\tempnetfx3

------------

How to Download Old Windows 11 ISOs [23H2, 22H2, 21H2]: https://www.youtube.com/watch?v=zBjzQTn

Download the ISO using UUP. https://github.com/ServiceDeskCSI/microsoft-windows-netfx3-ondemand-package/releases/download/Windows11_22000.3260_amd64/22000.3260_amd64_en-us_professional_35630b7b_convert.zip

------------
