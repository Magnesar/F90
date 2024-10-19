program quadratic
implicit none
!find roots to quadratic equation
!required variables
real::a,b,c,d,e,f,d1

print *, "If we have a quadratic equation: ax^2+bx+c:"
! taking input
write(*,*) 'enter a'
read(*,*)a
write(*,*) 'enter b'
read(*,*) b
write(*,*)'enter c'
read(*,*) c

!Finding Discriminant
d=b*b-4*a*c
write(*,*) 'discriminant',d

if (d>=0.0) then
    e=(-b+sqrt(d))/(2*a)
    f=(-b-sqrt(d))/(2*a)
    print *, "the roots are:",e,"and",f
else
    d1=sqrt(-d)
    e=d1/(2*a)
    f=-b/(2*a)
    print *, "the complex roots are:(i)-",f,"-",e,"i"
    print *, "(ii)",f,"+",e,"i"
end if

end program quadratic
