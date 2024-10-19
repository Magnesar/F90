program complexnumber
implicit none
real::a,b,answer,Conversion
a=2
b=4
answer=Conversion(a,b)
print*,answer
end program complexnumber
real function Conversion(a,b)
real::a,b
print*,'Conversion from polar to Rectangular coordinate'

print*,'X-coordinate of Rectangular Form=',a
print*,'Y-coordinate of Rectangular Form=',b

 print*,'Conversion from Complex form to Polar Form '
 r=sqrt(a*2 + b*2)
 Angle=atan(b/a)
 Theta=Angle*180/3.14951
 print*,'Radial Length r in polar form =',r
 print*,'Angle Theta of Polar Form =',Theta
 end function Conversion
