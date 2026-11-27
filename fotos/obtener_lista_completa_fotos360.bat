@echo off
setlocal
set "CARPETA=E:\Carpeta GitHub\fotos360\fotos"
if not exist "%CARPETA%\" (
  echo No existe la carpeta: "%CARPETA%"
  pause
  exit /b 1
)
powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "$dir = '%CARPETA%';" ^
  "$ext = @('.jpg','.jpeg','.png','.webp','.tif','.tiff','.bmp','.gif');" ^
  "$files = Get-ChildItem -LiteralPath $dir -File | Where-Object { $_.Extension.ToLowerInvariant() -in $ext } | Sort-Object Name | Select-Object -ExpandProperty Name;" ^
  "$out = Join-Path $dir 'LISTA_COMPLETA_FOTOS.txt';" ^
  "$files | Set-Content -LiteralPath $out -Encoding UTF8;" ^
  "Write-Host ('Fotos encontradas: ' + $files.Count);" ^
  "Write-Host ('Lista guardada en: ' + $out)"
if errorlevel 1 (
  echo No se pudo generar la lista.
  pause
  exit /b 1
)
echo.
echo Sube aqui el archivo LISTA_COMPLETA_FOTOS.txt para que pueda mostrarte todos los nombres.
pause
