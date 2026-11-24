# Varias tomas, continuidad por escena y realismo

Aprendido en producciones reales para negocios de comida, moda, mentorías, autos y creadores de contenido. Lo que falló siempre fue lo mismo: **un solo plano fijo de 10 s**, un local inventado «de película» y usar el último fotograma del clip anterior. El resultado se nota falso y pierde retención. Esta guía manda sobre cualquier otra regla de video.

## 1. Un video = una secuencia de tomas distintas
El ojo detecta cuando mira el mismo encuadre mucho rato; con avatar se nota más. La retención se gana cambiando de toma.

- **Video de 20 a 30 s = 5 o 6 tomas** de 3 a 5 s cada una (máximo 8 s). Clips de Flow de 4, 6 u 8 s.
- **Un clip de 10 s solo si trae al menos 3 cambios de cámara dentro** (`[0-3 s] … [3-6 s] … [6-10 s] …`). Nunca «cámara fija» ni «una sola toma continua» con el avatar hablando.
- **Cada toma cambia el encuadre** respecto a la anterior. Banco de tomas: plano general del lugar · plano medio · primer plano del avatar · **plano detalle del producto** (manos, textura, envase, tela, acabado) · contrapicado · picado · lateral o 3/4 · por encima del hombro · seguimiento (camina con la cámara) · POV (la mano muestra el producto a cámara) · **inserto sin avatar** (solo producto o ambiente).
- **Al menos 2 tomas sin avatar**: son más baratas, casi nunca fallan y rompen el ritmo.
- **El avatar no repite encuadre dos veces seguidas** y no pasa de 5 s en pantalla sin un corte o cambio de ángulo.
- **El habla se reparte entre tomas** con frases cortas. En las tomas sin avatar hay solo sonido ambiente y la voz sigue desde la edición (corte tipo J/L).

Ficha por toma (así se entrega al alumno): n.º · duración · plano y movimiento · acción · ¿avatar? · frase que dice · referencias **en orden**.

## 2. Continuidad por ESCENA, no por último fotograma
Cada toma se genera **con las mismas referencias de escena**; la continuidad se arma en la edición con cortes, mismo fondo, mismo color y sonido ambiente continuo. **No cargues el último fotograma del clip anterior.**

Referencias, siempre en este orden y nombradas por su contenido:
1. `@me` (el avatar; no se sube foto).
2. **La escena**: imagen del lugar hecha desde una foto real (ver §3). La misma en todas las tomas de ese lugar.
3. **Los elementos**: imagen del producto, el mostrador, el vehículo o lo que se muestra (si la toma lo muestra).
4. **La ropa del avatar**: imagen de la ropa sola sobre fondo blanco, sin persona. Prompt para crearla: *«Copia exactamente la ropa que lleva la persona de la imagen de referencia. Foto de producto 9:16, vista frontal, fondo blanco puro, luz suave de estudio. Solo la ropa, sin persona, centrada. Sin logos ni letras.»*

Lo que cambia entre tomas es **el encuadre y la acción** (en el prompt), no las referencias. Si el alumno quiere una acción continua real (abrir una puerta y entrar), usa un clip largo o Omni Extend (plan de pago) y avisa del riesgo.

## 3. Realismo: que el cliente reconozca el lugar
Un local inventado «de revista» rompe la confianza del cliente que conoce el negocio.

1. **Pide fotos reales**: 3 a 6 fotos con el celular, **en vertical**, luz normal, sin filtros: fachada o entrada, interior general, zona de venta o atención, producto en su exhibidor, detalle del producto.
   Mensaje listo: *«Para que el video se vea real, pásame 3 a 6 fotos de tu local y tu producto, tomadas con el celular, en vertical y con la luz normal. No las arregles ni les pongas filtros: yo las uso de referencia y las mejoro.»*
   Si vende por delivery o a domicilio y no tiene local: cocina o taller real, el empaque, la moto o el punto de entrega.
2. **La IA mejora y reencuadra la foto, no la reinventa.** Imagen de escena con **Nano Banana 2.1 en Google Flow** (ilimitado). Prompt base:
   *«Usa la imagen adjunta como escena exacta: el mismo lugar, los mismos muros, mostrador, estantes y productos. Mejora la nitidez y la luz natural y reencuádrala en vertical 9:16, sin personas. No embellezcas ni agregues muebles, cuadros, plantas ni luces que no estén en la foto. Sin texto legible, sin logos, sin objetos filosos.»*
3. **Si todavía no hay foto real**, marca la escena como `PROPUESTA` y descríbela **como es un negocio común de ese tipo y lugar**, no como un set: *«foto tomada con celular, luz de tubos LED, piso de cerámica, mostrador con vitrina, cajas visibles, paredes lisas, nada decorativo ni cinematográfico»*. Evita palabras como boutique de lujo, cinematográfico, atelier o lujoso. Nunca nombres marcas, centros comerciales ni calles reales sin que el alumno lo confirme.
4. **Prueba del realismo antes de generar clips**: «¿un cliente que conoce el lugar diría "sí, es ahí"?». Si no, pide otra foto o corrige el prompt.
5. En los prompts de clip, la escena se nombra por su imagen («el lugar de la imagen del local»), sin volver a describirla.

## 4. Prompt de toma con avatar (ligero, con la cámara dirigida)
Ejemplo de 8 s:
*«@me en el lugar de la imagen del local, viste exactamente la ropa de la imagen de la ropa. [0-3 s] cámara en mano, plano medio, @me camina hacia la cámara y dice el gancho. [3-6 s] corte a primer plano en contrapicado, señala hacia el mostrador. [6-8 s] la cámara gira a un plano lateral y @me toma el producto. El avatar dice: "…". Con su propia voz, español latino. Sin texto ni música; solo sonido ambiente del local.»*

No pidas «selfie» si el avatar necesita las dos manos: usa «cámara en movimiento, como grabada por otra persona».

## 5. Edición para retención (lo hace `fv-editor`)
Corte cada 1,5 a 3 s, punch-in de 105 a 115 % al cortar, tomas sin avatar intercaladas, texto animado para datos (precio, tallas, horario), sonido ambiente continuo, música baja que une los cortes y cierre con ubicación y llamada a la acción. Recorta 0,3 a 0,5 s al inicio de cada clip y tapa cualquier letra que la IA invente.

## 6. Checklist antes de entregar
- [ ] ¿5 o 6 tomas (o clips de 10 s con al menos 3 cambios de cámara)? ¿Ninguna repite el encuadre anterior?
- [ ] ¿Al menos 2 tomas sin avatar y un plano detalle del producto?
- [ ] ¿Ninguna toma carga el último fotograma del clip anterior?
- [ ] ¿La escena sale de una foto real, o está marcada `PROPUESTA` con estilo cotidiano?
- [ ] ¿Las referencias van por contenido y en orden, y cada toma dice cuáles cargar?
- [ ] ¿El guion cabe en los segundos (conteo de palabras)?
- [ ] ¿Sin texto, música ni objetos filosos generados? ¿Ubicación y llamada a la acción previstas?
