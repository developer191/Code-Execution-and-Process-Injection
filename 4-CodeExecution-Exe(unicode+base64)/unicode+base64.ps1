$PEBytes = [System.IO.File]::ReadAllBytes("test.exe")
$UnicodeBytes  = [System.Text.Encoding]::Unicode.GetBytes($PEBytes)
$Base64Payload = [System.Convert]::ToBase64String($UnicodeBytes)

Set-Content test.b64  -Value $Base64Payload