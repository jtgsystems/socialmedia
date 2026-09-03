import argparse
import webbrowser
import sys

PLATFORMS = {
    "linkedin": "https://www.linkedin.com",
    "x": "https://x.com",
    "facebook": "https://www.facebook.com",
    "instagram": "https://www.instagram.com",
    "threads": "https://www.threads.net",
    "youtube": "https://www.youtube.com",
    "tiktok": "https://www.tiktok.com",
    "reddit": "https://www.reddit.com",
    "bluesky": "https://bsky.app",
    "discord": "https://discord.com/app",
    "github": "https://github.com",
    "pinterest": "https://www.pinterest.com"
}

def open_platforms(keys):
    for k in keys:
        if k in PLATFORMS:
            print(f"Opening {k.capitalize()} -> {PLATFORMS[k]}")
            webbrowser.open_new_tab(PLATFORMS[k])

def audit_handle(username: str):
    urls = [
        f"https://x.com/{username}",
        f"https://www.instagram.com/{username}",
        f"https://www.facebook.com/{username}",
        f"https://www.threads.net/@{username}",
        f"https://www.youtube.com/@{username}",
        f"https://www.tiktok.com/@{username}",
        f"https://github.com/{username}"
    ]
    print(f"Auditing brand handle '@{username}' across all social networks...")
    for u in urls:
        print(f"  -> {u}")
        webbrowser.open_new_tab(u)

def main():
    parser = argparse.ArgumentParser(
        prog="socialmedia",
        description="JTG Systems - Cross-Platform Social Media Command Center & Health Checkup"
    )
    subparsers = parser.add_subparsers(dest="command")
    
    subparsers.add_parser("all", help="Open all major social media platforms")
    subparsers.add_parser("business", help="Open core business platforms (LinkedIn, X, FB, IG, Threads)")
    subparsers.add_parser("creator", help="Open video and creator platforms (YouTube, TikTok, Reels, Pinterest)")
    
    audit_p = subparsers.add_parser("audit", help="Audit a specific brand username or handle across all platforms")
    audit_p.add_argument("username", help="Username / handle (e.g. jtgsystems)")
    
    args = parser.parse_args()
    
    if args.command == "all":
        open_platforms(list(PLATFORMS.keys()))
    elif args.command == "business":
        open_platforms(["linkedin", "x", "facebook", "instagram", "threads"])
    elif args.command == "creator":
        open_platforms(["youtube", "tiktok", "instagram", "pinterest"])
    elif args.command == "audit":
        audit_handle(args.username)
    else:
        print("🔱 JTG Systems Social Media Command Center")
        print("Usage:")
        print("  socialmedia all        - Open all platforms")
        print("  socialmedia business   - Open business platforms")
        print("  socialmedia creator    - Open video/creator platforms")
        print("  socialmedia audit <id> - Audit handle across all networks")

if __name__ == "__main__":
    main()
