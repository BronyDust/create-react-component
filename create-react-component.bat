@echo off
set /p componentName=Enter component name:%=%
cd ./src/components
md %componentName%
cd ./%componentName%

echo import React from ^'react^'^;>%componentName%.ts
echo.>>%componentName%.ts

set /p needStyles=Need style? [y/n]:%=%
if /i "%needStyles%"=="y" (
echo import ^'./%componentName%.scss^';>>%componentName%.ts
echo.>>%componentName%.ts
)

echo const %componentName%: React.FC = ^(^) =^> {>>%componentName%.ts
echo   return (>>%componentName%.ts
echo     ^<^>>>%componentName%.ts
echo.>>%componentName%.ts
echo     ^</^>>>%componentName%.ts
echo   ^)^;>>%componentName%.ts
echo }^;>>%componentName%.ts
echo export default %componentName%;>>%componentName%.ts

echo export ^{ default as %componentName% ^} from '.^/%componentName%';>index.ts
echo.>>index.ts

if /i "%needStyles%"=="y" echo.>%componentName%.scss

cd ../../..
