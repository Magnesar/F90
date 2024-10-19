program matrix_trace
implicit none

real,dimension(1000,1000) :: A,B,C
integer::p,q,r,s,i,j,k

print*, "Enter the dimensions of first matrix"
read(*,*) p
read(*,*) q
    print*, "enter the elements for 1"
!input
    do i=1,p,1
        do j=1,q,1
            read (*,*) A(i,j)
        end do
    end do
    print*," "
     print*, "A"
!output
    do i=1,p
        print*,(A(i,j),j=1,q)
    end do
!trace
if(p.eq.q) then
s=0
    do i=1,p
        do j=1,p
            if(i.eq.j) then
                s=s+A(i,j)
            end if
        end do
    end do
print*,"trace=",s

else
    print*, "not a square matrix, so trace does not exist"
end if

end program matrix_trace
