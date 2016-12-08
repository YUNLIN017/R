#ALT+L �i�H��{���X�Y�X��(�ذ_�ӿ�d��)

#���0922
#�Ĥ@��R
#���W�h�ܤ�
z <- c(1,2,3,4,5)
y <- c(8,10,2,1,25)
plot(z,y)

#��J������ �b�U��خ�(Console) ��ENTER �i�[�ݦU�عϧ�
demo(graphics)

#��ܻ����� �j�p�g���t
data(iris)
plot(iris)


#���0929
#�w�˥x�W�a�ϮM��
install.packages("ggmap")
library('ggmap')
map.taiwan <- get_map(location = "taiwan",zoom = 8)
ggmap(map.taiwan)

#�M��w�� #�Φb�k�U������ ��� Packages��Install ��J
install.packages("C50")
#�M����J #�Φb�k�U��������� Packages �خإ���
library(C50)
#�M�󲾰� #�Φb�k�U��������� Packages �k��X�Ÿ�
remove.packages("C50")
#�M���s #�Φb�k�U��������� Packages Update�ϥ�
update(C50)


#�m��1
testX <- 10
testY <- testX ^2
testZ <-sqrt(testY) #sqrt = �}�ڸ�
testX 
testY 
testZ

#�d�߫��Amode �P ��r�Ӽ�length �ëD�r�����
X1 <- 10
X1
mode(x1)

X2 <- 10.11
X2
length(X2) #�Ӽ�1
mode(x2)

X3 <- T  #T���� TRUE
X3
mode(X3) 
length(X3) #�Ӽ�1

X4 <- "heyye" 
X4
mode(X4)
length(X4) #�Ӽ�1

X5 <- 4+2i #i =�Ƽ�
mode(X5)
length(X5)

X6 <- c(1,2,3,4,5)
length(X6)
mode(X6)

#20161006
#vector(�V�q)
v <- c(10,5, 3.1, 6.4, 9.2,21.7)
v
length(v) #�|������
mode(v)

#NA(�ʭ�) �N��NULL
v <- c(10,5, NA , 6.4, 9.2,21.7)
v
mode(v) #�̵M�ݩ�Ʀr
v[2] #�ĤG����� �q�@�}�l��_
v2 <- 1:10
v2[1]

#Matrix(�x�}) #nrow�C #rcol #byrow true = ��� false ������
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

#Transposition(��m) #��90��
xc_t <- t(xc)
xc_t
xr_t <- t(xr)
xr_t

nrow(x) #�X�C
ncol(x) #�X��

#����l
x[1,]  #x1�C���Ҧ��ƭ�
x[,2]  #x2�檺�Ҧ��ƭ�
x[2,3] #X(2,3)���ƭ�

#�@�w�n��ٰ}�C
eigen(xc) 

#�x�}�ۭ� ���k %*% 
xc
xr
z <- xc %*% xr
z

#Array(�}�C)

Ax <- 1:24
dim(Ax) <- c(4,6) #2�� 4*6
#���X�W�����
Ax <- array(1:24,dim=c(4,6))
Ax

dim(Ax) <- c(3,4,2) # 3�� 3*4*2
#���X�W�����
Ax <- array(1:24,dim=c(3,4,2)) #1:24 ���i���ܼ�
Ax
#���O0����
Ax <- array(0,dim=c(3,4,2))
Ax

Ax[1,1,2] #���ƭ�
Ax[2,3,1]


#20161013
#Factor(�]�l)
X <- factor(c("�k","�k","�k","�k"))
X

#��Ʈج[(dataframe)
id <- c(1001,1002,1003,1004)
age <- c(20,22,25,21)
sex <- c("Female","Male","Male","Female")
pay <- c(25000,30000,50000,28000)

X_dataframe <- data.frame(id,age,sex,pay) #��X���
X_dataframe

X_dataframe[3,2]
X_dataframe[4,]
X_dataframe[2]
X_dataframe$age

edit(X_dataframe) #�i�H��ƾ� �������N�S�F
Y_dataframe <- edit(X_dataframe) #�o�˴N�i�H����x�s
Y_dataframe

#�C��(list)
id <- c(1,2,3)
sex <- c("male","male","female")
pay <- c(30000,40000,45000)
y_datafrane <- data.frame(id,sex,pay)
#���h������A�@�_ List����u��
gender <- factor(c("�k","�k","�k"))
Paul.Family <- list(name ="Paul",wife="Iris", no.kid=3,Kids.age = c(25,28,30),gender,y_datafrane)
Paul.Family

#����
Paul.Family$Kids.age #��Paul.Family "���Y�̪�"Kids.age��
Paul.Family[4]   #��춶�ǲĥ|�� ��W�@�Ӧh�F���W��
Paul.Family[[4]] #�������W��

#���S�w��m����
Paul.Family[[4]][2] #�q�ĥ|����줤����2�Ӽƭ�
#Paul.Family[4][2] ���~error

#CH2 ��ƪ�Ū���P�g�J ���| #�ҥ�2-1��
getwd() #�d�ݦs�����|
setwd("C:/") #�]�w�s�����| #�ΦbTools�̧�
getwd()

#Ū�� #��X�ɮץᱼ���|�W �Ҧp"C:/ #�ҥ�2-2��
X <- read.table("X.csv",sep=",", header =  TRUE)
X
X$age
X[1,2]


