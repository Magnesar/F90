program matrix_prod
implicit none

real,dimension(1000,1000) :: A,B,C
integer::p,q,r,s,i,j,k

print*, "Enter the dimensions of first matrix"
read(*,*) p
read(*,*) q

print*, "Enter the dimensions of second matrix"
read(*,*) r
read(*,*) s

!checking if multiplicable
if (q.eq.r) then
        print*, "Matrix can be multiplicated"
else
    print*,"Not multiplicable"
end if

!multiplying
if (q.eq.r) then
!inputting
    print*, "enter the elements for 1"
    do i=1,p,1
        do j=1,q,1
            read (*,*) A(i,j)
        end do
    end do
    print*," "
     print*, "A"
    do i=1,p
        print*,(A(i,j),j=1,q)
    end do

    print*, "enter the elements for 2"
    do i=1,r
        do j=1,s
            read (*,*) B(i,j)
        end do
    end do
    print*," "
     print*, "B"
    do i=1,r
            print*, (B(i,j),j=1,s)
    end do



    do i=1,p
        do j=1,s
            C(i,j)=0
            do k=1,r
                C(i,j)=C(i,j)+(A(i,k)*B(k,j))
            end do
        end do
    end do
    print*," "
    print*,"product"
    do i=1,p
            print*,(C(i,j),j=1,s)
    end do

end if

end program matrix_prod
