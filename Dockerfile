FROM returntocorp/semgrep:0.86.5

USER root
WORKDIR /semgrep
RUN apk add --no-cache --virtual=.agent-run-deps bash git git-lfs less libffi openssl yaml
ENTRYPOINT []
CMD ["semgrep --json --config p/r2c-security-audit --config p/secrets --config p/owasp-top-ten -o reports/semgrep.json"]
ENV PYTHONPATH=/semgrep:$PYTHONPATH\
    SEMGREP_ACTION=true\
    SEMGREP_ACTION_VERSION=v1\
    R2C_USE_REMOTE_DOCKER=1

