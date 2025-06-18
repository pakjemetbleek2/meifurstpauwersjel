#Doel : Open een willekeurige foto van een hond
#-lt geeft aan hoe vaak de code moet worden uitgevoerd, dus bij 3 laat hij 3 fotos zien
for ($teller = 0; $teller -lt 3; $teller++) {
    Write-Host $teller
    $data = Invoke-WebRequest -Uri "https://dog.ceo/api/breeds/image/random"
    $json = $data.content | ConvertFrom-Json
    $url = $json.message
    Start-Process "msedge.exe" -ArgumentList "--new-window", "$url"
}

#doeiyiguyfutfuftufuiiogogyi

git add .
git commit -m "{test}"
git push