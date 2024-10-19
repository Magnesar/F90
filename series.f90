program series
! 1-3+5-7
implicit none
real::s,i,n,t,j
print *, 'series is : 1-3+5-7....'
write(*,*) 'enter the no. of terms of the series you want to join'
read(*,*) n
s=0
j=1
do i=0,n,1
    t=(-1)**i*j
    s=s+t
    j=j+2
    print *, 'terms',t
end do
print *, s
end program series
