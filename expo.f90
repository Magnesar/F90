program exponential
implicit none

real:: x,e,tol,n,s,term
write(*,*) 'input x and tolerance'
read(*,*) x,tol


s=0.0
term=1
do n=1,100,1
    if(abs(term)<tol) exit
    s=s+term
    term=term*x/n
end do
print *, 'after ',n,' iterations:exp(x)=',s
print *, 'actual value of exp(x):', exp(x)
end program exponential
