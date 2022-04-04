#!/bin/bash
if [[ -z "${INPUT_OUTPUT}" ]]; then
  OUTPUT=""
else
  OUTPUT="-o reports/semgrep.json"
fi
semgrep --json --config p/r2c-security-audit --config p/secrets --config p/owasp-top-ten ${OUTPUT}

