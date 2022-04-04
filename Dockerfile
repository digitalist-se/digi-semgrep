FROM returntocorp/semgrep:0.86.5

USER root
WORKDIR /semgrep
COPY src/* .
RUN ln -s /semgrep/semgrep /usr/local/bin/semgrep &&\
    apk add --no-cache --virtual=.agent-run-deps bash git git-lfs less libffi openssl yaml
ENTRYPOINT []
CMD ["semgrep"]
ENV PYTHONPATH=/semgrep:$PYTHONPATH\
    SEMGREP_ACTION=true\
    SEMGREP_ACTION_VERSION=v1\
    R2C_USE_REMOTE_DOCKER=1

