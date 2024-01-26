Set-PSDebug -Strict
function Get-Repo {
    $branch = (git remote show -n | Select-Object -First 1)
    if ( $branch ) {
        foreach ( $line in (git remote show -n $branch) ){
            if ( $line -match "Push +URL: \w+@github.com:([\w-\.]+/[\w-\.]+).git" ){
                return $matches[1]
            }
        }
    }
    return $null
}

if ( $args[0] ){
    $repo = $args[0]
    if ( -not $repo -match "^[\w-\.]+/[\w-\.]+$" ){
        Write-Host "Usage: Download-Count.ps1 [OWNERNAME/REPOS]"
        exit 1
    }

} else {
    $repo = (Get-Repo)
    if ( -not $repo ){
        Write-Host "git information not found"
        exit 1
    }
}

$url = "https://api.github.com/repos/$repo/releases"

Invoke-WebRequest -URI $url | ConvertFrom-Json | ForEach-Object {
    foreach ($p in $_.assets){
        Write-Host $p.name $p.download_count
    }
}
