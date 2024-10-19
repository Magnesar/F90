!central force
program cf
implicit none
real :: dt,vx,vy,vz,x,y,Fx,Fy,F,n,r
integer ::i

open(1,file='cf.dat')

dt=0.01
vx=0
vy=1
x=1
y=1        !x and y are the initial positions of the particle     !

do i=1,10000
r=sqrt(x*x+y*y)
F=-1/(r*r)
Fx=x/r*f
Fy=y/r*f
vx=vx+fx*dt
vy=vy+fy*dt
x=x+dt*vx
y=y+dt*vy

write(1,*)x,y
end do
close(1)
!now plot the file 'cf.dat' gnu plot using 1:2
end program cf
