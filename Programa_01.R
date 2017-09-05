#Autor: Ana Paula

1+1
3*4
2-(4*2)/5
4^2
21%/%4
21%%4

1:10
plot(1:10)
rnorm(10) #números na distribuição normal
hist(rnorm(1000)) #histograma

x<-100  #atribui o valor a 100 à variável x
y<-23   #atribui o valor a 23 à variável y
x+y
x*y
x/y

vetor<-c(1,4,5,10,2,x,y) #concatena os valores e atrbui à veriável "vetor"

numero<-c(546.90,10,789)
inteiro<-c(1L, 98L)   #note o L
complexo<-c(20i,2+9i) #note o i
texto<-c("meu", "vetor", "com", "varias", "palavras") #note as aspas
logico<-c(TRUE, FALSE, TRUE)

as.character(numero)

#TRUE-> 1, FALSE->0
as.numeric(logico)

#Não faz sentido
as.numeric(texto)

#Faz sentido
as.numeric("129873")


#Mostra a estrutura 
str(x)
str(y)
str(vetor)
str(numero)
str(inteiro)
str(complexo)
str(texto)

#Mostra o tamanho
length(x)
length(1:100)
length(vetor)
length(texto)

x<-c(1,3,-5,10)
abs(x) #valor absoluto
exp(x) #exponencial em x
sqrt(x) #raiz quadrada
factorial(3)

x<-c(10,25,150)

mean(x) #media
sum(x) #somatoria
prod(x)
cumsum(x)
cumprod(x)

var(x)
sd(x)  
median(x)
min(x)
max(x)

1==0
1!=0
1>0
1<0
!1<0
TRUE&FALSE
TRUE|FALSE


set.seed(1)
horas_trabalhadas<-rnorm(1000,8,0.5)
valor_por_hora<-rnorm(1000,30,2)

#1. Resp: Classe => num
str(horas_trabalhadas)
str(valor_por_hora)
class(valor_por_hora)

#2. Resp: 1000
length(horas_trabalhadas)
length(valor_por_hora)

#3.
min(horas_trabalhadas)
min(valor_por_hora)
max(horas_trabalhadas)
max(valor_por_hora)

#4.
valor_por_dia<-horas_trabalhadas*valor_por_hora
valor_por_dia
min(valor_por_dia)
max(valor_por_dia)

#5.
sum(valor_por_dia)

#Ver o diretório que está trabalhando
getwd()

mtcars
write.csv2(mtcars, "mtcars.csv")

str(mtcars)

carros<-read.csv("mtcars.csv", dec=",", sep = ";")
carros<-read.csv2("mtcars.csv")

str(carros)

censo<-read.csv2("data/Censo.csv", stringsAsFactors = FALSE)
str(censo)
names(censo)
View(censo)
length(censo)
nrow(censo)

censo[3]
censo["Nome"]
censo[c(2,3)]
censo[c("Nome", "CPF")]
censo[c("AnosEstudo", "Salario")]
min(censo["Altura.cm"])
max(censo["Altura.cm"])

altura<-censo$Altura.cm
summary(altura)

media.altura<-mean(altura)

desvio.altura<-sd(altura)
altura>media.altura+4*desvio.altura

gigantes<-altura[altura>media.altura+4*desvio.altura]
gigantes

altura<media.altura+4*desvio.altura

anoes<-altura[altura>media.altura+4*desvio.altura]
