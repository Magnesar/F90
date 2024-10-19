program SHM
implicit none

real:: x,t,v,dv,dt,k,dx,m
integer::i
!creating a file with name "SHM1.dat"
open(1,file='SHM1.dat')

x=0
t=0
dt=0.02     !time interval
k=5         ! spring constant
m=1          !mass attached

!values to be calculated are decided by the loop

do i=1,1000,1

dv=-k*x*dt/m    !(dv/dt)=-x*(omega)^2 and omega=sqrt(k/m)
v=v+dv
dx=v*dt
x=x+dx
t=t+dt

write(1,*)t,x,v !writing the values of 't','x' and 'v' in the '.dat' file
end do
close(1)
!closing the file "SHM1.dat" with 3 columns of 't','x' and 'v' respecrively

! 'x' vs 'v' graph will give an elliptical graph
!either of "v" and 'x' will dive a sinusoidal variation with 't'
end program
