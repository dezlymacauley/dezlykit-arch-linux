#!/bin/dash

if command -v paru >/dev/null 2>&1; then
    echo "[INFO] Paru found. Installing auto-cpufreq..."
    
    # Install auto-cpufreq
    paru -S --needed --noconfirm auto-cpufreq

    # Start the service if not active
    if ! systemctl is-active --quiet auto-cpufreq; then
        echo "[INFO] auto-cpufreq is not active. Starting..."
        sudo systemctl start auto-cpufreq
    fi

    # Enable the service if not enabled
    if ! systemctl is-enabled --quiet auto-cpufreq; then
        echo "[INFO] auto-cpufreq is not enabled. Enabling..."
        sudo systemctl enable auto-cpufreq
    fi
else
    echo "[WARN] Paru is not installed. Skipping auto-cpufreq installation."
fi
