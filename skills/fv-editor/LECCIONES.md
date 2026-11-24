# Lecciones aprendidas (léelas antes de planear un video)

Salen de videos reales editados con la Fábrica. Agrega las nuevas al final, con fecha.

## Contenido y gancho
- **El dolor va en los primeros 3–6 s**, a pantalla completa: la pregunta o el problema con sus propias palabras ("¿Tu contenido solo llega a seguidores?") más un sello de alerta. Después se explica.
- La **etiqueta amarilla del gancho** debe ser una frase-promesa que genere curiosidad y salga del tema ("ASÍ SABES SI TIKTOK TE RECOMIENDA"), no el nombre de la serie ni una categoría genérica: no retiene.
- Si el gancho promete algo ("al final te digo cómo descargarlas"), el cierre **debe cumplirlo**, y el gancho debe nombrar la acción ("descárgalas gratis"), no solo el beneficio.
- **El cierre usa el texto del alumno** (su llamado a la acción, su usuario). No se inventa uno. Si no hay llamado a la acción hablado, el cierre se agrega tras la última frase (≈ 3,5 s) y se avisa.
- "Gratis" solo si es cierto de punta a punta. Si una herramienta tiene costo o límites (planes de pago, cuotas gratuitas), decirlo en la guía y no prometer "100 % gratis" en el video.

## Pausas y final
- **Quitar pausas** (`quitar_silencios.py --min 0.3 --margen 0.08`) ahorra ≈ 10 % y da ritmo. Hay que **transcribir el video ya cortado** (los tiempos cambian) y poner `"cola": 0` en `montaje.json`: `montar.py` agrega 1,3 s congelados por defecto.
- **El video termina cuando termina la voz.** Nada de segundos congelados al final: el llamado a la acción entra sobre la franja inferior en las últimas palabras, aunque sean ~2 s.
- Cada corte se disimula alternando el acercamiento de la cámara (1.0 / 1.1).
- `montar.py` guarda la salida relativa a la carpeta del `montaje.json` (queda en `trabajo/assets/`): moverla a `assets/`.

## Datos y noticias
- Si el audio no dice un dato clave que el alumno quiere mostrar (precios, rankings, créditos), usar **sus capturas** como inserto de pantalla con anillos y cifras en la franja, en el tramo donde habla del tema, y volver a la pantalla en vivo. Es su evidencia: más fuerte y verificable que texto suelto.
- Recortar las capturas para no mostrar datos personales (nombre, correo) y ajustarlas al tamaño exacto de la ventana (1000×544).
- Cifras derivadas (p. ej. "50 créditos = 3 videos antes, 1 ahora") se calculan solo con los datos de sus capturas y se declaran en la entrega.
- Antes de afirmar un precio o una fecha, verificarlos en fuentes o en la propia pantalla del alumno; las fuentes web a veces se contradicen.

## Transcripción
- Whisper `small` se equivoca con: *oye/hoy*, *logo/luego*, *con/como*, *Studio/de estudio*, *replantear/rebrantiar*, *evalúes/evalues*, y suprime negaciones dichas rápido ("**no** está generando").
- Siempre listar al alumno cada duda con el **segundo exacto** y esperar su confirmación. Nunca "corregir" un número o una negación por suposición.
- Género y concordancia (*la skill*): corregir en subtítulos aunque Whisper entregue otra cosa, si el alumno lo confirma.

## Diseño
- **Tapar banners fijos = recortar**, no poner texto encima: se separa pantalla y cámara y se rearma el layout.
- Recortar de la pantalla grabada todo lo personal (pestañas, menús, barra de tareas, marcas de agua del sistema).
- En una pantalla real, **anillos + zoom en el segundo en que se dice la palabra** valen más que gráficos nuevos. Las cifras que el alumno dice van además en tarjetas grandes en la franja inferior.
- Zoom sobre filas anchas: escala ≤ 1.35, o se cortan las etiquetas. Un dato único admite hasta 1.8.
- Subtítulos a la altura del pecho, nunca bajo y = 1540, nunca sobre la cara.