#20161020
#�ҥ�2-2��
X <- read.table("X.csv",sep=",", header =  FALSE) #�򥻤W�O���~ #�|����D�C���Ĥ@��
X
str(X) 

#��²�� #�ҥ�2-3��
X <- read.csv("X.csv",header = TRUE)
X

#�פJtxt�ɮ� #�ҥ�2-3��
X <- read.table("X.txt",sep = "\t",header =  TRUE) #��Table���j
X
X <- read.table("X.txt",header =  TRUE) #�w�]Table �G�i�ٲ�
X

#scan��� ���w��J��ƪ���ƫ��A
#�i��J�ƭ� #�ҥ�2-4��
X <- scan("") #�i��J�ƭ� �b�U���J #�����J�� ���UENTER
X

#�h��� #�U���J �Ů���j #�ҥ�2-4��
X <- scan(file = "", what = list(name = "", pay = integer(0),sex=""))
X

#scanŪ�ɮצr #�S�Ӯ榡 #�ҥ�2-4��
X <- scan("X1.csv",sep = ",")
X

X <- scan("X1.txt")
X

#����ɮ׻P��ƶ� #�ҥ�2-5��
write.table(X,"C:/X_File1.csv",row.name = FALSE,col.names = FALSE,sep = ",")


#�P�W���̿�X�榡���@�� #���Ӯ榡
X <- scan("X1.csv",sep =",",what = list(id=integer(0),age = integer(0),pay=integer(0)))
X

#����ɮ׻P��ƶ� #�ҥ�2-5�� #����W��
write.table(X,"C:/X_File2.csv",row.name = FALSE,col.names = TRUE,sep = ",")

#dara()���ظ�ƶ�
data()

#����2-6��
data(iris)
iris
#����2-7��
str(iris)
summary(iris) #�e���� ������ �����

#�x�s �|�X�{RData�ɮ�
save(iris,file = "C:/iris.RData")

#���J
load("C:/iris.RData",.GlobalEnv)
iris

#�ĤT�� �y�{����
#�ҥ�3-1��
a <- c(1,2,3)
x <- a + 2
x

#�ҥ�3-1��
#()������ܵ��G
(X <- a+2)

#{}���X�R�O
{a <- c(1,2,3); x <- a+2} #���X
x
({a <- c(1,2,3); x <- a+2}) #���A��() �|������ܵ��G

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
#�ҥ�3-3��
if (x>5) y <-2 else y <-3
y

#switch �ҥ�3-3��
#1 = 5  2=55 3=ronrm(5)
x <- 3 #�ĴX��
switch ( x,5,sum(1:10),rnorm(5))

#�ҥ�3-4��
y <- "juice" 
switch (y,juice="Apple",meat="pork")

#for #�ҥ�3-5��
x <- 0
for(i in 1:5) x<- x+i
x

x <-0
y <-0
for(i in 1:5){x <- x + i ; y <- i^2} #�ⵧ�Ʀr #i*i = i^2
x
y

#while
sum <- 0
i <- 1
while(i <= 10){sum <- sum +i;i <- i+1}
sum

#repeat #�ҥ�3-6��
sum <- 0
i <-1
repeat{
sum <- sum +i
i <- i +1
if(i > 10) break
}
sum

# %% �l��  %|% �Ӽ� #�ҥ�3-6��
sum <- 0
for ( i in 1:50) {
  if( i %% 2 ==0) next
  sum <- sum +i
}
sum

#apply #�ҥ�3-7��
x <- array( 1:24 ,dim = c(4,6))
x
apply(x,1,sum) #1 �O�C �[�`
apply(x,2,sum) #2 �O�� �[�`

#�ۭq��� �ҥ�3-8��
myfun <- function(x) {y <-x +2 ;return(y)}
myfun(1)
myfun(100)
myfun() #�X���D

#���w�]��
myfun <- function(x=1) {y <-x +2 ;return(y)}
myfun(1)

# <- ���i���ܨ�ƥ~������
x <- 1
myfun <- function(x) {x <-2; print(x)}
myfun(x)
x
x<-1
# <<- ���ܨ�ƥ~������
myfun <- function(x) {x <<-2; print(x)}
myfun(x)
x
#���~���k
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


#���h
hwfun <- function(x=1){
  y <-1
  for(i in 1:x) y <- y *i
  return(y)
}
hwfun(5)

#20161103
#�ĥ|��
#�s�� 
demo(graphics)
demo(image)

#����ø�� #�s�@�s���� #sin��� #�ҥ�4-3��
y <- sin(1:20)
plot(y, type="o",main="sun plot",xlab = "X�b",ylab = "Y�b") #�ƭ� ���A �D���D X�b�W�� Y�b�W��

#�C��ø�� #�{�����ϥ[�W�F�� #�ҥ�4-6��
title(sub = "��4-2")
points(3,1)

#���ʦ�ø��
plot (2,2)
pts <- locator(n=3) #�I����N3���I #�U��خإk�W���|��STOP�аO �N�O����
pts #�X�{�A�I���I

#�]�wXY�y�� #�ҥ�4-8��
x <- c(1,5,8)
y <- c(3,3,2)
plot(x,y) #��o�� �O�o��U����ENTER
identify(x,y,"My labels") #�i�i�椬�� #�I�W�|���аO