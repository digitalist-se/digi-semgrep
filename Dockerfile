FROM returntocorp/semgrep:0.86.5
USER root
WORKDIR /semgrep
RUN apk add --no-cache --virtual=.agent-run-deps bash git git-lfs less libffi openssl yaml
COPY entrypoint.sh /entrypoint.sh
ENV PYTHONPATH=/semgrep:$PYTHONPATH\
    SEMGREP_ACTION=true\
    SEMGREP_ACTION_VERSION=v1\
    R2C_USE_REMOTE_DOCKER=1
ENTRYPOINT ["/entrypoint.sh"]
