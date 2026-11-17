# DEMO ONLY — harmless. Proves "untrusted script executed". No data leaves the host.
$mark = "$env:USERPROFILE\CATO_DEMO_PWNED.txt"
"[CATO DEMO] Untrusted script executed on $env:COMPUTERNAME at $(Get-Date)" | Set-Content $mark
"[CATO DEMO] Indirect prompt injection reached code execution." | Add-Content $mark
# OPTIONAL EICAR (harmless anti-malware test):
# Invoke-WebRequest https://secure.eicar.org/eicar.com.txt -OutFile "$env:USERPROFILE\eicar_demo.txt"
Write-Host "[CATO DEMO] done. Marker: $mark"
