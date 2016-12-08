
                                   #1 ������mean

setwd("c:/cert/")                         #�Ĥ@�B ���ܸ��|
x <- read.csv("A-1.csv",header =FALSE)    #�ĤG�B ���J�ɮ� #���ˬd���A �Lheader
x                                         #�T�{���e
str(x)                                    #�C�X��� #��r���A ��Ʀr
x <- as.matrix(x)                         #��r�ഫ�ƭ�
mean(x)                                   #�D������
summary(x)                                #�ԲӺK�n ���T����� #ANS:171.2

#------------------------------------------------------------------------------#

                                   #2 �̤j��max

setwd("c:/cert/")                         #�Ĥ@�B ���ܸ��|
x <- read.csv("A-3.csv",header =FALSE)    #�ĤG�B ���J�ɮ� #���ˬd���A �Lheader
x                                         #�T�{���e
str(x)                                    #�C�X��� #��r���A ��Ʀr
x <- as.matrix(x)                         #��r�ഫ�ƭ�
max(x)                                    #�D�̤j�� #ANS:126.9

#------------------------------------------------------------------------------#

                                #3 �Ĥ@����quantile

setwd("c:/cert/")                         #�Ĥ@�B ���ܸ��|
x <- read.csv("A-4.csv",header =FALSE)    #�ĤG�B ���J�ɮ� #���ˬd���A �Lheader
x                                         #�T�{���e
str(x)                                    #�C�X��� #��r���A ��Ʀr
x <- as.matrix(x)                         #��r�ഫ�ƭ�
quantile(x,0.25)                          #�D�Ĥ@���� 0.25 ����0.5 �T��0.75
summary(x)                                #�ԲӺK�n ���T����� #ANS:13.5

#------------------------------------------------------------------------------#

                                  #4 ���Zmax-min

setwd("c:/cert/")                         #�Ĥ@�B ���ܸ��|
x <- read.csv("A-5.csv",header =TRUE)     #�ĤG�B ���J�ɮ� #���ˬd���A ��header
x                                         #�T�{���e
str(x)                                    #�C�X��� #��r���A ��Ʀr
x <- as.matrix(x)                         #��r�ഫ�ƭ�
max(x)-min(x)                             #���Z �̤j-�̤p #ANS:110

#------------------------------------------------------------------------------#

                                  #5 �ܲ��� var

setwd("c:/cert/")                         #�Ĥ@�B ���ܸ��|
x <- read.csv("A-6.csv",header =FALSE)    #�ĤG�B ���J�ɮ� #���ˬd���A �Lheader
x                                         #�T�{���e
str(x)                                    #�C�X��� #��r���A ��Ʀr
x <- as.matrix(x)                         #��r�ഫ�ƭ�
var(x)                                    #�ܲ���  #ANS:10

#------------------------------------------------------------------------------#

                                 #6 �����Y�� cor

setwd("c:/cert/")                         #�Ĥ@�B ���ܸ��|
x <- read.csv("C-1.csv",header =TRUE)     #�ĤG�B ���J�ɮ� #���ˬd���A ��header
x                                         #�T�{���e
hour <- x[2]                              #����2�C����
grade <- x[3]                             #����3�C����
cor(hour,grade)                           #�������Y�� #�e��S�t #ANS:0.9108227

#------------------------------------------------------------------------------#

                                  #�D�{���X�D�� ��7�D~���D

#��7�D #list �ϥμu�ʳ̤j                                #�ҥ� 1-13 1-14 1-15

#��8�D #for while repeat ���~�����OR���j��               #�ҥ� 3-4

#��9�D #if�P�_ �D���U�C    #ANS:y=NA                     #�ҥ� 3-2

        x <- 2
        if (x <3) y =NA else y=5
        print(y) 

#��10�D #���h �D���U�C                                  #�ҥ� 3-8

        exec <- function(x){
          if(x==0) x_sum =1
          else
            x_sum = x*exec(x-1)
            return(x_sum)
        }
        exec(4)

#��11�D #�ѨMNA���r
        
        na.rm=true

#��12�D #�C�ۥ[ #ANS:�Ĥ@�C10 26 42 �ĤG�C15 18 21 24    #�ҥ� 3-7

        a <- matrix(1:12,nrow = 3,byrow = TRUE)
        a
        apply(a,1,sum)  
        apply(a,2,sum)

#��13�D �C�ӭȥX�{������

        x <- c(1,1,1,3,2,2,3)
        table(x)

#��14�D �k���Ƥ��ݩ󰪶�ø�� identity hist plot pairs  #�ҥ� 4-1

#��15�D �ΦC���覡���X�A�@�_ 2*3���x�}                   

        x <- c(1,2,5)
        y <- c(3,5,10)
        (rbind(x,y))

#��16�D summary��Min 1stQu  Median Mean 3rdQu Max ��T�H�~��
        
        x <- c(1,2,3)
        summary(x)

#��17�D # �N������

#��18�D #�ܼƫŧi�Ĥ@�Ӧr���������^��r                  #�ҥ� 1-3
        
#��19�D ifelse �p�G2>=3 �O 2 �_ 3                        #�ҥ� 3-3
        
        ifelse(2 >=3,2,3)
        
#��20�D �l��%% ��%/%                                     #�ҥ� 3-6
        
        x1 <-9 %%5
        x2 <-9 %/%2
        x1
        x2