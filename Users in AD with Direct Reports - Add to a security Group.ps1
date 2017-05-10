

 

$AllUsers = Get-ADUser -Filter *
-Properties DirectReports

$UsersWhoAreManagers = $AllUsers |
Where-Object {$_.DirectReports -gt '0'}

$UsersWhoAreManagers | ForEach-Object
{Add-ADGroupMember 'INSERT-AD-SECURITY-GROUP' -Members $_}

