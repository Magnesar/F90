program tt
implicit none
real,dimension(3,3)::A,B
integer::i,j
real::c
do i=1,3
    do j=1,3
        print *, "come on boy"
        read(*,*) A(i,j)
    end do
end do
do i=1,3
    print*, (A(i,j),j=1,3)
end do
do i=1,3
    do j=1,3
        B(i,j)=A(j,i)
    end do
end do

print*,"B="
do i=1,3
    print*,(B(i,j),j=1,3)
end do
end program tt
