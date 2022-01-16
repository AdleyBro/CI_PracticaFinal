
clear all;
close all;
rosshutdown
global vel_angular;
global vel_lineal;
global vel_angular_max;
global vel_lineal_max;
ROS_MASTER_IP = '192.168.1.137'
ROS_IP = '192.168.1.134'
ROS_MASTER_URI = ['http://', ROS_MASTER_IP, ':11311'];

rosinit(ROS_MASTER_IP,'NodeHost',ROS_IP)

%DECLARACION DE PUBLISHERS
%Velocidad
pub_vel=rospublisher('/robot0/cmd_vel','geometry_msgs/Twist');
%%DECLARACIÓN DE SUBSCRIBERS
odom = rossubscriber('/robot0/odom'); % Subscripcion a la odometria
% Subscripcion a los sensores
sonar_0 = rossubscriber('/robot0/sonar_0', rostype.sensor_msgs_Range);
sonar_1 = rossubscriber('/robot0/sonar_1', rostype.sensor_msgs_Range);
sonar_2 = rossubscriber('/robot0/sonar_2', rostype.sensor_msgs_Range);
sonar_3 = rossubscriber('/robot0/sonar_3', rostype.sensor_msgs_Range);
sonar_4 = rossubscriber('/robot0/sonar_4', rostype.sensor_msgs_Range);
sonar_5 = rossubscriber('/robot0/sonar_5', rostype.sensor_msgs_Range);
sonar_6 = rossubscriber('/robot0/sonar_6', rostype.sensor_msgs_Range);
sonar_7 = rossubscriber('/robot0/sonar_7', rostype.sensor_msgs_Range);
%GENERACION DE MENSAJES
msg_vel=rosmessage(pub_vel);

% Ejecutar Simulacion
sim('Controlador_Sugeno.slx')

distancias = distanciasSonares;
