function [ pathloss_dB ] = ChannelGain( mDistance )
% 计算信道增益，返回结果pathloss_dB单位是dB,输入单位是m（米）

%pathloss_dB = 15.3 +37.6*log10(mDistance);

pathloss_dB = log10(mDistance);

end

