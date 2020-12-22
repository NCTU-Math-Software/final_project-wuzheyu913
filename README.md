# final_project-wuzheyu913

找出n^n的加總後的小數點前十位數字, n=1,2,...,N

說明:
此function為找出 1^1 + 2^2+ 3^3 + ... + N^N 的小數點前十位數字

    INPUT: find_TopTenDigits(N)  % N為一個正數且使用者自己決定
    OUTPUT: 1^1 + 2^2+ 3^3 + ... + N^N 的小數點前十位數字
    
Example:

    INPUT: find_TopTenDigits(10)
    OUTPUT: 
    前十位數字 = 
     0     4     0     5     0     7     1     3     1     7
     
做法: 

使用兩層的迴圈
裡面那層為找出ii^ii的小數點前十位數字為多少，從nx1開始接著 nx2,nx3,...nxn，*
如果nxi (i = 1,...,n)超過10位數則只留下10位數繼續做計算(n = nxi的前十位數字)

外面那層是將裡面那層迴圈找到的ii^ii的小數點前十位數字全部加起來，並提出小數點前十位數字

最後再檢查是否超過10位數。
