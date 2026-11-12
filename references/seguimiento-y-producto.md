# Seguimiento diario y experiencia de producto

## Antes de configurar la experiencia

Pregunta qué quiere ver y registrar la persona, qué le resulta pesado y en qué dispositivo entrenará. Ofrece una configuración mínima y opciones para ampliar: vista por sesión o semana, unidades, ejercicios alternativos, temporizador de descanso, notas, tendencias y recordatorios. Conserva sus preferencias en una fuente accesible solo para ella y con su autorización. Si no hay persistencia disponible, explica el límite y entrega un formato portable.

Presenta la experiencia dentro de ChatGPT o Codex mediante conversación, tablas y formularios disponibles. Adapta su densidad y orden al usuario y al dispositivo; no conviertas la petición de una rutina en un proyecto de desarrollo de una aplicación externa. Si no hay herramientas de formularios, permite registrar los mismos datos por texto sin simular botones operativos.

## Vista de sesión

- Encabezado: mesociclo/semana, día, objetivo, duración estimada y estado de la sesión.
- Antes de empezar, lista ordenada y compacta de todos los ejercicios: series, rango de repeticiones y esfuerzo objetivo. Usa acordeones para carga, descanso, técnica, historial y sustituciones cuando existan controles nativos; en texto, usa una tabla breve.
- Tras la confirmación de inicio, muestra un ejercicio y una serie pendiente cada vez. Incluye ejercicio X/Y, serie N/M, última exposición comparable y objetivos provisionales de hoy por serie.
- Registro por serie con carga, repeticiones, RIR/RPE y detalles opcionales. Permite editar, omitir o sustituir sin perder el plan original.
- Al registrar o continuar, aplica [registro-entre-series.md](registro-entre-series.md): evita duplicados, verifica la escritura y muestra directamente el formulario de la siguiente serie o ejercicio con objetivos ajustados a lo realizado.
- Formulario final breve: hora o duración cuando no pueda derivarse, esfuerzo global, energía/sensación, molestias o síntomas, desviaciones relevantes y nota. Añade congestión o fatiga local solo si ayuda al seguimiento y permite omitir campos.
- Cierre: resumen ejecutivo y opcionalmente gamificado de lo completado, series planificadas/realizadas, carga externa compatible, progresos comparables, incidencias y una mejora práctica. Comprueba si corresponde revisar o cerrar el mesociclo según [mesociclos.md](mesociclos.md). Los objetivos de la siguiente sesión se calculan al iniciarla, según [progresion-al-iniciar.md](progresion-al-iniciar.md).

## Plantilla compacta de registro

Úsala por defecto cuando la persona no haya pedido otro formato, pero permite personalizar campos, orden, unidades, escalas y densidad.

1. **Anterior:** tabla de las series reales de la última exposición comparable con carga/unidad, repeticiones y RIR; etiqueta cualquier diferencia de variante o equipo.
2. **Hoy:** objetivo editable de la serie actual y, de forma compacta, previsión provisional del resto.
3. **Formulario principal:**
   - `Peso/carga`, numérico y con convención explícita.
   - `Repeticiones`, selector adaptado al rango; 1–20 es un inicio útil, no un límite universal.
   - `RIR real`, elección rápida 1–4. Muestra 0 o 5+ cuando el plan, el resultado o la persona lo necesiten; nunca redondees un valor comunicado para encajarlo en la interfaz.
   - Acción inequívoca `Registrar serie` o `Continuar`.
4. **Acordeón Otras opciones**, cerrado por defecto:
   - dolor 0–10 con estado inicial `Sin indicar`;
   - síntomas relevantes configurables, como adormecimiento, con `Sin indicar`;
   - comodidad/estabilidad o sensación del músculo objetivo;
   - nota libre.

Los objetivos precargados son sugerencias, no ejecuciones. Solo registra tras una acción o comunicación inequívoca. Un campo opcional omitido permanece desconocido; no equivale a dolor 0, ausencia de síntomas ni comodidad buena.

Si el cliente no soporta controles, pide una respuesta textual corta como `75 kg · 10 reps · RIR 2` y ofrece los detalles solo si hacen falta. No dibujes botones o acordeones inertes.

## Resumen final y gamificación

Usa gamificación informativa y no punitiva: logro del día, consistencia, récord comparable o progreso de técnica. Evita puntos arbitrarios que incentiven entrenar con dolor, añadir volumen o perseguir tonelaje.

- Calcula kilos/tonelaje solo cuando unidad y convención sean compatibles. Separa peso corporal, asistencia, carga por lado y máquinas no comparables.
- Un récord requiere condiciones suficientemente comparables; puede ser de carga, repeticiones, técnica o mismo rendimiento con menor esfuerzo.
- Señala dónde progresó más y menos con su grado de confianza. «Sin datos» no es «empeoró».
- Cierra con una sola acción útil para recuperación, técnica o continuidad. No prescribas todavía la próxima sesión.

## Modelo mínimo de datos

Usa el perfil, preferencias, plan, resultados y observaciones de Drive. Mantén la distinción entre prescripción y ejecución dentro de su formato existente; cada resultado debe poder asociarse con fecha, sesión, ejercicio y unidad de carga. No crees una base de historial adicional ni guardes datos personales dentro de la skill. Si no existe una fuente accesible, pide lo imprescindible y explica la limitación de continuidad.

## Revisión

Revisa tendencias de varias sesiones aplicando [motor-de-progresion.md](motor-de-progresion.md): adherencia, volumen realmente hecho, cargas/repeticiones con técnica comparable, esfuerzo, fatiga y molestias. Propón cambios concretos y pequeños. Si una sesión se pierde, decide si continuar, reordenar, reducir o realizar una reentrada; no la marques completada. Nunca prometas ganancias por una métrica aislada.

