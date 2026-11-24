# Avisos de licencias — Fábrica de Video 1.3.0

Este paquete contiene **solo código y textos propios** (skills y scripts de la Fábrica de Video). No incluye ni redistribuye programas de terceros: los instala el propio usuario desde sus fuentes oficiales.

| Herramienta | Quién la hace | Licencia | Cómo llega al equipo |
|---|---|---|---|
| HyperFrames | HeyGen | Apache-2.0 | `npx hyperframes` (se descarga al usarla) |
| GSAP | GreenSock | Licencia "Standard No Charge" de GSAP | La carga HyperFrames al renderizar |
| ffmpeg | Proyecto FFmpeg | LGPL/GPL según la compilación | winget / brew |
| Whisper (openai-whisper) | OpenAI | MIT | `pip install openai-whisper` |
| Node.js | OpenJS Foundation | MIT | winget / brew |
| Python | PSF | PSF License | winget / brew |
| Puppeteer-core | Google | Apache-2.0 | `npm install` (lo hace `revisar.py`) |
| Montserrat y demás fuentes de Google Fonts | Sus autores | SIL Open Font License | La carga HyperFrames al renderizar |
| Chrome / Edge | Google / Microsoft | Propietaria (gratis) | Instalación del usuario |
| Google Flow (Omni Flash, Nano Banana) | Google | Términos de servicio de Google | La usa el alumno con su propia cuenta en labs.google/flow; el paquete solo trae prompts |

**No incluido a propósito:** el kit de terceros "Viegas" (u otros kits de pago o con licencia restrictiva). Si lo tienes por tu cuenta, respeta su licencia.

**Música y efectos:** los efectos y la música simple que genera la Fábrica se crean por síntesis en tu propio equipo, sin material de terceros. Si usas música o logos tuyos, asegúrate de tener los derechos.

**Marcas:** HeyGen, Claude, Whisper, Chrome y demás nombres pertenecen a sus dueños. Este paquete no está afiliado a ellos.

Los términos vigentes de cada herramienta son los que publica su autor; revísalos antes de un uso comercial amplio.
