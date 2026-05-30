@echo off
chcp 65001 >nul
cd /d "%~dp0"

:: 使用 call，並利用 @ 語法直接載入檔案
call gemini -p "請執行這個檔案內的要求 @.\prompt\microprocessor_agent_prompt.md" --skip-trust --yolo