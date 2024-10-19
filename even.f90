program even
implicit none
integer ::i,ni,nf
print*, "enter initial no. and final no."
read(*,*) ni,nf
if (Mod(ni,2).eq.0) then
    ni=ni
else
    ni=ni+1
end if
do i=ni,nf,2
    print*,"even no. bet ween the input",i
end do
end program even
