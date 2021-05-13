FROM registry.fedoraproject.org/f33/fedora-toolbox:33

ENV NAME=jhon-base-toolbox VERSION=33
LABEL com.github.containers.toolbox="true" \
      com.github.debarshiray.toolbox="true" \
      com.redhat.component="$NAME" \
      name="$FGC/$NAME" \
      version="$VERSION" \
      usage="This image is meant to be used with the toolbox command" \
      summary="Jhon Wang's image for creating Fedora toolbox containers" \
      maintainer="Jhon Wang <changwuf31@yahoo.com>"

RUN \
  # RPM Fusion
  dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm 

COPY extra-packages /
RUN dnf -y install $(<extra-packages)
RUN rm /extra-packages

RUN dnf clean all

