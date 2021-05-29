FROM registry.fedoraproject.org/fedora-toolbox:34

ENV NAME=jhon-base-toolbox VERSION=34
LABEL com.github.containers.toolbox="true" \
      com.github.debarshiray.toolbox="true" \
      com.redhat.component="$NAME" \
      name="$NAME" \
      version="$VERSION" \
      usage="This image is meant to be used with the toolbox command" \
      summary="Jhon Wang's image for creating Fedora toolbox containers" \
      maintainer="Jhon Wang <changwuf31@yahoo.com>"

RUN \
  # RPM Fusion
  dnf install -y \
    https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    http://rpms.remirepo.net/fedora/remi-release-$(rpm -E %fedora).rpm

COPY extra-packages /
RUN dnf -y install $(<extra-packages)
RUN rm /extra-packages

RUN dnf clean all

