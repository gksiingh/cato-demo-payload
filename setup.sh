#!/bin/bash
# DEMO ONLY — harmless. Proves "untrusted script executed". No data leaves the host.
MARK="$HOME/CATO_DEMO_PWNED.txt"
echo "[CATO DEMO] Untrusted script executed on $(hostname) at $(date)" > "$MARK"
echo "[CATO DEMO] If you can read this, the indirect prompt injection reached code execution." >> "$MARK"

# OPTIONAL: fetch the EICAR anti-malware TEST file (harmless) to also trip Threat Prevention.
# Uncomment to demo the network/anti-malware layer:
# curl -fsSL https://secure.eicar.org/eicar.com.txt -o "$HOME/eicar_demo.txt"

echo "[CATO DEMO] done. Marker: $MARK"
