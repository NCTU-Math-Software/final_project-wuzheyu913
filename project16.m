%{
    ����{������X 1^1 + 2^2+ 3^3 + ... + N^N ���p���I�e�Q��Ʀr
    INPUT: N
    OUTPUT: 1^1 + 2^2+ 3^3 + ... + N^N ���p���I�e�Q��Ʀr
Example:
    INPUT: 10
    OUTPUT: 405071317
%}

function project16(N)
    sum_all = 0;                % �����wsum_all����l�Ȭ�0
    
    %�ϥ�2�h���j��
    for ii = 1:N                                % �~�����h�O�N�̭����h�j���쪺ii^ii���p���I�e�Q��Ʀr�����[�_�ӡA�ô��X�p���I�e�Q��Ʀr
        sum_temp = 1;                           % ���wsum_temp����l�Ȭ�1
        
        for jj = 1:ii                           % �̭����h����Xii^ii���p���I�e�Q��Ʀr���h��
            sum_temp = sum_temp*ii;             
            if sum_temp>10^10                   % �p�Gsum_temp�W�L10���
                sum_temp = rem(sum_temp,10^10); % �h�N�p���I�e�Q��Ưd�U�ӡA�åγo�Ӽ��~��h��
            end            
        end
        
        sum_all = sum_all + sum_temp;           % �N�o�쪺ii^ii�ۥ[
        
        if sum_all>10^10                        % �A�ˬd�O�_�W�L10���
            sum_all = rem(sum_all,10^10);       
        end
    end
    disp('answer = ')                       
    disp(num2str(sum_all));                     % ��X����
end