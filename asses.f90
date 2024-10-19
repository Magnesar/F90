!                             Online Fortran Compiler.
!                 Code, Compile, Run and Debug Fortran program online.
! Write your code in this editor and press "Run" button to execute it.
!
!


program Euler
    implicit none
    real:: X(15),h,xo,yo,xn,n,Y(15),Y_org(15),f,i

    character(len=12)::a,b,c
    xo=0.0      ! Initial x point
    xn=1.0      ! Final x point
    h=0.1       ! Step-size
    yo=0.5     ! Initial value of y at initial x point
    n= (xn-xo)/h     ! Determining the no. of intervals

    do i=0,n
        X(i)=xo + i*h    ! Creating an array of x points
    enddo

    do i=0,n-1
        Y(0)=yo
        Y(i+1)=Y(i) + h*(Y(i)-X(i))  ! Creating an array of y-points by Euler Method
    end do

    do i=0,n
        Y_org(i)=f(X(i))              ! Storing correct values of Y using known integral of ODE
    end do

    print*,'Step        ','     X-point     ','     Y_Euler     ','     Y_org       ','     Absolute error'

    do i=0,n
    print*,i,X(i),Y(i),Y_org(i),Y(i)-Y_org(i)
    enddo

    open(1,file='Euler.txt')
    do i=0,n
        write(1,*)X(i),Y(i),f(X(i))
    end do
    close(1)
    a='Ram'
    b='Shyam'
    c='Mohan'
    print*, a,b,c
    open(1,file="name")
    write(1,*)a,b,c
end program Euler

real function f(x)
f= x - 0.5*exp(x) + 1
end function f
