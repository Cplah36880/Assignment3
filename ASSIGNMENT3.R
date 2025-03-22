#1
logicalvector<-rep(c(TRUE,FALSE),length.out=12)
print(logicalvector)
#2
checknegative<-function(numericvector)
{
  return(numericvector<0)
}
inputvector<-c(-5,3,0,-2,7,-1,4)
negativelogicalvector<-checknegative(inputvector)
print(negativelogicalvector)
#3
vector1<-c(1,2,3,4,5)
vector2<-c(1,2,3,4,6)
equalelements<-vector1==vector2
differingindices<-which(!equalelements)
print(differingindices)
#4
numericvector<-c(1,2,3,4,5,6,7,8,9,34,23,20)
numericmatrix<-matrix(numericvector,nrow=3,ncol=4,byrow=TRUE)
print("numeric matrix:")
print(numericmatrix)
numericmatrix2<-matrix(c(1,0,1,0,1,0,1,0,1,0,1,0),nrow=3,ncol=4,byrow=TRUE)
print("numeric marix:")
print(numericmatrix2)
comparisonresult<-numericmatrix==numericmatrix2
print("element wise comparison result:")
print(comparisonresult)
#5
vector1<-c(1,2,3,4)
vector2<-c(10,20,30,40,50,60,70,80,90,100)
resultvector<-vector1+vector2
print("resulting vector after addition:")
print(resultvector)
#6
logicalvector<-c(TRUE,FALSE,TRUE)
sum<-sum(as.numeric(logicalvector))
print(sum)
#7
num<-c(5,1,3,14,19)
values<-num[num>10]
print(values)
#8
str<-"hello world! welcome to r programming"
num<-nchar(str)
str2<-substr(str,1,11)
print(paste("number of characters:",num))
print(paste("extracted:",str2))
#9
str1<-"data science"
srt2<-"R"
result<-paste(str1,str2,sep="-")
print(result)
#10
words<-c("hello","world","this","is","R")
pasteout=paste(words,collapse="-")
print(pasteout)
cat(words,sep="-")
cat("\n")
#11
originalstr<-"apple,apple and apple"
firstreplacement<-sub("apple","orange",originalstr)
cat("after replacing the first occurence :\n",firstreplacement,"\n")
allreplacement<-gsub("apple","orange",originalstr)
cat("after replacing all occurence:\n",allreplacement,"\n")
#12
gendervector<-c("male","female","male","female")
genderfactor<-factor(gendervector)
print(genderfactor)
levels(genderfactor)
#13
monthsvector<-c("jan","mar","feb","apr","may","dec","nov")
orderedlevels<-c("jan","feb","mar","apr","may","june","july","aug","sep","oct","nov","dec")
monthsfactor<-factor(monthsvector,levels=orderedlevels,ordered=TRUE)
print(monthsfactor)
print(orderedmonths<-sort(monthsfactor))
#14
gendervector<-factor(c("male","female","female","male","female"))
print("original factor vector:")
print(gendervector)
femaleentries<-gendervector[gendervector=="female"]
print(femaleentries)
#15
bindata<-function(numericvector)
{
  breaks<-c(-Inf,0,50,Inf)
  labels<-c("low","medium","high")
  binnedfactor<-cut(numericvector,breaks,labels=labels,right=FALSE)
  return(binnedfactor)
}
numericvector<-c(-10,0,25,30,50,75,100)
binnedresult<-bindata(numericvector)
print(binnedresult)
#16
logicalvector<-c(TRUE,FALSE,TRUE,FALSE)
anyresult<-any(logicalvector)
cat("result of any():",anyresult,"\n")
allresult<-all(logicalvector)
cat("result of all():",allresult,"\n")
#17
vect1<-c(TRUE,FALSE,TRUE,FALSE)
vect2<-c(FALSE,FALSE,TRUE,TRUE)
andresult<-vect1&vect2
cat(andresult)
orresult<-vect1|vect2
cat(orresult)
notresult1<-!vect1
notresult2<-!vect2
cat("result of logical not on vector 1 and 2:",notresult1,"\n",notresult2,"\n")
#18
vect<-c(10,20,30,40,50)
mean<-mean(vect)
newvector<-ifelse(vect<mean,NA,vect)
cat("original vect:",vect,"\n")
cat("mean of vect:",mean,"\n")
cat("new vector with NA:",newvector,"\n")
#19
str1<-"Hello"
str2<-"hello"
cat("comparing strings:\n")
cat("str1==str2:",str1==str2,"\n")
cat("str1!=str2:",str!=str2,"\n")
cat("str1<str2:",str1<str2,"\n")
cat("str1>str2:",str1>=str2,"\n")
#20
str<-"This is a string with:\n\t- A new line\n\t-A tab\n\t-A backslash:\\"
cat(str)



