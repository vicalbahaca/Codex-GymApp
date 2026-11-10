# Codex Gym Tracker

Skill compartible para crear rutinas de fuerza orientadas a la salud y la ganancia de masa muscular, acompañar cada sesión y revisar el progreso con datos reales. Parte de una entrevista sobre objetivos, experiencia, disponibilidad, recuperación, alimentación y preferencias. Adapta el plan a la persona en lugar de aplicar una rutina fija.

## Qué incluye

- Planificación de fuerza e hipertrofia basada en evidencia, con progresión y ajustes según tolerancia y adherencia.
- Vista de sesión con ejercicios, series, repeticiones, esfuerzo, descansos y registro de lo realizado.
- Seguimiento de cargas, sensaciones y molestias para revisar el plan sin perder el historial.
- Personalización de la experiencia dentro de Codex y uso opcional de una hoja en Google Drive.
- Creación y modificación de mesociclos con duración, prioridades y estrategias de progresión adaptadas a cada persona.
- Cálculo de cargas y repeticiones al iniciar la sesión, consultando la ejecución anterior en Drive y el esfuerzo previsto para ese día.
- Detección del final del bloque durante las interacciones, balance de resultados y preguntas breves para preparar el siguiente mesociclo.

La skill no incorpora perfiles personales ni conecta por sí sola una cuenta de Drive. Cada usuario decide qué datos comparte y dónde guarda su registro.

Funciona de forma nativa en Codex. Cada proceso se activa por lo que pide la persona o por el estado del mesociclo, sin un asistente obligatorio. Al acabar un entrenamiento no genera de antemano la siguiente semana: concreta los objetivos cuando comienza la sesión correspondiente. Drive conserva el registro; la skill no crea una base de datos paralela ni vigila entrenamientos fuera de las interacciones.

## Instalación

Instala esta carpeta como una skill de Codex con el nombre `app-codex-gym-tracker`. Puedes usar el instalador de skills de Codex apuntando a este repositorio o copiar `SKILL.md`, `agents/` y `references/` a `~/.codex/skills/app-codex-gym-tracker/`. Reinicia Codex si la skill no aparece de inmediato.

## Uso

Invócala con `$app-codex-gym-tracker`, por ejemplo:

> Ayúdame a crear una rutina de fuerza de tres días. Pregúntame primero lo necesario para adaptarla a mi situación.

> Muéstrame la sesión de hoy y ayúdame a registrar cada serie.

> Hoy empiezo pierna. Revisa lo que hice la semana pasada y dame los objetivos de hoy.

> He terminado el mesociclo. Analiza dónde he progresado y pregúntame lo necesario para preparar el siguiente.

> Durante el resto del bloque solo tengo tres días. Adapta las sesiones a esa disponibilidad.

> Quiero llevar el seguimiento en una hoja de Drive. Revisa antes si ya tengo una plantilla.

La entrevista, la hoja y la interfaz se ajustan a cada persona. Las referencias científicas de partida y sus límites están en [`references/evidencia.md`](references/evidencia.md).

