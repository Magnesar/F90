program com
implicit none
real::a,b,c,comp
print*,"Enter the real part of complex no."
read(*,*)a
print*,"Enter the imaginary part of complex no."
read(*,*)b
!print*, "The required forms:"
c=comp(a,b)
print*, c

end program com

real function comp(a,b)
real::a,b
real::theta,r
print*,"Rectangular form:"
print*, a,'+',b,'i'

print*, "Polar form:"
theta=atan(b/a)
r=sqrt(a*a+b*b)
print*,r,'(cos(',theta,')+i*sin(',theta,'))'
end function comp
