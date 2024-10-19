program fact_func
implicit none
integer::N

print*,"Enter the no."
read(*,*) N

print*, "factorial of",N,"=",fact(N)
contains
integer function fact(N)

integer, intent(in)::N
integer::f,i
f=1
do i=1,N
    f=f*i
end do
fact=f
end function fact

end program fact_func
