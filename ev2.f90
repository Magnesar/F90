program ev2
implicit none
integer::i,ni,nf,a
print*,"eneter ni and nf"
read(*,*)ni,nf
if (Mod(nf,2).eq.1) then
    nf=nf-1
end if
do i=ni,nf,2
    if (Mod(i,2).eq.0) then
        a=i
    else
        a=i+1
    end if
    print*,a

end do
end program ev2
