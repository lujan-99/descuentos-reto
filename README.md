# reto-cicd — Práctica 8, Parte B

Este repositorio es el de otro equipo y tiene **8 defectos sembrados** entre los workflows, la API, el front-end y
las pruebas E2E. El equipo anterior afirma que "el pipeline funciona". Tu trabajo: demostrar que no, y arreglarlo
**sin modificar ni borrar pruebas** y **con un commit por defecto**.

## Antes de empezar

1. Crea en GitHub un repositorio público `descuentos-reto` y sube el contenido de esta carpeta (rama `main`).
2. Crea cuatro secretos del repositorio con **cualquier valor** (por ejemplo `simulado`):
   `RENDER_DEPLOY_HOOK`, `VERCEL_TOKEN`, `VERCEL_ORG_ID`, `VERCEL_PROJECT_ID`.
   En este reto el despliegue es simulado (`scripts/deploy-simulado.sh`): no se toca ninguna plataforma.
3. Los commits siguen Conventional Commits (`fix(api): ...`). Los hooks de Husky se activan con `npm install` en la raíz.

## Qué entregas

La tabla de diagnóstico de la guía (síntoma, ¿se reproduce en local?, capa, regla violada, archivo, corrección,
commit y número de run) y el historial de commits con una corrección por defecto.

## Regla del pipeline sano (resumen)

SUCCESS · pruebas ejecutadas = las de local (> 0) · 0 fallos · cobertura ≥ 80 % · E2E ejecutado ·
el despliegue solo corre si el CI pasó · los secretos llegan a cada job.
