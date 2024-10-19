program cosine
implicit none
! for sine change term from 1 to x
real:: x,e,n,s,term,i
write(*,*) 'input x (in radians)'
read(*,*) x
write(*,*) 'enter no. of iterations'
read(*,*) n
! can also enter tolerance but way too small so taking iterations here
s=0
term=1
do i=1,n,1
    s=s+term
    term=-term*(x**2)/((i*2)*(i*2-1))
end do
print *, 'after ',n,' iterations:cos(x)=',s
print *, 'actual value of cos(x):', cos(x)
print *, 'x using cos-1',acos(cos(x))
end program cosine
