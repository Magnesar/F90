program simp
implicit none
real,external::f
real::x,a,b,h,simps,fo,fe
integer::n,i,m
print*,"Enter the lower limit  "
read*,a
print*,"Enter the upper limit  "
read*,b
print*,"Enter the no. of intervals"
read*,n
h = (b-a)/n

m = n/2
fo = 0
do i=0,m-1
fo= fo + f(a+(2*i+1)*h)
end do

fe = 0
do i=0,m-1
fe= fe+ f(a + 2*i*h)
end do

simps = (h/3.0)*(f(a) + f(b) + 4*fo + 2*fe)
print*,"The Integration of x^2 from",a," to ",b," is approximately",simps
end program simp

real function f(x)
implicit none
real::x
f = x**2
end
