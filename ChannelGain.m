function [ pathloss_dB ] = ChannelGain( mDistance )
% �����ŵ����棬���ؽ��pathloss_dB��λ��dB,���뵥λ��m���ף�

%pathloss_dB = 15.3 +37.6*log10(mDistance);

pathloss_dB = log10(mDistance);

end

