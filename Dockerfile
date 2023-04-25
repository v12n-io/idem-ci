FROM photon:latest
ARG VERSION
LABEL maintainer="blog.v12n.io"
LABEL version="$VERSION"

RUN tdnf install -y python3 python3-pip git && tdnf clean all
RUN pip3 install idem idem-aws idem-azure
RUN git clone https://gitlab.com/vmware/idem/idem-vra.git
RUN cd idem-vra && pip3 install .

ADD VERSION .