C Dalton Lima & Stefany Lacroux
C 1.Calcule ao menos uma raiz real das equações
C a) f(x) = x² - 3 com epsilon <= (10 ^-6)
	
 	integer i
	real*8 xa, xb, resultado, media, eps, precisao
C	xa=1.0D0
C	xb=2.0D0 
	xa=2.0D0
	xb=1.0D0
	precisao = 2.0D0 ! A precisao é "grande" para podermos entrar no while
	eps = 1.0D-6
	i=1

	do while( precisao > eps )
		media = ( xa + xb ) / 2  ! media do intervalo
		resultado = (media**2) -3 
C gt = greater then / resultado "greater then" ZERO
		if (resultado.gt.0) then  ! media maior tomamos o intervalo a direita
			xa = media ! Se positivo
		else
			xb = media ! Se negativo
		end if

		print*, "i = ", i , "xa = ", xa, "xb = ",xb ! somente para contar iteracoes
		print*, "media= ", media, "f(x) = ", resultado

		i = i + 1
		precisao = ABS(xb-xa)
C		precisao = ABS(xb+xa)! para encontrar o ponto intermediario entre xa e xb 	

	end do
C	print*, "Valor Aproximado = ", x
C	print*, "contador = ", i	

	end

C	phi(x) = (x²+6)/(2*x-1)
