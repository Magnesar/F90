program do
    implicit none
real::k,n

write(*,*) "enter n"
read(*,*) n
print *, "want to see the magic of do loop"
do k=0,n,1
    print*, k
end do
end program do
