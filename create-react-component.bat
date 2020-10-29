@echo off

if /i "%1"=="" (
set /p componentName=Enter component name:%=%
) else set componentName=%1

if /i "%2"=="" (
set componentPath="components"
) else set componentPath="%2"

cd ./src/%componentPath%
md %componentName%
cd ./%componentName%

echo import React from ^'react^'^;>%componentName%.tsx
echo.>>%componentName%.tsx

set /p needStyles=Need style? [y/n]:%=%
if /i "%needStyles%"=="y" (
echo import ^'./%componentName%.scss^';>>%componentName%.tsx
echo.>>%componentName%.tsx
)

echo const %componentName%: React.FC = ^(^) =^> {>>%componentName%.tsx
echo   return (>>%componentName%.tsx
echo     ^<^>>>%componentName%.tsx
echo.>>%componentName%.tsx
echo     ^</^>>>%componentName%.tsx
echo   ^)^;>>%componentName%.tsx
echo }^;>>%componentName%.tsx
echo export default %componentName%;>>%componentName%.tsx

echo export ^{ default as %componentName% ^} from '.^/%componentName%';>index.ts
echo.>>index.ts

if /i "%needStyles%"=="y" echo.>%componentName%.scss

cd ../../..
