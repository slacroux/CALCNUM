c Stefany Lacroux - Calculo ERRO - 08/10
c Calcule o erro do programa que calcula a série de Taylor

c Faça um programa (em Fotran) que calcule a série de Taylor:  e^x = 1 + x + x²/2 + x³/3 

	program aulaDois
	integer input, ordem, i
	real*8 e, erro, resultado, valor
	
	e = 2.71868182845905
	resultado = 1.0D0	
	
	print *, 'Entre com a ordem: '
	read(*,*) ordem
	
	do i=1,ordem-1
                input = i
		call factorial(input)
		resultado = resultado + (1.0D0/dfloat(input))
	end do
	
	print *,resultado
	read(*,*)
	erro = e - resultado
	print *,erro
	
	end program
	
     	subroutine factorial(n)
		integer aux, j

	   	aux = 1.0D0

	   	do j=1,n
	       		aux = aux*(j)
	   	end do
	   
		n = aux

	return
	end 

