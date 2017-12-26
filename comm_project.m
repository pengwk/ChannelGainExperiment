% 信道增益在一定范围内分布，多个信道增益取平均值，看平均值的误差与信道个数之间的关系；
% 信道增益按这个公式取pathloss_dB=15.3+37.6*log10(mDistance)；
% distance选10到50m；
% 注意pathloss是db数，变回实际数值，然后取平均，然后计算差值，计算差值与原信号的比例，
% 画出这个比例与信道数目之间的关系

% dB2ratio
% dB转换公式：ratio=exp(-dB/10)

% 正式程序

max_channel_count = 500;
min_distance = 100;
max_distance = 500;

x = 0;
figure;
plot(x, 0, 'r-', 'MarkerSize', 6);
title_string = '参数情况：最大信道个数：%d  距离范围:%d-%d';
parameters_info = sprintf(title_string, max_channel_count, min_distance, max_distance);
title(parameters_info);
% title(['信道数关系 ', '最大信道数：', max_channel_count, '距离范围：', min_distance, '——', max_distance]);
xlabel('信道个数');
ylabel('比例');
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



