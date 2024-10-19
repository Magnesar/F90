program trap
implicit none
real,external::f            !the function is external
real::a,b,h,s,sum
integer::n,i
print*,"Enter the lower limit "
read*,a
print*,"Enter the upper limit "
read*,b
print*,"Enter the no. of intervals"
read*,n
h = (b-a)/n
s = (h/2)*(f(a) + f(b))
sum= 0
do i=1,n-1
sum= sum +h*f(a + i*h)
end do
sum = s + sum
print*,"The Integration of x^2 from",a," to ",b," is approximately",sum
end program trap

real function f(x)      !function to be integrated
implicit none
real::x
f = x**2
end
