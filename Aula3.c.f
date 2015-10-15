c Exercício 3: Erro de arredondamento Calcula raiz de 2 - valor real 1.41421356

	real*8 raizs, raizd, erros, errod
	

	raizs =	sqrt(2.0D0)
	raizd = dsqrt(2.0D0)
	
	print*,raizs
	print*,raizd	
	erros = raizs - 1.41421356
	errod = raizd - 1.41421356
	print*,erros
	print*,errod

	end
