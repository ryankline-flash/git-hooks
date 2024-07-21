param($MessagePath)

$message = Get-Content -Path $MessagePath

$branch = & git rev-parse --abbrev-ref HEAD 
$branch = $branch -replace '\r?\n\z'

$m = [Regex]::Matches($branch, "(?:\w+\/)*([a-zA-Z]{2,}[-_]\d+)")
if ($m) {
    $ticket = $m[0].Value -replace '\r?\n\z'
    Set-Content -Path $MessagePath -Value "$($ticket) $($message)"
}
