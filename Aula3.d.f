c  Aritmetica de ponto flutuante
c Calcule x+y
c Erro de Truncamente = 0.9382D4

	real*8 x,y, exato, resultado

	x = 0.937D4
	y = 0.1272D2
	exato = 0.938272D4
	resultado = x + y
	
10	format(F4.0)	
	print 10,resultado
	
	end
