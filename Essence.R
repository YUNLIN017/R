
                                   #1 平均數mean

setwd("c:/cert/")                         #第一步 改變路徑
x <- read.csv("A-1.csv",header =FALSE)    #第二步 載入檔案 #先檢查型態 無header
x                                         #確認內容
str(x)                                    #列出資料 #文字型態 轉數字
x <- as.matrix(x)                         #文字轉換數值
mean(x)                                   #求平均值
summary(x)                                #詳細摘要 有三分位數 #ANS:171.2

#------------------------------------------------------------------------------#

                                   #2 最大數max

setwd("c:/cert/")                         #第一步 改變路徑
x <- read.csv("A-3.csv",header =FALSE)    #第二步 載入檔案 #先檢查型態 無header
x                                         #確認內容
str(x)                                    #列出資料 #文字型態 轉數字
x <- as.matrix(x)                         #文字轉換數值
max(x)                                    #求最大值 #ANS:126.9

#------------------------------------------------------------------------------#

                                #3 第一分位quantile

setwd("c:/cert/")                         #第一步 改變路徑
x <- read.csv("A-4.csv",header =FALSE)    #第二步 載入檔案 #先檢查型態 無header
x                                         #確認內容
str(x)                                    #列出資料 #文字型態 轉數字
x <- as.matrix(x)                         #文字轉換數值
quantile(x,0.25)                          #求第一分位 0.25 中分0.5 三分0.75
summary(x)                                #詳細摘要 有三分位數 #ANS:13.5

#------------------------------------------------------------------------------#

                                  #4 全距max-min

setwd("c:/cert/")                         #第一步 改變路徑
x <- read.csv("A-5.csv",header =TRUE)     #第二步 載入檔案 #先檢查型態 有header
x                                         #確認內容
str(x)                                    #列出資料 #文字型態 轉數字
x <- as.matrix(x)                         #文字轉換數值
max(x)-min(x)                             #全距 最大-最小 #ANS:110

#------------------------------------------------------------------------------#

                                  #5 變異數 var

setwd("c:/cert/")                         #第一步 改變路徑
x <- read.csv("A-6.csv",header =FALSE)    #第二步 載入檔案 #先檢查型態 無header
x                                         #確認內容
str(x)                                    #列出資料 #文字型態 轉數字
x <- as.matrix(x)                         #文字轉換數值
var(x)                                    #變異數  #ANS:10

#------------------------------------------------------------------------------#

                                 #6 相關係數 cor

setwd("c:/cert/")                         #第一步 改變路徑
x <- read.csv("C-1.csv",header =TRUE)     #第二步 載入檔案 #先檢查型態 有header
x                                         #確認內容
hour <- x[2]                              #取第2列的值
grade <- x[3]                             #取第3列的值
cor(hour,grade)                           #取相關係數 #前後沒差 #ANS:0.9108227

#------------------------------------------------------------------------------#

                                  #非程式碼題目 第7題~第題

#第7題 #list 使用彈性最大                                #課本 1-13 1-14 1-15

#第8題 #for while repeat 之外的不是R的迴圈               #課本 3-4

#第9題 #if判斷 題型下列    #ANS:y=NA                     #課本 3-2

        x <- 2
        if (x <3) y =NA else y=5
        print(y) 

#第10題 #階層 題型下列                                  #課本 3-8

        exec <- function(x){
          if(x==0) x_sum =1
          else
            x_sum = x*exec(x-1)
            return(x_sum)
        }
        exec(4)

#第11題 #解決NA的字
        
        na.rm=true

#第12題 #列相加 #ANS:第一列10 26 42 第二列15 18 21 24    #課本 3-7

        a <- matrix(1:12,nrow = 3,byrow = TRUE)
        a
        apply(a,1,sum)  
        apply(a,2,sum)

#第13題 每個值出現的次數

        x <- c(1,1,1,3,2,2,3)
        table(x)

#第14題 右方函數不屬於高階繪圖 identity hist plot pairs  #課本 4-1

#第15題 用列的方式結合再一起 2*3的矩陣                   

        x <- c(1,2,5)
        y <- c(3,5,10)
        (rbind(x,y))

#第16題 summary的Min 1stQu  Median Mean 3rdQu Max 資訊以外的
        
        x <- c(1,2,3)
        summary(x)

#第17題 # 代表註解

#第18題 #變數宣告第一個字母必須為英文字                  #課本 1-3
        
#第19題 ifelse 如果2>=3 是 2 否 3                        #課本 3-3
        
        ifelse(2 >=3,2,3)
        
#第20題 餘數%% 商%/%                                     #課本 3-6
        
        x1 <-9 %%5
        x2 <-9 %/%2
        x1
        x2