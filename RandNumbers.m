function [ numbers ] = RandNumbers(count, range_start, range_end)
% 按要求生成随机数,1行n列
%
% 实现细节
%  rand([m n])产生 m行，n列（0，1）范围内均匀分布的伪随机数
%  如果要求在区间（a，b）内产生均匀分布的随机数
%  r = a + (b-a).*rand([m n]));

numbers = range_start + (range_end - range_start).*rand([1, count]);

end

