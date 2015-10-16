c  Método de Newton-Raphson 
c f(x) = x² - x - 6		f(2)=0		x0=1.5
c eps = 0.001

 	integer i
	real*8 eps,precisao,xo,x,xantes
	eps=1.0D-3
	xo=1.5D0
	x=xo	
	precisao = 2.0D0
	i=1

	do while(precisao > eps)
		xantes = x
		x = (x**2+6)/(2*x-1)
		print*, "i = ", i,"x = ", x

		precisao = ABS (x - xantes)
		i = i + 1
	
	end do
	print*, "Valor Aproximado = ", x
	print*, "contador = ", i	

	end

C	phi(x) = (x²+6)/(2*x-1)
