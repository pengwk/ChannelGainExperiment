function [ ratio ] = dB2Ratio( dB )
% 将dB转换成实际的增益
%

ratio = power(10, dB/10);

end

