# Guia de Contribucion

Gracias por tu interes en contribuir a este proyecto. Por favor, lee nuestro [Codigo de Conducta](CODE_OF_CONDUCT.md) antes de participar.

## Como puedo contribuir

### 1. Nuevos IOA (Indicadores de Ataque)

Si has identificado un patron de ataque en entornos OT/ICS que no esta cubierto por los 29 IOA actuales:

- Usa el formato de nomenclatura: `IOA-[CATEGORIA]-[NUMERO]`
- Categorias validas: `REC` (Reconocimiento), `ACC` (Acceso), `MAN` (Manipulacion), `C2` (Comando y Control), `EVA` (Evasion)
- Incluye una descripcion clara y los indicadores de red observables
- Si es posible, referencia la tecnica MITRE ATT&CK for ICS correspondiente

### 2. Protocolos Industriales

Para agregar soporte de analisis de nuevos protocolos:

- Documenta los function codes / service requests relevantes
- Clasifica operaciones como normales vs potencialmente maliciosas
- Incluye comandos tshark/Zeek para extraccion
- Agrega al catalogo de puertos industriales

### 3. Mejoras al Mapeo MITRE

- Nuevas tecnicas de ATT&CK for ICS
- Correcciones de IDs de tecnicas
- Nuevos procedimientos observados
- Correlacion con nuevos grupos APT

### 4. Traducciones

- El prompt principal esta en espanol
- Se aceptan traducciones a ingles, portugues y otros idiomas
- Mantener terminos tecnicos en ingles cuando son estandar

### 5. Ejemplos

- Salidas de analisis **anonimizadas** (sin IPs reales, sin datos de clientes)
- Capturas PCAP de laboratorio para testing
- Screenshots de informes generados

## Setup Local

```bash
git clone https://github.com/ttpsecspa/pcap-forensic-mitre-ics-ioa.git
cd pcap-forensic-mitre-ics-ioa
```

No se requiere instalacion de dependencias. El proyecto es documentacion y prompts.

## Proceso de Pull Request

1. Fork el repositorio
2. Crea una rama descriptiva (`feature/ioa-goose-protocol`, `fix/mitre-id-correction`)
3. Haz tus cambios
4. Asegurate de que el prompt sigue siendo funcional (pruebalo con un LLM)
5. Verifica que los archivos Markdown no tienen errores de formato
6. Actualiza el CHANGELOG.md con tus cambios
7. Envia el PR con una descripcion clara usando la plantilla provista

## Estilo de Commits

Usamos [Conventional Commits](https://www.conventionalcommits.org/):

```
feat: agrega IOA para protocolo GOOSE
fix: corrige ID de tecnica MITRE T0869
docs: mejora seccion de preparacion de datos
```

Tipos validos: `feat`, `fix`, `docs`, `chore`, `refactor`

## Que NO incluir

- Datos reales de clientes o infraestructura de produccion
- Exploits funcionales o herramientas ofensivas
- Capturas PCAP de redes de produccion sin anonimizar
- Contenido que viole la politica de divulgacion responsable

## Contacto

Para preguntas sobre contribuciones, abre un Issue en el repositorio.
