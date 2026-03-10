#!/usr/bin/env bash
#
# Validate the integrity and structure of the forensic analysis prompt.
# Checks that all required sections, IOA indicators, and MITRE references are present.
#
# Usage: bash tests/validate_prompt.sh
# Exit code: 0 = all checks passed, 1 = failures found

set -euo pipefail

PROMPT="prompts/prompt_pcap_mitre_ics_ioa.md"
ERRORS=0
WARNINGS=0
CHECKS=0

red() { printf '\033[0;31mFAIL: %s\033[0m\n' "$1"; }
green() { printf '\033[0;32mOK:   %s\033[0m\n' "$1"; }
yellow() { printf '\033[0;33mWARN: %s\033[0m\n' "$1"; }

check() {
    CHECKS=$((CHECKS + 1))
    if grep -q "$1" "$PROMPT" 2>/dev/null; then
        green "$2"
    else
        red "$2"
        ERRORS=$((ERRORS + 1))
    fi
}

check_count() {
    CHECKS=$((CHECKS + 1))
    local count
    count=$(grep -c "$1" "$PROMPT" 2>/dev/null || echo "0")
    if [ "$count" -ge "$2" ]; then
        green "$3 (found: $count, expected: >= $2)"
    else
        red "$3 (found: $count, expected: >= $2)"
        ERRORS=$((ERRORS + 1))
    fi
}

echo "========================================"
echo "  PCAP Forensic Analyzer - Prompt Tests"
echo "========================================"
echo ""

# File existence
CHECKS=$((CHECKS + 1))
if [ -f "$PROMPT" ] && [ -s "$PROMPT" ]; then
    LINES=$(wc -l < "$PROMPT")
    green "Prompt file exists ($LINES lines)"
else
    red "Prompt file missing or empty: $PROMPT"
    ERRORS=$((ERRORS + 1))
    echo ""
    echo "RESULT: Cannot continue without prompt file."
    exit 1
fi

echo ""
echo "--- Core Sections ---"
check "ROL Y CONTEXTO" "Role and context definition"
check "MISI" "Mission statement"
check "ENTRADA ESPERADA" "Expected input definition"
check "METODOLOG" "Methodology section"
check "ESTRUCTURA DEL INFORME" "Report structure"
check "REGLAS DE FORMATO" "Formatting rules"

echo ""
echo "--- 6-Phase Methodology ---"
check "FASE 1" "Phase 1: Environment Reconnaissance"
check "FASE 2" "Phase 2: Protocol Analysis"
check "FASE 3" "Phase 3: IOA Detection"
check "FASE 4" "Phase 4: MITRE ATT&CK Mapping"
check "FASE 5" "Phase 5: Kill Chain"
check "FASE 6" "Phase 6: Impact Evaluation"

echo ""
echo "--- IOA Categories (29 indicators) ---"
check_count "IOA-REC-0" 6 "Reconnaissance IOAs (6 expected)"
check_count "IOA-ACC-0" 6 "Access IOAs (6 expected)"
check_count "IOA-MAN-0" 7 "Manipulation IOAs (7 expected)"
check_count "IOA-C2-0" 5 "C2 IOAs (5 expected)"
check_count "IOA-EVA-0" 5 "Evasion IOAs (5 expected)"

echo ""
echo "--- Industrial Protocols ---"
check "Modbus" "Modbus protocol"
check "DNP3" "DNP3 protocol"
check "OPC-UA" "OPC-UA protocol"
check "EtherNet/IP" "EtherNet/IP protocol"
check "IEC 61850" "IEC 61850 protocol"
check "IEC 60870-5-104" "IEC 60870-5-104 protocol"
check "S7comm" "S7comm protocol"
check "BACnet" "BACnet protocol"

echo ""
echo "--- Frameworks & Standards ---"
check "MITRE ATT&CK" "MITRE ATT&CK reference"
check "Kill Chain" "Kill Chain reference"
check "IEC 62443" "IEC 62443 standard"
check "NIST SP 800-82" "NIST SP 800-82 standard"
check "Purdue" "Purdue model reference"

echo ""
echo "--- Report Sections (10 expected) ---"
check "RESUMEN EJECUTIVO" "Section 1: Executive Summary"
check "ALCANCE Y METODOLOG" "Section 2: Scope and Methodology"
check "INVENTARIO DE ACTIVOS" "Section 3: Asset Inventory"
check "PROTOCOLOS INDUSTRIALES" "Section 4: Industrial Protocols"
check "INDICADORES DE ATAQUE" "Section 5: IOA Detected"
check "MAPEO MITRE" "Section 6: MITRE ATT&CK Mapping"
check "CADENA DE ATAQUE" "Section 7: Attack Chain"
check "IMPACTO" "Section 8: Impact Evaluation"
check "RECOMENDACIONES" "Section 9: Recommendations"
check "ANEXOS" "Section 10: Technical Appendices"

echo ""
echo "--- Documentation Files ---"
DOCS=("README.md" "LICENSE" "CHANGELOG.md" "CONTRIBUTING.md" "SECURITY.md" "CODE_OF_CONDUCT.md" "NOTICE")
for doc in "${DOCS[@]}"; do
    CHECKS=$((CHECKS + 1))
    if [ -f "$doc" ] && [ -s "$doc" ]; then
        green "$doc exists"
    else
        red "$doc missing or empty"
        ERRORS=$((ERRORS + 1))
    fi
done

echo ""
echo "--- Asset Files ---"
ASSETS=("assets/banner-dark.svg" "assets/logo.svg" "assets/architecture.svg")
for asset in "${ASSETS[@]}"; do
    CHECKS=$((CHECKS + 1))
    if [ -f "$asset" ] && [ -s "$asset" ]; then
        green "$asset exists"
    else
        red "$asset missing or empty"
        ERRORS=$((ERRORS + 1))
    fi
done

echo ""
echo "========================================"
if [ "$ERRORS" -eq 0 ]; then
    printf '\033[0;32mRESULT: All %d checks passed\033[0m\n' "$CHECKS"
    exit 0
else
    printf '\033[0;31mRESULT: %d/%d checks failed\033[0m\n' "$ERRORS" "$CHECKS"
    exit 1
fi
