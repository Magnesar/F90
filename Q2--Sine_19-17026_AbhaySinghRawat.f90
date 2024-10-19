program sine
implicit none
real:: x,e,n,s,term,i
write(*,*) 'input x (in radians)'
read(*,*) x
write(*,*) 'enter no. of iterations'
read(*,*) n
! can also enter tolerance but way too small so taking iterations here
s=0.0
term=x
do i=1,n,1
    s=s+term
    term=-term*(x**2)/((i*2)*(i*2+1))
end do
print *, 'after ',n,' iterations:sin(x)=',s
print *, 'actual value of sin(x):', sin(x)
end program sine
