% �ŵ�������һ����Χ�ڷֲ�������ŵ�����ȡƽ��ֵ����ƽ��ֵ��������ŵ�����֮��Ĺ�ϵ��
% �ŵ����水�����ʽȡpathloss_dB=15.3+37.6*log10(mDistance)��
% distanceѡ10��50m��
% ע��pathloss��db�������ʵ����ֵ��Ȼ��ȡƽ����Ȼ������ֵ�������ֵ��ԭ�źŵı�����
% ��������������ŵ���Ŀ֮��Ĺ�ϵ

% dB2ratio
% dBת����ʽ��ratio=exp(-dB/10)

% ��ʽ����

max_channel_count = 500;
min_distance = 100;
max_distance = 500;

x = 0;
figure;
plot(x, 0, 'r-', 'MarkerSize', 6);
title_string = '�������������ŵ�������%d  ���뷶Χ:%d-%d';
parameters_info = sprintf(title_string, max_channel_count, min_distance, max_distance);
title(parameters_info);
% title(['�ŵ�����ϵ ', '����ŵ�����', max_channel_count, '���뷶Χ��', min_distance, '����', max_distance]);
xlabel('�ŵ�����');
ylabel('����');
hold on

last_value = 0;
for channel_count = 1:max_channel_count
    distances = RandNumbers(channel_count, min_distance, max_distance);
    dB_gains = ChannelGain(distances);
    normal_gains = dB2Ratio(dB_gains);
    differences = abs(normal_gains - mean(normal_gains));
    ratios = abs(differences ./ normal_gains);
    plot([channel_count-1, channel_count], [last_value, mean(ratios)], 'r-', 'MarkerSize', 6);
    last_value = mean(ratios);
    drawnow;
end