## Técnica (HyperFrames)
- Overlays grandes con `inset:0` se marcan como "full-frame" y exigen opacidad inicial: usar ancho y alto explícitos y `opacity:0` con `fromTo`.
- No combinar `transform` en CSS con un tween de `scaleX`/`scale` sobre el mismo elemento (poner el CSS en un contenedor y animar el interno).
- Zooms repetidos de cámara: `tl.set(...)` una vez y luego `tl.to(...)`, no varios `fromTo` sobre el mismo objetivo.
- Cada grupo de subtítulos debe terminar **antes** del inicio del siguiente; si no, se ven dos a la vez.
- Al detener un render, quedan procesos de `node` y `chrome-headless-shell`: cerrarlos antes de relanzar o se agota la memoria.
- Con ≈ 3 GB libres el render va a 1 proceso: 56 s de video ≈ 4–8 min.

## Entrega
- Mirar fotogramas del **video ya renderizado** (no solo de la vista previa) para confirmar sincronía de las palabras corregidas.
- Entregar: MP4 final, versión ligera 720p, carpeta abierta, y la lista de lo que no se pudo verificar (el audio a oído).

## Cortes precisos (tutorial API de WhatsApp, 12-nov-2026)
- **Los tiempos por palabra de Whisper pueden desfasarse ≥ 0,5 s** en videos largos con pausas (se comió "cómo conectar" al inicio). Para recortar un video largo: segmentar la voz por **energía** (ventanas de 20 ms, umbral ≈ 250, huecos < 0,25 s se unen) y transcribir **cada frase por separado** (`trabajo/chunks_txt.json`); cortar en los silencios con margen −0,06 s al inicio y +0,14 s al final (+0,2 si termina en "s" suave). Los cortes dentro de una frase se ajustan al mínimo de energía cerca de la palabra.
- Verificar el montaje final transcribiendo `voz_limpia.wav` con `small`: si empieza con una palabra rara, hay un recorte tarde.
- `construir_pantalla_cara.py` **sobrescribe `words.json`**: guarda la transcripción fuente en otro archivo (`words_fuente.json`).
- Si la pantalla cambia justo en la última palabra, congela el último cuadro bueno de la pantalla (`tpad clone`) y corta la voz donde él termina; no alargar el final.
- Difuminar datos (número, nombres de cuentas) con `boxblur` + `overlay enable=between(t,…)` **antes** de la ventana; revisar fotogramas porque la página se desplaza.
- Cada frase que repite palabras ("tu número, tu número telefónico") se resuelve con cortes duros entre frases, no editando el texto.

## Guion con sentido (clip Search Console, 14-nov-2026)
- **Empieza siempre por la frase de apertura completa** y conserva sus conectores ("Porque ahora…", "Ahora tú…", "¿Por qué?"). Un recorte hecho de frases sueltas "no se entiende nada".
- Presenta la propuesta como **guion corrido legible** (lo que se oirá) más la tabla; el guion debe tener gancho, desarrollo y cierre propio.
- Quita repeticiones y relleno, pero prioriza la hilación sobre llegar justo a 60 s (se acelera 1.12x como mucho y se avisa la duración).
- Recorte dentro de una frase: se vale dejar "Esto es" + "carnecita pura" saltando "carne,"; "no vas a inventar contenido" sin el "que tú" previo, cuando Hugo lo pide (contundente).
- Lo que Hugo dice como pregunta pero es afirmación ("cómo me están encontrando…") se subtitula **sin ¿ ?**.
- Cada ejemplo de la pantalla necesita **animación propia**, no solo verse: tarjeta "busquedas" (consultas que aparecen como barra de Google tecleada) + anillos sobre las filas reales.
- Tipos nuevos de tarjeta en el motor: `contraste` (ANTES tachado → AHORA ✓), `conceptos` (icono + término + qué significa, con tiempos `at`), `busquedas`; `pasos` acepta tiempos absolutos `at`. Iconos nuevos: search, eye, click.
- Datos de terceros en pantalla (dominios de otros clientes en la lista de propiedades): difuminar con `blur.json` por ventanas de tiempo; la pantalla de Hugo cambia de zoom sola, mirar fotogramas antes de poner anillos.

## Título fijo arriba (clip Search Console, 14-nov-2026)
- Va fijo todo el video en y 158–280 (encima de la pantalla, sin tocarla): **máx. 2 líneas, con 12 px entre ellas y ≥ 20 px hasta la ventana**. Tres líneas o pastilla + dos líneas se ve "muy junto".
- Es la **idea central en afirmación con signos de exclamación**, con las palabras de Hugo: "¡GOOGLE SEARCH CONSOLE / AHORA ES PARA REDES SOCIALES!". Línea 1 blanca grande, línea 2 amarilla. Plan: `"titulo": {"l1","l2","y","alto","t"}`.
