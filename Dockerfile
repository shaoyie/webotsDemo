FROM cyberbotics/webots.cloud:R2023b-ubuntu22.04
ARG PROJECT_PATH
RUN mkdir -p $PROJECT_PATH
COPY . $PROJECT_PATH
RUN cd $PROJECT_PATH/plugins/robot_windows/simple_e-puck && make clean && make
