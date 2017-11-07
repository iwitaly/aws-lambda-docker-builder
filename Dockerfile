FROM amazonlinux

WORKDIR /workdir_container

# Installing PIP3
RUN yum -y update
RUN yum -y install yum-utils
RUN yum -y install python36-setuptools
RUN easy_install-3.6 pip
RUN ls -a

CMD pip3 install --no-cache-dir --use-wheel -U -r requirements.txt -t vendored/
