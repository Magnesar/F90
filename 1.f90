program matrix_prod
implicit none

real,allocatable,dimension(:) :: A
integer::i,j,p,q

read(*,*) p,q
allocate(A(p:q))
read(*,*) A
do i=1,p
            print*,(A(i:j),j=1,q)
end do
end program matrix_prod
