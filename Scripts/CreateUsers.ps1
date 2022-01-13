$USERS_LIST = Get-Content .\usersInfos.txt

# Create an organization unit with name _USERS, unprotected from deletion so we can delete if there is errors
New-ADOrganizationalUnit -Name _USERS -ProtectedFromAccidentalDeletion $false

foreach($user in $USERS_LIST) {
    # Formatting stuff

    # Split line based on space
    $first = $user.Split(" ")[0].ToLower()
    $last = $user.Split(" ")[1].ToLower()
    $password = ConvertTo-SecureString $user.Split(" ")[2].ToLower() -AsPlainText -Force

    # Then compute username (concat)
    $username = "$($first.Substring(0,1))$($last)".ToLower()

    # Printing user
    Write-Host "Creating user: $($username)" -BackgroundColor Black -ForegroundColor Red

    # Adding user
    New-ADUser -AccountPassword $password `
               -GivenName $first `
               -Surname $last `
               -DisplayName $username `
               -Name $username `
               -EmployeeID $username `
               -PasswordNeverExpires $true `
               -Path "ou=_USERS,$(([ADSI]`"").distinguishedName)" `
               -Enabled $true
}