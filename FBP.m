clear all;
close all;

%% ���ͶӰ����
p_N = 256;                  % ͼ��Ĭ�ϴ�С256
theta_N = 180;              % 180��ƽ��ͶӰ

P = phantom(p_N);           % 256*256��ͷ�ǻ�Ӱ����
theta = 0:(theta_N-1);      % 0~180��ƽ��ͶӰ
[R,xp] = radon(P,theta);    % radon�任��R����ͶӰ���ݣ�������ͼ

%% ��ȡֱ�ӷ�ͶӰ��Ķϲ�ͼ���Լ��˲���ͶӰ���ͼ��
[I H] = iradon(R,theta,'linear','none');         % iradon�任�����˲�����I����ֱ�ӷ�ͶӰ��Ķϲ�ͼ��
[I1 H1] = iradon(R,theta,'linear','Ram-Lak');    % iradon�任��б���˲�����I1�����˲���ͶӰ���ͼ��

figure, 
subplot(1,3,1), imshow(P,[]),  title('ԭʼͼ��');
subplot(1,3,2), imshow(I,[]),  title('���˲�ֱ�ӷ�ͶӰ���ͼ��');
subplot(1,3,3), imshow(I1,[]), title('��б���˲���ͶӰ�ؽ���ͼ��');
