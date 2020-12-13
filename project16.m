%{
    よ祘Αт 1^1 + 2^2+ 3^3 + ... + N^N 计翴玡计
    INPUT: N
    OUTPUT: 1^1 + 2^2+ 3^3 + ... + N^N 计翴玡计
Example:
    INPUT: 10
    OUTPUT: 405071317
%}

function project16(N)
    sum_all = 0;                % 倒﹚sum_all﹍0
    
    %ㄏノ2糷癹伴
    for ii = 1:N                                % ê糷琌盢柑ê糷癹伴тii^ii计翴玡计场癬ㄓ矗计翴玡计
        sum_temp = 1;                           % 倒﹚sum_temp﹍1
        
        for jj = 1:ii                           % 柑ê糷тii^ii计翴玡计ぶ
            sum_temp = sum_temp*ii;             
            if sum_temp>10^10                   % 狦sum_temp禬筁10计
                sum_temp = rem(sum_temp,10^10); % 玥盢计翴玡计痙ㄓノ硂计膥尿
            end            
        end
        
        sum_all = sum_all + sum_temp;           % 盢眔ii^ii
        
        if sum_all>10^10                        % 浪琩琌禬筁10计
            sum_all = rem(sum_all,10^10);       
        end
    end
    disp('answer = ')                       
    disp(num2str(sum_all));                     % 块氮
end