$Shell = New-Object -ComObject ("WScript.Shell")
$ShortCut = $Shell.CreateShortcut($env:USERPROFILE + "%USERPROFILE%\Desktop\Your Shortcut.lnk")
$ShortCut.TargetPath="yourexecutable.exe"
$ShortCut.Arguments="-arguementsifrequired"
$ShortCut.WorkingDirectory = "c:\your\executable\folder\path";
$ShortCut.WindowStyle = 1;
$ShortCut.Hotkey = "CTRL+SHIFT+F";
$ShortCut.IconLocation = "yourexecutable.exe, 0";
$ShortCut.Description = "Your Custom Shortcut Description";
$ShortCut.Save()