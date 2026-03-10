# Guía de Contribución

¡Gracias por tu interés en contribuir a este proyecto!

## ¿Cómo puedo contribuir?

### 1. Nuevos IOA (Indicadores de Ataque)

Si has identificado un patrón de ataque en entornos OT/ICS que no está cubierto por los 29 IOA actuales:

- Usa el formato de nomenclatura: `IOA-[CATEGORÍA]-[NÚMERO]`
- Categorías válidas: `REC` (Reconocimiento), `ACC` (Acceso), `MAN` (Manipulación), `C2` (Comando y Control), `EVA` (Evasión)
- Incluye una descripción clara y los indicadores de red observables
- Si es posible, referencia la técnica MITRE ATT&CK for ICS correspondiente

### 2. Protocolos Industriales

Para agregar soporte de análisis de nuevos protocolos:

- Documenta los function codes / service requests relevantes
- Clasifica operaciones como normales vs potencialmente maliciosas
- Incluye comandos tshark/Zeek para extracción
- Agrega al catálogo de puertos industriales

### 3. Mejoras al Mapeo MITRE

- Nuevas técnicas de ATT&CK for ICS
- Correcciones de IDs de técnicas
- Nuevos procedimientos observados
- Correlación con nuevos grupos APT

### 4. Traducciones

- El prompt principal está en español
- Se aceptan traducciones a inglés, portugués y otros idiomas
- Mantener términos técnicos en inglés cuando son estándar

### 5. Ejemplos

- Salidas de análisis **anonimizadas** (sin IPs reales, sin datos de clientes)
- Capturas PCAP de laboratorio para testing
- Screenshots de informes generados

## Proceso de Pull Request

1. Fork el repositorio
2. Crea una rama descriptiva (`feature/ioa-goose-protocol`, `fix/mitre-id-correction`)
3. Haz tus cambios
4. Asegúrate de que el prompt sigue siendo funcional (pruébalo con un LLM)
5. Envía el PR con una descripción clara de los cambios

## Código de Conducta

- Respeta a todos los contribuidores
- Mantén el foco en ciberseguridad OT/ICS
- No incluyas datos reales de clientes o infraestructura
- No incluyas exploits funcionales o herramientas ofensivas

## Contacto

Para preguntas sobre contribuciones, abre un Issue en el repositorio.
