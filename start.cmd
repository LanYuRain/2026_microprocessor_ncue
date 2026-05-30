@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo [1/3] 開始呼叫 Gemini 執行任務...
:: 使用 call，並利用 @ 語法直接載入檔案
call gemini -p "請執行這個檔案內的要求 @.\prompt\microprocessor_agent_prompt.md" --skip-trust --yolo

echo.
echo [2/3] Gemini 執行完畢，準備執行 Git 操作...
git add .
git commit -m "Update from Gemini Agent"
git push

echo.
echo [3/3] 流程全部完成！
pause