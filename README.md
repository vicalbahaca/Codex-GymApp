# Codex Gym Tracker

Skill compartible para crear rutinas de fuerza orientadas a la salud y la ganancia de masa muscular, acompañar cada sesión y revisar el progreso con datos reales. Parte de una entrevista sobre objetivos, experiencia, disponibilidad, recuperación, alimentación y preferencias. Adapta el plan a la persona en lugar de aplicar una rutina fija.

## Qué incluye

- Planificación basada en evidencia con un motor de progresión que analiza persona, patrón, ejercicio y sesión antes de ajustar carga, repeticiones, volumen, rango, frecuencia u orden.
- Vista de sesión con ejercicios, series, repeticiones, esfuerzo, descansos y registro de lo realizado.
- Seguimiento de cargas, sensaciones y molestias para revisar el plan sin perder el historial.
- Personalización de la experiencia dentro de ChatGPT o Codex y uso opcional de una hoja en Google Drive.
- Creación y modificación de mesociclos con duración, prioridades y estrategias de progresión adaptadas a cada persona.
- Cálculo de cargas y repeticiones al iniciar la sesión, consultando la ejecución anterior en Drive y el esfuerzo previsto para ese día.
- Detección del final del bloque durante las interacciones, balance de resultados y preguntas breves para preparar el siguiente mesociclo.
- Registro de series sin duplicados, verificación en Drive y paso directo al siguiente formulario con objetivos ajustados a lo que se acaba de realizar.
- Revisión de comodidad y técnica aunque el dolor no aumente, y nueva referencia de carga si cambia el funcionamiento del equipo.
- Selección de la sesión después de pausas o semanas incompletas, con reentrada progresiva cuando corresponda en lugar de juntar entrenamientos por defecto.
- Formulario serie a serie y cierre con feedback, métricas comparables y resumen ejecutivo opcionalmente gamificado.

La skill no incorpora perfiles personales ni conecta por sí sola una cuenta de Drive. Cada usuario decide qué datos comparte y dónde guarda su registro.

Funciona de forma nativa en ChatGPT móvil/web y Codex, con las herramientas disponibles en cada entorno. Cada proceso se activa por lo que pide la persona o por el estado del mesociclo, sin un asistente obligatorio. Al acabar un entrenamiento no genera de antemano la siguiente semana: concreta los objetivos cuando comienza la sesión correspondiente. Drive conserva el registro; la skill no crea una base de datos paralela ni vigila entrenamientos fuera de las interacciones.

## Instalación local en Codex

Instala esta carpeta como una skill de Codex con el nombre `app-codex-gym-tracker`. Puedes usar el instalador de skills de Codex apuntando a este repositorio o copiar `SKILL.md`, `agents/` y `references/` a `~/.codex/skills/app-codex-gym-tracker/`. Reinicia Codex si la skill no aparece de inmediato.

Esta instalación es local. Subir el código a GitHub tampoco instala la skill en la cuenta de ChatGPT.

## Paquete para ChatGPT y otros dispositivos

Versión actual: **1.2.0**. El repositorio conserva la skill en la raíz para la instalación local. El empaquetador genera un complemento portable con `plugin.json` en la raíz y la skill completa en `skills/app-codex-gym-tracker/`:

```powershell
./scripts/package-plugin.ps1 -OutputDirectory "$env:TEMP/gym-tracker-packages"
```

Guarda el ZIP generado en tu cuenta con Plugin Creator y verifica después que el complemento y su habilidad aparecen instalados en «Complementos y habilidades». Esto es distinto de adjuntar un Markdown a un chat. El guardado en la cuenta no publica el paquete en el directorio público. Para usar una nueva instalación o versión puede ser necesario iniciar un chat nuevo.

El paquete contiene instrucciones, sin servidor ni aplicación externa. Usa la conexión de Drive autorizada en el entorno actual; no concede permisos por sí mismo. Si no hay formularios disponibles, permite el mismo seguimiento por texto. Si no hay acceso a Drive, indica qué queda pendiente de guardar.

Las actualizaciones de GitHub, la copia local y la versión instalada en la cuenta no se sincronizan automáticamente. Al publicar cambios, incrementa la versión en `SKILL.md`, `plugin.json` y `references/continuidad-y-version.md`, reconstruye el paquete y actualiza el complemento existente sin crear duplicados. Las variantes personales pueden reutilizar los archivos comunes de `references/`, conservando su configuración privada fuera de este repositorio.

Documentación oficial: [crear complementos en ChatGPT](https://learn.chatgpt.com/docs/build-plugins) y [paquetes de complementos](https://developers.openai.com/plugins/build/plugins).

## Uso

Invócala con `$app-codex-gym-tracker`, por ejemplo:

> Ayúdame a crear una rutina de fuerza de tres días. Pregúntame primero lo necesario para adaptarla a mi situación.

> Muéstrame la sesión de hoy y ayúdame a registrar cada serie.

> Hoy empiezo pierna. Revisa lo que hice la semana pasada y dame los objetivos de hoy.

> He terminado el mesociclo. Analiza dónde he progresado y pregúntame lo necesario para preparar el siguiente.

> Durante el resto del bloque solo tengo tres días. Adapta las sesiones a esa disponibilidad.

> Quiero llevar el seguimiento en una hoja de Drive. Revisa antes si ya tengo una plantilla.

La entrevista, la hoja y la interfaz se ajustan a cada persona. Las referencias científicas de partida y sus límites están en [`references/evidencia.md`](references/evidencia.md).

