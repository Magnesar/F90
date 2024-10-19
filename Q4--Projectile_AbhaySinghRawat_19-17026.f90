program projectile
implicit none

real:: the,v,vx,vy,dvy,g,theta,x,H,y,dx,dy,dt,T
integer::i
!creating a file with name "proj.dat"
open(1,file='proj.dat')

print*, "angle of launch(in deg)"
read(*,*) the
theta=the*3.141/180  !angle in radians
print*, "velocity of launch(m/s)"
read(*,*) v

g=9.81
T=2*v*sin(theta)/g
print*, "time period",T
print*,"Enter a time interval so that 1000 intervals can be contained in T"
read(*,*)dt
x=0
y=0
t=0
vx=v*cos(theta)
vy=v*sin(theta)
do i=1,1000,1
    dx=vx*dt
    dy=vy*dt
    y=y+dy
    x=x+dx
    t=t+dt
    dvy=g*dt        ! dv/dt=g
    vy=vy-dvy
    v=sqrt(vx*vx+vy*vy)

    write(1,*) t,x,y,v
end do

close(1)
!plot X vs Y to get the parabola of y vs x  (2:3)
!plot T vs Y to get the variation of y vs t   (1:3)
!plot T vs Y to get the variation of y vs t   (1:2)
end program projectile
