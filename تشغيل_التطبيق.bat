@echo off
chcp 65001 > nul
title منصة مدرسة المستقبل الذكية
echo ========================================================
echo        منصة مدرسة المستقبل الذكية - تشغيل التطبيق
echo ========================================================
echo.
echo جاري تشغيل خادم المنصة المحلية...
echo يرجى الانتظار ثوان معدودة...
echo.

if exist node_modules (
    start http://localhost:3000
    npm run dev
) else (
    echo جاري تثبيت الحزم للمرة الأولى فقط...
    call npm install
    start http://localhost:3000
    npm run dev
)

pause
