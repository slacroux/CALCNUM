c  Método das bissecções 

 	integer i
	real*8 xa, xb, resultado, media
	xa=0.8D0
	xb=1.0D0
	precisao = 2.0D0
	eps = 1.0D-3
	i=1
C f(x) = 2 *(cos x) - (e^2)/2
	do while( precisao > eps )
		media = ( xa + xb ) / 2  ! media do intervalo
		resultado = 2 *(cos (media)) - (exp(media))/2 

		if (resultado.gt.0) then  ! media maior tomamos o intervalo a direita
			xa = media
		else
			xb = media
		end if

		print*, "i = ", i , "xa = ", xa, "xb = ",xb ! somente para contar iteracoes
		print*, "media= ", media, "f(x) = ", resultado

		i = i + 1
		precisao = xb-xa
	
	end do
C	print*, "Valor Aproximado = ", x
C	print*, "contador = ", i	

	end

C	phi(x) = (x²+6)/(2*x-1)
