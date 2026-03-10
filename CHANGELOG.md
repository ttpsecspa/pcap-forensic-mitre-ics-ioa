# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [2.0.0] - 2026-03-09

### Agregado
- Prompt completo para análisis forense de PCAP en entornos OT/ICS
- Catálogo de 29 Indicadores de Ataque (IOA) en 5 categorías
- Metodología de análisis en 6 fases
- Mapeo a MITRE ATT&CK for ICS v14 (11 tácticas)
- Correlación con ICS Cyber Kill Chain de SANS (dual-stage)
- Soporte para 12+ protocolos industriales
- Evaluación de impacto multidimensional (Safety, Proceso, Equipamiento, Ambiente, Financiero)
- Integración de Ley 21.663 (Chile) para clasificación de incidentes
- Comandos de preparación de datos (tshark, Zeek, NetworkMiner)
- Estructura de informe de 10 secciones con audiencia dual
- Versión DOCX profesional del prompt
- Documentación completa en README
- Guía de contribución
- Licencia CC BY-SA 4.0

### Protocolos soportados
- Modbus TCP/RTU
- DNP3
- OPC-UA / OPC-DA
- EtherNet/IP (CIP)
- IEC 61850 (MMS/GOOSE/SV)
- IEC 60870-5-104
- PROFINET
- BACnet
- S7comm (Siemens)
- HART-IP
- FINS (Omron)
- MELSOFT (Mitsubishi)

### Grupos APT referenciados
- ELECTRUM
- XENOTIME
- CHERNOVITE
- SANDWORM
- KAMACITE
