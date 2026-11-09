# Codex Gym Tracker

Skill compartible para crear rutinas de fuerza orientadas a la salud y la ganancia de masa muscular, acompañar cada sesión y revisar el progreso con datos reales. Parte de una entrevista sobre objetivos, experiencia, disponibilidad, recuperación, alimentación y preferencias. Adapta el plan a la persona en lugar de aplicar una rutina fija.

## Qué incluye

- Planificación de fuerza e hipertrofia basada en evidencia, con progresión y ajustes según tolerancia y adherencia.
- Vista de sesión con ejercicios, series, repeticiones, esfuerzo, descansos y registro de lo realizado.
- Seguimiento de cargas, sensaciones y molestias para revisar el plan sin perder el historial.
- Personalización de la experiencia dentro de Codex y uso opcional de una hoja en Google Drive.

La skill no incorpora perfiles personales ni conecta por sí sola una cuenta de Drive. Cada usuario decide qué datos comparte y dónde guarda su registro.

## Instalación

Instala esta carpeta como una skill de Codex con el nombre `app-codex-gym-tracker`. Puedes usar el instalador de skills de Codex apuntando a este repositorio o copiar `SKILL.md`, `agents/` y `references/` a `~/.codex/skills/app-codex-gym-tracker/`. Reinicia Codex si la skill no aparece de inmediato.

## Uso

Invócala con `$app-codex-gym-tracker`, por ejemplo:

> Ayúdame a crear una rutina de fuerza de tres días. Pregúntame primero lo necesario para adaptarla a mi situación.

> Muéstrame la sesión de hoy y ayúdame a registrar cada serie.

> Quiero llevar el seguimiento en una hoja de Drive. Revisa antes si ya tengo una plantilla.

La entrevista, la hoja y la interfaz se ajustan a cada persona. Las referencias científicas de partida y sus límites están en [`references/evidencia.md`](references/evidencia.md).

