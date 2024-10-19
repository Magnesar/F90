program std
implicit none
real,dimension(100)::A
integer::i,n
real::sd,s=0,v=0

print*, "Enter the no. of data points"
read(*,*)n
print*, "Enter the data"
do i=1,n
    read(*,*)A(i)
    s=s+A(i)
end do
s=s/n
do i=1,n
    v=v+(s-A(i))**2
end do
sd=sqrt(v/n)
print*, "Standard Deviation=",sd
end program std
