#ALT+L 可以把程式碼縮幾來(框起來選範圍)

#日期0922
#第一個R
#不規則變化
z <- c(1,2,3,4,5)
y <- c(8,10,2,1,25)
plot(z,y)

#輸入完之後 在下方框框(Console) 案ENTER 可觀看各種圖形
demo(graphics)

#顯示鳶尾花圖 大小寫有差
data(iris)
plot(iris)


#日期0929
#安裝台灣地圖套件
install.packages("ggmap")
library('ggmap')
map.taiwan <- get_map(location = "taiwan",zoom = 8)
ggmap(map.taiwan)

#套件安裝 #或在右下角視窗 選擇 Packages→Install 輸入
install.packages("C50")
#套件載入 #或在右下角視窗選擇 Packages 框框打勾
library(C50)
#套件移除 #或在右下角視窗選擇 Packages 右邊X符號
remove.packages("C50")
#套件更新 #或在右下角視窗選擇 Packages Update圖示
update(C50)


#練習1
testX <- 10
testY <- testX ^2
testZ <-sqrt(testY) #sqrt = 開根號
testX 
testY 
testZ

#查詢型態mode 與 文字個數length 並非字串長度
X1 <- 10
X1
mode(x1)

X2 <- 10.11
X2
length(X2) #個數1
mode(x2)

X3 <- T  #T表示 TRUE
X3
mode(X3) 
length(X3) #個數1

X4 <- "heyye" 
X4
mode(X4)
length(X4) #個數1

X5 <- 4+2i #i =複數
mode(X5)
length(X5)

X6 <- c(1,2,3,4,5)
length(X6)
mode(X6)

#20161006
#vector(向量)
v <- c(10,5, 3.1, 6.4, 9.2,21.7)
v
length(v) #會有五個
mode(v)

#NA(缺值) 代表NULL
v <- c(10,5, NA , 6.4, 9.2,21.7)
v
mode(v) #依然屬於數字
v[2] #第二個欄位 從一開始算起
v2 <- 1:10
v2[1]

#Matrix(矩陣) #nrow列 #rcol #byrow true = 橫的排 false 直的排
x <- matrix(1:24, nrow=4, ncol=6,byrow = TRUE) 
x
y <- matrix(1:24, nrow=4, ncol=6,byrow = FALSE)
y

#cbind()&rbind c=col r=row
x1 <- c(1,2,3)
x2 <- c(4,5,6)
x3 <- c(7,8,9)
xc <- cbind(x1,x2,x3)
xc
xr <- rbind(x1,x2,x3)
xr

#Transposition(轉置) #轉90度
xc_t <- t(xc)
xc_t
xr_t <- t(xr)
xr_t

nrow(x) #幾列
ncol(x) #幾欄

#取位子
x[1,]  #x1列的所有數值
x[,2]  #x2行的所有數值
x[2,3] #X(2,3)的數值

#一定要對稱陣列
eigen(xc) 

#矩陣相乘 乘法 %*% 
xc
xr
z <- xc %*% xr
z

#Array(陣列)

Ax <- 1:24
dim(Ax) <- c(4,6) #2維 4*6
#結合上面兩行
Ax <- array(1:24,dim=c(4,6))
Ax

dim(Ax) <- c(3,4,2) # 3維 3*4*2
#結合上面兩行
Ax <- array(1:24,dim=c(3,4,2)) #1:24 欄位可放變數
Ax
#都是0的話
Ax <- array(0,dim=c(3,4,2))
Ax

Ax[1,1,2] #取數值
Ax[2,3,1]


#20161013
#Factor(因子)
X <- factor(c("男","女","男","女"))
X

#資料框架(dataframe)
id <- c(1001,1002,1003,1004)
age <- c(20,22,25,21)
sex <- c("Female","Male","Male","Female")
pay <- c(25000,30000,50000,28000)

X_dataframe <- data.frame(id,age,sex,pay) #整合欄位
X_dataframe

X_dataframe[3,2]
X_dataframe[4,]
X_dataframe[2]
X_dataframe$age

edit(X_dataframe) #可以改數據 但關掉就沒了
Y_dataframe <- edit(X_dataframe) #這樣就可以更改儲存
Y_dataframe

#列表(list)
id <- c(1,2,3)
sex <- c("male","male","female")
pay <- c(30000,40000,45000)
y_datafrane <- data.frame(id,sex,pay)
#眾多蘭為何再一起 List比較彈性
gender <- factor(c("男","男","女"))
Paul.Family <- list(name ="Paul",wife="Iris", no.kid=3,Kids.age = c(25,28,30),gender,y_datafrane)
Paul.Family

#取值
Paul.Family$Kids.age #取Paul.Family "裏頭裡的"Kids.age值
Paul.Family[4]   #欄位順序第四個 比上一個多了欄位名稱
Paul.Family[[4]] #取消欄位名稱

#取特定位置的值
Paul.Family[[4]][2] #從第四個欄位中取第2個數值
#Paul.Family[4][2] 錯誤error

#CH2 資料的讀取與寫入 路徑 #課本2-1頁
getwd() #查看存取路徑
setwd("C:/") #設定存取路徑 #或在Tools裡改
getwd()

#讀檔 #把X檔案丟掉路徑上 例如"C:/ #課本2-2頁
X <- read.table("X.csv",sep=",", header =  TRUE)
X
X$age
X[1,2]


