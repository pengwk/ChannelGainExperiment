function [ numbers ] = RandNumbers(count, range_start, range_end)
% ��Ҫ�����������,1��n��
%
% ʵ��ϸ��
%  rand([m n])���� m�У�n�У�0��1����Χ�ھ��ȷֲ���α�����
%  ���Ҫ�������䣨a��b���ڲ������ȷֲ��������
%  r = a + (b-a).*rand([m n]));

numbers = range_start + (range_end - range_start).*rand([1, count]);

end

