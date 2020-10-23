@echo off
set /p folder=Enter component folder [folder\/]:%=%
if exist .\src\components\%folder% (
  set /p componentName=Enter component name:%=%
  md "%componentName%"
  cd "%componentName%"
  echo import React from ^'react^'^;> .\src\conponents\%folder%%componentName%.ts
  echo. >> .\src\conponents\%folder%%componentName%.ts

  set /p needStyles=Need style? [y/n]:%=%
  if /i "%needStyles%"=="y" (
  echo import ^'./%componentName%.scss^';>> .\src\conponents\%folder%%componentName%.ts
  echo. >> .\src\conponents\%folder%%componentName%.ts
  )

  echo const %componentName%: React.FC = ^(^) =^> {>> .\src\conponents\%folder%%componentName%.ts
  echo   return (>> .\src\conponents\%folder%%componentName%.ts
  echo     ^<^>>> .\src\conponents\%folder%%componentName%.ts
  echo. >> .\src\conponents\%folder%%componentName%.ts
  echo     ^</^>>> .\src\conponents\%folder%%componentName%.ts
  echo   ^)^;>> .\src\conponents\%folder%%componentName%.ts
  echo }^;>> .\src\conponents\%folder%%componentName%.ts
  echo. >> .\src\conponents\%folder%%componentName%.ts
  echo export default %componentName%;>> .\src\conponents\%folder%%componentName%.ts
  echo. >> .\src\conponents\%folder%%componentName%.ts

  echo export ^{ default as %componentName% ^} from '.^/%componentName%';>.\src\conponents\%folder%index.ts

  if /i "%needStyles%"=="y" echo. >.\src\conponents\%folder%%componentName%.scss
) else (
  echo Path .\src\components\%folder% doesn't exist
  pause
)
