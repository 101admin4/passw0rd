$lengthPassword = Read-Host 'Введите длину пароля'
get-random -count $lengthPassword -input (33..47 + 48..57 + 65..90 + 97..122) | foreach-object -begin {$pass = $null} -process {$pass += [char]$_} -end {$pass}
