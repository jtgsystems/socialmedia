@echo off
setlocal enabledelayedexpansion
title JTG Systems - Social Media Command Center & Health Checkup

:menu
cls
echo =========================================================
echo    JTG Systems - Social Media Command Center v2026
echo             https://jtgsystems.com
echo =========================================================
echo  [1] Open All Core Business (LinkedIn, X/Twitter, FB, IG)
echo  [2] Open Video & Creator Platforms (YouTube, TikTok, Reels)
echo  [3] Open Community & Dev (Reddit, GitHub, Bluesky, Discord)
echo  [4] Launch All Major Social Platforms at Once
echo  [5] Exit
echo =========================================================
set "choice="
set /p choice="Enter choice (1-5): "

if "%choice%"=="1" goto business
if "%choice%"=="2" goto video
if "%choice%"=="3" goto community
if "%choice%"=="4" goto launch_all
if "%choice%"=="5" exit /b
goto menu

:business
echo Launching Business Platforms...
start https://www.linkedin.com
start https://x.com
start https://www.facebook.com
start https://www.instagram.com
start https://www.threads.net
goto done

:video
echo Launching Video & Creator Hubs...
start https://www.youtube.com
start https://www.tiktok.com
start https://www.instagram.com/reels/
start https://www.pinterest.com
goto done

:community
echo Launching Community & Tech Platforms...
start https://www.reddit.com
start https://bsky.app
start https://discord.com/app
start https://github.com
goto done

:launch_all
echo Launching All Major Social Networks...
start https://www.linkedin.com
start https://x.com
start https://www.facebook.com
start https://www.instagram.com
start https://www.threads.net
start https://www.youtube.com
start https://www.tiktok.com
start https://www.reddit.com
start https://bsky.app
goto done

:done
echo.
echo [✓] Selected platforms opened in default browser!
echo.
pause
goto menu
