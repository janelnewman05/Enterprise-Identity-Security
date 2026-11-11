# Enterprise Identity Security Project
# Apex Financial Group - Simulated Authentication Logs
# Day 1: Security Event Generation

$ProjectRoot = Split-Path -Parent $PSScriptRoot
$LogPath = Join-Path $ProjectRoot "logs\authentication.csv"

# Create fictional authentication events
$Events = @(
    [PSCustomObject]@{
        Timestamp = (Get-Date).AddMinutes(-12)
        Username  = "j.smith"
        SourceIP  = "192.0.2.10"
        EventID   = 4625
        Status    = "Failed"
    },
    [PSCustomObject]@{
        Timestamp = (Get-Date).AddMinutes(-11)
        Username  = "j.smith"
        SourceIP  = "192.0.2.10"
        EventID   = 4625
        Status    = "Failed"
    },
    [PSCustomObject]@{
        Timestamp = (Get-Date).AddMinutes(-10)
        Username  = "j.smith"
        SourceIP  = "192.0.2.10"
        EventID   = 4625
        Status    = "Failed"
    },
    [PSCustomObject]@{
        Timestamp = (Get-Date).AddMinutes(-9)
        Username  = "j.smith"
        SourceIP  = "192.0.2.10"
        EventID   = 4625
        Status    = "Failed"
    },
    [PSCustomObject]@{
        Timestamp = (Get-Date).AddMinutes(-8)
        Username  = "j.smith"
        SourceIP  = "192.0.2.10"
        EventID   = 4625
        Status    = "Failed"
    },
    [PSCustomObject]@{
        Timestamp = (Get-Date).AddMinutes(-5)
        Username  = "a.jones"
        SourceIP  = "192.0.2.20"
        EventID   = 4624
        Status    = "Success"
    }
)

# Save events to a CSV file
$Events | Export-Csv -Path $LogPath

Write-Host "Authentication logs generated successfully."

# Identify accounts with 5 or more failed logins
$Suspicious = $Events |
    Where-Object { $_.Status -eq "Failed" } |
    Group-Object Username |
    Where-Object { $_.Count -ge 5 }

foreach ($Account in $Suspicious) {
    Write-Host "SECURITY ALERT: $($Account.Name) has $($Account.Count) failed login attempts."
}