#20161020
#課本2-2頁
X <- read.table("X.csv",sep=",", header =  FALSE) #基本上是錯誤 #會把標題列當第一行
X
str(X) 

#更簡潔 #課本2-3頁
X <- read.csv("X.csv",header = TRUE)
X

#匯入txt檔案 #課本2-3頁
X <- read.table("X.txt",sep = "\t",header =  TRUE) #用Table分隔
X
X <- read.table("X.txt",header =  TRUE) #預設Table 故可省略
X

#scan函數 指定輸入資料的資料型態
#可輸入數值 #課本2-4頁
X <- scan("") #可輸入數值 在下方輸入 #停止輸入時 按下ENTER
X

#多欄位 #下方輸入 空格分隔 #課本2-4頁
X <- scan(file = "", what = list(name = "", pay = integer(0),sex=""))
X

#scan讀檔案字 #沒照格式 #課本2-4頁
X <- scan("X1.csv",sep = ",")
X

X <- scan("X1.txt")
X

#資料檔案與資料集 #課本2-5頁
write.table(X,"C:/X_File1.csv",row.name = FALSE,col.names = FALSE,sep = ",")


#與上方兩者輸出格式不一樣 #有照格式
X <- scan("X1.csv",sep =",",what = list(id=integer(0),age = integer(0),pay=integer(0)))
X

#資料檔案與資料集 #課本2-5頁 #有欄名稱
write.table(X,"C:/X_File2.csv",row.name = FALSE,col.names = TRUE,sep = ",")

#dara()內建資料集
data()

#頁數2-6頁
data(iris)
iris
#頁數2-7頁
str(iris)
summary(iris) #前分位 中分位 後分位

#儲存 會出現RData檔案
save(iris,file = "C:/iris.RData")

#載入
load("C:/iris.RData",.GlobalEnv)
iris

#第三章 流程控制
#課本3-1頁
a <- c(1,2,3)
x <- a + 2
x

#課本3-1頁
#()直接顯示結果
(X <- a+2)

#{}結合命令
{a <- c(1,2,3); x <- a+2} #結合
x
({a <- c(1,2,3); x <- a+2}) #有括號() 會直接顯示結果

#if else
x <- 6
if(x>5) y=2 else y=4
y

x <- 3
if (x<5) y=10
y

x <- 3
y <-1
if( x<5 && y <5) {y <- 10; z <-5} 
y
z

x <- 20
y <- ifelse (x>5,2,3)
y
 
#20161027
#課本3-3頁
if (x>5) y <-2 else y <-3
y

#switch 課本3-3頁
#1 = 5  2=55 3=ronrm(5)
x <- 3 #第幾個
switch ( x,5,sum(1:10),rnorm(5))

#課本3-4頁
y <- "juice" 
switch (y,juice="Apple",meat="pork")

#for #課本3-5頁
x <- 0
for(i in 1:5) x<- x+i
x

x <-0
y <-0
for(i in 1:5){x <- x + i ; y <- i^2} #兩筆數字 #i*i = i^2
x
y

#while
sum <- 0
i <- 1
while(i <= 10){sum <- sum +i;i <- i+1}
sum

#repeat #課本3-6頁
sum <- 0
i <-1
repeat{
sum <- sum +i
i <- i +1
if(i > 10) break
}
sum

# %% 餘數  %|% 商數 #課本3-6頁
sum <- 0
for ( i in 1:50) {
  if( i %% 2 ==0) next
  sum <- sum +i
}
sum

#apply #課本3-7頁
x <- array( 1:24 ,dim = c(4,6))
x
apply(x,1,sum) #1 是列 加總
apply(x,2,sum) #2 是行 加總

#自訂函數 課本3-8頁
myfun <- function(x) {y <-x +2 ;return(y)}
myfun(1)
myfun(100)
myfun() #出問題

#給預設值
myfun <- function(x=1) {y <-x +2 ;return(y)}
myfun(1)

# <- 不可改變函數外面的值
x <- 1
myfun <- function(x) {x <-2; print(x)}
myfun(x)
x
x<-1
# <<- 改變函數外面的值
myfun <- function(x) {x <<-2; print(x)}
myfun(x)
x
#錯誤打法
x <-5
sum <-1
hwfun <- function(x,sum){
  for (i in x) {sum <- sum*x;x<-x+1
    
  }
  x <- sum
}
hwfun(x,sum)
x
sum


#階層
hwfun <- function(x=1){
  y <-1
  for(i in 1:x) y <- y *i
  return(y)
}
hwfun(5)

#20161103
#第四章
#製圖 
demo(graphics)
demo(image)

#高階繪圖 #製作新的圖 #sin函數 #課本4-3頁
y <- sin(1:20)
plot(y, type="o",main="sun plot",xlab = "X軸",ylab = "Y軸") #數值 型態 主標題 X軸名稱 Y軸名稱

#低階繪圖 #現有的圖加上東西 #課本4-6頁
title(sub = "圖4-2")
points(3,1)

#互動式繪圖
plot (2,2)
pts <- locator(n=3) #點選任意3個點 #下方框框右上角會有STOP標記 就是互動
pts #出現你點的點

#設定XY座標 #課本4-8頁
x <- c(1,5,8)
y <- c(3,3,2)
plot(x,y) #到這行 記得到下面案ENTER
identify(x,y,"My labels") #可進行互動 #點上會有標記
