%{
    此function為找出 1^1 + 2^2+ 3^3 + ... + N^N 的小數點前十位數字
    INPUT: N
    OUTPUT: 1^1 + 2^2+ 3^3 + ... + N^N 的小數點前十位數字
Example:
    INPUT: 10
    OUTPUT: 405071317
%}

function find_TopTenDigits(N)
    sum_all = 0;                % 先給定sum_all的初始值為0
    
    %使用2層的迴圈
    for ii = 1:N                                % 外面那層是將裡面那層迴圈找到的ii^ii的小數點前十位數字全部加起來，並提出小數點前十位數字
        if N>10000
            disp('輸入的數過大，需要花太久的時間')
            break;
        end
        
        sum_temp = 1;                           % 給定sum_temp的初始值為1
        
        for jj = 1:ii                           % 裡面那層為找出ii^ii的小數點前十位數字為多少
            sum_temp = sum_temp*ii;             
            if sum_temp>10^10                   % 如果sum_temp超過10位數
                sum_temp = rem(sum_temp,10^10); % 則將小數點前十位數留下來，並用這個數繼續去乘
            end            
        end
        
        sum_all = sum_all + sum_temp;           % 將得到的ii^ii相加
        
        if sum_all>10^10                        % 再檢查是否超過10位數
            sum_all = rem(sum_all,10^10);       
        end
    end

    for ii = 0:9
        sum_final(ii+1) = mod(fix((sum_all/10^ii)),10);
    end
    
    answer = fliplr(sum_final);

    disp('前十位數字 = ')                       
    disp(answer);                     % 輸出答案
end
