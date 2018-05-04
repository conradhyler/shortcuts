$ie = New-Object -ComObject 'internetExplorer.Application'
$ie.Visible= $true # Make it visible
$usernmae="test"
$password="test1"
$ie.Navigate("https://website.com/login")
While ($ie.Busy -eq $true) {Start-Sleep -Seconds 3;}
$usernamefield = $ie.document.getElementByID('ysi_email')
$usernamefield.value = $username
$passwordfield = $ie.document.getElementByID('ysi_password')
$passwordfield.value = $password
$Link = $ie.document.getElementByID('ysi_btn_login')
$Link.click()