# Prompt de instalación (sin terminal)

No necesitas saber de PowerShell ni de comandos. Descomprime el ZIP, abre **Claude Code** (o Codex o Antigravity) **dentro de la carpeta descomprimida** `fabrica-de-video`, pega este texto y deja que la herramienta haga todo.

## Prompt 1: auditar e instalar

```
Eres mi asistente de instalación para la Fábrica de Video. Yo no sé de programación ni de terminal: explícame todo en palabras simples y no me pidas escribir comandos, ejecútalos tú.

1. Esta carpeta es el paquete descomprimido de la Fábrica de Video (tiene LEEME.md y una carpeta skills). Léela.
2. Audita mi computadora: sistema operativo, memoria RAM, disco libre y conexión a internet. Revisa si tengo ffmpeg, Node.js 20 o superior, Python 3.10 o superior, Whisper (openai-whisper) y Google Chrome o Edge. Si existe skills/fv-diagnostico/scripts/diagnostico.py, úsalo.
3. Muéstrame una tabla: qué tengo, qué falta y para qué sirve cada cosa.
4. Pídeme permiso y luego instala SOLO lo que falte, con instaladores oficiales (winget en Windows, brew en Mac, pip para Whisper). Un comando a la vez y dime cuál ejecutas. No pidas ni uses contraseñas ni descargues de sitios desconocidos. Si necesito cerrar y abrir el programa después de instalar algo, dímelo claro.
5. Instala las skills de la Fábrica copiando la carpeta skills a la ubicación de skills de esta herramienta (en Claude Code: la carpeta .claude/skills de mi usuario). Si ya existe una versión, haz respaldo fuera de esa carpeta antes de reemplazar. Si tu herramienta no usa skills, déjalas donde están y léelas como instrucciones.
6. Verifica todo: versiones de ffmpeg, Node y Python, el comando "npx --yes hyperframes doctor" (ignora lo opcional: whisper-cpp, Kokoro, MusicGen y Docker) y que las 8 skills aparezcan.
7. Termina con un resumen: qué instalaste, qué falló y cuál es mi siguiente paso.
```

## Prompt 2: si te pidió cerrar y abrir el programa

```
Continúa la instalación de la Fábrica de Video. Vuelve a auditar mi computadora, instala lo que todavía falte, verifica las 8 skills y dime cuál es mi siguiente paso.
```

## Prompt 3: empezar a crear

Abre la herramienta dentro de una carpeta `Reels con Claude` (en Documentos) y escribe:

```
Quiero empezar con la Fábrica de Video
```

## Notas
- La Fábrica se probó en **Claude Code**. En Codex o Antigravity la ubicación de las skills puede ser distinta: la herramienta lo adapta o lee las instrucciones directamente.
- Si algo falla, copia el mensaje de error completo y pásaselo a tu profesor.
