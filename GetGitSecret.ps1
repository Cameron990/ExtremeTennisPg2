$token = "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"
$repoOwner = "Cameron990"
$repoName = "immediatemodegames"

$repo = "immediatemodegames"
$secret_name = "PEAR_MAGIC_SECURE"

$url = "https://api.github.com/repos/$owner/$repo/actions/secrets/$secret_name"

$response = Invoke-RestMethod -Uri $url -Method Get -Headers @{
    "Authorization" = "Bearer $token"
}

$secretValue = $response.value

Write-Output $secretValue

# Write the secret value to a file
$secretValue | Out-File -FilePath "Gitsecret.txt" -Encoding UTF8