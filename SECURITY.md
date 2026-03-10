# Security Policy

## Supported Versions

| Version | Supported          |
| ------- | ------------------ |
| 2.0.x   | Yes                |
| < 2.0   | No                 |

## Reporting a Vulnerability

If you discover a security issue in this project (e.g., the prompt could be manipulated to produce misleading forensic conclusions, or sensitive data handling guidance is inadequate), please report it responsibly.

### How to Report

1. **Do NOT open a public issue** for security vulnerabilities
2. Send an email to **security@ttpsec.cl** with:
   - Description of the vulnerability
   - Steps to reproduce
   - Potential impact assessment
   - Suggested fix (if available)

### What to Expect

- **Acknowledgment** within 48 hours
- **Assessment** within 7 business days
- **Resolution or mitigation** within 30 days for confirmed issues
- Credit in the CHANGELOG (unless you prefer anonymity)

### Scope

This project is a prompt engineering tool, not executable software. Security concerns include:

- **Prompt injection**: Techniques that could manipulate the analysis output
- **Misleading guidance**: Data preparation commands that could expose sensitive information
- **False confidence**: Scenarios where the prompt could generate authoritative-sounding but incorrect forensic conclusions
- **Data handling**: Inadequate warnings about handling real PCAP files containing sensitive network data

### Out of Scope

- Vulnerabilities in third-party tools (tshark, Zeek, Suricata) - report to their respective projects
- Vulnerabilities in LLM platforms (Claude, GPT-4, Gemini) - report to their providers
- General LLM limitations (hallucinations, knowledge cutoffs) - documented in the prompt itself

## Responsible Use

This tool is designed for authorized forensic analysis only. Users are responsible for:

- Obtaining proper authorization before analyzing network captures
- Handling PCAP files according to their organization's data classification policies
- Validating LLM-generated findings with manual analysis before acting on them
- Never uploading real production PCAP files to cloud-based LLM services without data handling approval
