# MAX 360 CLOUD

Aplicación Android experimental para estudiar la transferencia inalámbrica de archivos de una GoPro MAX (2019) a Google Drive.

## Estado
Este repositorio contiene el esqueleto inicial de Android y el flujo de compilación. **Todavía no descarga archivos de la cámara ni sube archivos a Drive.** La compatibilidad Wi-Fi con la MAX original debe validarse con una cámara real antes de implementar la automatización.

## Objetivos
- Android 8.0 (API 26) o superior como base.
- Emparejamiento y descubrimiento de la GoPro MAX (2019).
- Transferencia de archivos originales sin modificar.
- Google Drive mediante OAuth 2.0 (sin pedir ni almacenar contraseñas).
- Reintentos, control de duplicados y registro de transferencias.
- No borrar archivos de la cámara.

## Limitaciones conocidas
- La MAX 2019 no debe confundirse con MAX2 ni con cámaras compatibles con Open GoPro.
- El acceso inalámbrico dependerá del firmware y de protocolos comunitarios no oficiales.
- Android puede restringir Wi-Fi y tareas en segundo plano; puede requerirse que la app esté abierta o un servicio en primer plano.
- Google Drive ofrece 15 GB gratuitos compartidos con Gmail y Google Fotos; el almacenamiento no es ilimitado.

## Compilar
Abre esta carpeta con Android Studio o ejecuta `./gradlew assembleDebug` después de añadir el Gradle Wrapper.

## Seguridad
No incluyas tokens OAuth, contraseñas, claves privadas ni archivos `google-services.json` en Git.
