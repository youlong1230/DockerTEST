FROM daocloud.io/xin_cqu/matlab_config

MAINTAINER Li Dong <youlong1230@gmail.com>

RUN apt-get -y install git
RUN mkdir -p /script
RUN cd /script && git clone https://github.com/Xin-cqu/test_docker.git
ADD wb_pipeline_EEG_REST /root/matlab_script/wb_pipeline_EEG_REST
RUN chmod 777 -R /root/matlab_script/
RUN rm -rf /script
ENTRYPOINT ["/root/matlab_script/wb_pipeline_EEG_REST"]