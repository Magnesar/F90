program hor_projectile
implicit none

real:: the,v,vx,vy,dvy,g,theta,x,h,y,dx,dy,dt,T
integer::i
!creating a file with name "proj.dat"
open(1,file='hor_proj.dat')

print*, "height of launch(in m)"
read(*,*) h
print*, "velocity of launch(m/s)"
read(*,*) v

g=9.81
T=sqrt(2*h/g)       !h=gT^2/2
print*, "time period",T
print*,"Enter a time interval so that 1000 intervals can be contained in T"
read(*,*)dt
x=0
y=h
t=0        !initial y=Height
vx=v
vy=g*t
do i=1,1000,1
    dx=vx*dt
    dy=vy*dt
    y=y-dy          !height only decreases now
    x=x+dx
    t=t+dt
    dvy=g*dt        ! dv/dt=g
    vy=vy+dvy
    v=sqrt(vx*vx+vy*vy)

    write(1,*) t,x,y,v
end do

close(1)
!plot X vs Y to get the parabola of y vs x  (2:3)
!plot T vs Y to get the variation of y vs t   (1:3)
!plot T vs Y to get the variation of y vs t   (1:2)
end program hor_projectile
