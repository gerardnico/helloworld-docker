# Generated with JReleaser 1.17.0 at 2025-03-24T22:33:50.75388226+01:00
# Based on https://raw.githubusercontent.com/jreleaser/jreleaser/refs/tags/v1.17.0/core/jreleaser-templates/src/main/resources/META-INF/jreleaser/templates/binary/docker/Dockerfile.tpl
# to resolve https://github.com/jreleaser/jreleaser/discussions/1834
# dockerBaseImage is https://hub.docker.com/_/scratch
FROM scratch

LABEL "org.opencontainers.image.title"="helloworld"
LABEL "org.opencontainers.image.description"="HelloWorld in Go"
LABEL "org.opencontainers.image.url"="https://github.com/jreleaser/helloworld-go"
LABEL "org.opencontainers.image.licenses"="MIT"
LABEL "org.opencontainers.image.version"="0.1.1"
LABEL "org.opencontainers.image.revision"="366201c2b7819e7ccbf61c30ac6539ff8f5bb92c"


# / at then means, bin should be a directory
COPY --chmod=0777 assembly/bin/helloworld /bin/

# dockerBaseImage is scratch and has no sh shell
# RUN CHMOD will not work then
# RUN chmod +x helloworld-0.1.1-linux-arm64/bin/helloworld


ENV PATH="${PATH}:/bin"

ENTRYPOINT ["helloworld"]
