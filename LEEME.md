# Fábrica de Video · versión 1.3.0

Tu video profesional, con tu marca, **sin pagar programas de edición ni de avatar**. Un paquete de 8 skills para Claude que funciona en dos etapas:

1. **Consigue tus clips gratis**: grábate con el celular o genéralos con **tu avatar (tu rostro y tu voz) en Omni Flash de Google Flow**. La Fábrica te arma el plan de tomas y los prompts para tu negocio, sea cual sea tu nicho.
2. **Edita como profesional**: une tus clips, quita silencios, pone subtítulos, gráficos, zooms, música y deja el audio listo para redes.

## 📖 Guía paso a paso (comandos, ejemplos, errores)
https://claude.ai/artifact/SkffRZWgqBdcLBUPUwjZdu

Esta guía y este paquete van juntos. Si algo no te queda claro aquí, está explicado allá.

## Dos formas de descargarla
- **ZIP**: el enlace está en la guía.
- **GitHub** (plantilla pública): https://github.com/pruebacursoads/fabrica-de-video → botón **Use this template** para tener tu propia copia, o **Code → Download ZIP**.

## Instalación (sin terminal)
No necesitas saber de PowerShell ni de comandos.
1. Descomprime este ZIP completo en el Escritorio.
2. Abre **Claude Code** (o Codex o Antigravity) **dentro de la carpeta `fabrica-de-video`**.
3. Abre el archivo **`PROMPT-DE-INSTALACION.md`**, copia el *Prompt 1* y pégalo. El asistente audita tu computadora, te muestra qué falta (ffmpeg, Node.js, Python, Whisper, Chrome), te pide permiso e instala solo eso, y deja las skills listas.
4. Si te pide cerrar y abrir el programa, hazlo y pega el *Prompt 2*.
5. Crea una carpeta `Reels con Claude` en Documentos, abre el asistente dentro y escribe: **Quiero empezar con la Fábrica de Video**

(Opcional, para quien sabe de terminal: `instalar.ps1` en Windows o `bash instalar.sh` en Mac copian las skills.)

## Qué incluye
| Skill | Para qué |
|---|---|
| `fabrica-de-video` | El director: orden, puertas de calidad, aprobación del plan |
| `omni-flash-prompts` | **Nuevo en 1.3.** Clips gratis con tu avatar en Google Flow: plan de 5-6 tomas, fotos reales, guion medido por segundos y prompts para 11 nichos |
| `fv-diagnostico` | Revisa el equipo e instala lo que falte |
| `fv-marca` | Entrevista de marca y archivo de estilo |
| `fv-medios` | Une clips con tu voz, quita silencios, transcribe |
| `fv-sonido` | Limpia tu voz, efectos y música simples, mezcla a −14 LUFS |
| `fv-editor` | Del plan aprobado al video (incluye el armado de videos de avatar con varias tomas) |
| `fv-calidad` | Revisión de choques, render y verificación |

`ejemplos/` trae un plan, un estilo, un montaje y planes de "pantalla + tú" de muestra.

## Omni Flash en 30 segundos
- Gratis en https://labs.google/flow con 50 créditos por día.
- **Omni Flash 1.1**: unos 4 videos al día (clips de 4 a 10 s). Se retira de Flow el 5 de diciembre de 2026.
- **Omni Flash 1.2**: casi 2 videos al día, más calidad (clips de 3 a 10 s gratis, hasta 15 s con plan de Google AI).
- Tu avatar se llama con `@me` y habla con tu propia voz. Olvídate de pagar ElevenLabs y HeyGen.

## Novedades
- **1.3**: skill de Omni Flash dentro del paquete, para cualquier nicho (comida, moda, autos, cursos y mentorías, inmobiliaria, salud y belleza, servicios, tiendas, eventos, creadores) y armado de videos de avatar con varias tomas en el editor.
- 1.2: capturas como insertos, pasos tachados o confirmados, cierre sin congelar y cortes de pausas.
- 1.1: layout "pantalla + tú" para grabaciones de pantalla y `LECCIONES.md` con las reglas aprendidas.

## Límites de esta versión
- Pensada para video vertical (1080×1920).
- Probada en Windows. Aún no en Mac ni en equipos de 8 GB.
- Los clips de Omni Flash se generan a mano en Google Flow (gratis); la Fábrica no los genera por ti.
- Música y efectos generados son sencillos; con música licenciada propia queda mejor.
- La voz es siempre la tuya: la de tu grabación o la de tu propio avatar. No clona voces de otras personas.

## Licencias
Ver `AVISOS-DE-LICENCIAS.md`. El paquete no incluye programas de terceros.
