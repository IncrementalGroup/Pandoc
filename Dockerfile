FROM haskell:8.0

MAINTAINER James Gregory <james@jagregory.com>

# install latex packages
RUN apt-get update -y \
  && apt-get install -y -o Acquire::Retries=10 --no-install-recommends \
    texlive-latex-base \
    texlive-xetex latex-xcolor \
    texlive-math-extra \
    texlive-latex-extra \
    texlive-fonts-extra \
    texlive-bibtex-extra \
    fontconfig \
    lmodern

# will ease up the update process
# updating this env variable will trigger the automatic build of the Docker image
ENV PANDOC_VERSION "1.19.2.1"

# install pandoc
RUN cabal update && cabal install pandoc-${PANDOC_VERSION}

WORKDIR /source

ENTRYPOINT ["/root/.cabal/bin/pandoc"]

CMD ["--help"]

WORKDIR C:\Setup
ADD https://vstsagentpackage.azureedge.net/agent/2.144.0/vsts-agent-win-x64-2.144.0.zip .

COPY InstallAgent.ps1 .
COPY ConfigureAgent.ps1 .

SHELL ["cmd", "/S", "/C"]

RUN powershell -noexit "& "".\InstallAgent.ps1"""

CMD powershell -noexit .\ConfigureAgent.ps1
