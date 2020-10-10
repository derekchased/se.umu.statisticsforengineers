w=5
{
  if (w<4)
  {d=1} 
  else
  {d=2} 
}

##--------------------##
a=0
for( i in 1:10)
{
  a=a+i;
}
print(a)



for( i in c(3,1,5))
{
  print(i)
}

##--------------------##

a=0
i=0
while(a<55)
{
  i=i+1;
  a=a+i;
}
print(i)

##--------------------##

FinalGrade<-function(homeexam, bonus=0,penalty=0)
{
  total_points=homeexam+bonus-penalty 
  if (total_points<50) 
  {Grade="U"}
  else
  {Grade="G"}
  return(Grade)
}
