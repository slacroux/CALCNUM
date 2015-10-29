C Dalton Lima & Stefany Lacroux
C 1.Calcule ao menos uma raiz real das equações
C a) f(x) = e^x + cos(x) - 3 com epsilon <= (10 ^-6)
	
 	integer i
	real*8 xa, xb, resultado, media, eps, precisao
	xa=1.0D0  ! f(x) deve ser positivo
	xb=0.0D0  ! f(x) deve ser negativo
	precisao = 2.0D0 ! A precisao é "grande" para podermos entrar no while
	eps = 1.0D-6
	i=1

	do while( precisao > eps )
		media = ( xa + xb ) / 2  ! media do intervalo
		resultado = ( exp(media) ) + (COS (media)) - 3 
		
		if (resultado.gt.0) then  ! media maior tomamos o intervalo a direita
			xa = media ! Se positivo
		else
			xb = media ! Se negativo
		end if

		print*, "i = ", i , "xa = ", xa, "xb = ",xb ! somente para contar iteracoes
		print*, "media= ", media, "f(x) = ", resultado

		i = i + 1
		precisao = ABS(xb-xa)

	end do
C	print*, "Valor Aproximado = ", x
C	print*, "contador = ", i	

	end
