program aa
        integer*8 i
        real*8 x1,x2,x3,x4,dx1,dx2,dx3,dx4,dt,om1,om2 
        parameter(om1=0.2,om2=1.,dt=1e-2)
        open(1,file='aa')
        x1=1.
        x2=1.
        x3=1.
        x4=1.
        do j=1,10
        do i=1,1000
        dx1=x2
        dx2=x4
        dx3=(-om1*j-om2)*x1+om2*x2
        dx4=om2*x1+(-om1*j-om2)*x2
        write(1,*) x1,x2
        x1=x1+dx1*dt
        x2=x2+dx2*dt
        enddo
        write(1,*)''
        enddo
        end
