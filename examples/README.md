# Ejemplos de Análisis

Esta carpeta contiene ejemplos de salidas generadas con el prompt.

> ⚠️ **IMPORTANTE**: Todos los ejemplos deben estar completamente anonimizados.
> No incluir IPs reales, nombres de organizaciones, ni datos de infraestructura real.

## Estructura esperada

```
examples/
├── ejemplo_modbus_scan.md          # Salida de análisis de escaneo Modbus
├── ejemplo_lateral_movement.md     # Detección de movimiento lateral IT→OT
├── ejemplo_firmware_upload.md      # Detección de modificación de firmware
└── README.md                       # Este archivo
```

## Cómo agregar ejemplos

1. Genera un análisis usando el prompt con datos de laboratorio
2. Anonimiza completamente la salida (reemplaza IPs, MACs, hostnames)
3. Guarda como `.md` con nombre descriptivo
4. Envía un PR

## Capturas PCAP de laboratorio

Si tienes capturas PCAP de laboratorio (no producción) que demuestren escenarios de ataque ICS, puedes incluirlas aquí. Fuentes recomendadas:

- [4SICS ICS PCAP samples](https://www.netresec.com/?page=PCAP4SICS)
- [Conpot honeypot captures](https://conpot.org/)
- [DEFCON ICS Village](https://www.icsvillage.com/)
- Laboratorios propios con PLCs de práctica
