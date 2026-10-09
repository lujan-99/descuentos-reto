#!/usr/bin/env bash
# Simula un despliegue SIN tocar ninguna plataforma: solo comprueba que el workflow recibe sus secretos.
# Uso: scripts/deploy-simulado.sh "descripcion"
echo "[simulado] $1"
echo "[simulado] commit ${GITHUB_SHA:-local}"
sleep 3
echo "[simulado] listo"
