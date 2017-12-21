FROM amazonlinux:latest

RUN echo 'alias ll="ls -ltha"' >> ~/.bashrc
RUN yum -y install python36 python36-pip gcc python36-devel
RUN yum -y update && \
    yum -y install \
      vim \
      zip

# Create app directory and add app
ENV APP_HOME /app
ENV APP_SRC $APP_HOME/src
RUN mkdir $APP_HOME
ADD . $APP_HOME

RUN pip-3.6 install -t $APP_SRC/site-package -r $APP_SRC/requirements.txt

