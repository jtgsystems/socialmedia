#!/usr/bin/env bash
# JTG Systems - Social Media Command Center & Health Checkup (Linux / macOS)
set -e

open_url() {
    local url="$1"
    if command -v xdg-open &>/dev/null; then
        xdg-open "$url" &>/dev/null &
    elif command -v open &>/dev/null; then
        open "$url" &
    else
        echo "Please open: $url"
    fi
}

echo "========================================================="
echo "   JTG Systems - Social Media Command Center (2026)"
echo "            https://jtgsystems.com"
echo "========================================================="
echo "  [1] Open Core Business (LinkedIn, X/Twitter, FB, IG, Threads)"
echo "  [2] Open Video & Creator Platforms (YouTube, TikTok, Reels, Pinterest)"
echo "  [3] Open Community & Tech (Reddit, Bluesky, Discord, GitHub)"
echo "  [4] Launch All Major Platforms at Once"
echo "  [q] Quit"
echo "========================================================="
read -rp "Enter choice: " choice

case "$choice" in
    1)
        echo "Opening Business Platforms..."
        open_url "https://www.linkedin.com"
        open_url "https://x.com"
        open_url "https://www.facebook.com"
        open_url "https://www.instagram.com"
        open_url "https://www.threads.net"
        ;;
    2)
        echo "Opening Video & Creator Platforms..."
        open_url "https://www.youtube.com"
        open_url "https://www.tiktok.com"
        open_url "https://www.instagram.com/reels/"
        open_url "https://www.pinterest.com"
        ;;
    3)
        echo "Opening Community & Tech Platforms..."
        open_url "https://www.reddit.com"
        open_url "https://bsky.app"
        open_url "https://discord.com/app"
        open_url "https://github.com"
        ;;
    4)
        echo "Launching All Platforms..."
        open_url "https://www.linkedin.com"
        open_url "https://x.com"
        open_url "https://www.facebook.com"
        open_url "https://www.instagram.com"
        open_url "https://www.threads.net"
        open_url "https://www.youtube.com"
        open_url "https://www.tiktok.com"
        open_url "https://www.reddit.com"
        open_url "https://bsky.app"
        ;;
    q|Q)
        exit 0
        ;;
    *)
        echo "Invalid selection."
        ;;
esac

echo "✓ Selected social platforms launched in your default browser!"
