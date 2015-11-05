C Bianca Privati, Dalton Lima & Stefany Lacroux novembro / 2015
C www.github.com/privati 
C Transforme a matriz aumentada em uma matriz triangular
C 		2 3 -1  5
C	B = 	4 4 -1  3
C		2 -3 1  -1
 	PROGRAM gauss
	integer i, j, n1
	real*8 pivo, a(3,4), m21, m31, m22, b(3,4), c(3,4), x, y, z
	a(1,1) = 2
	a(1,2) = 3
	a(1,3) = -1
	a(1,4) = 5
	a(2,1) = 4
	a(2,2) = 4
	a(2,3) = -3
	a(2,4) = 3
	a(3,1) = 2
	a(3,2) = -3
	a(3,3) = 1
	a(3,4) = -1

	do i=1,3
C		read(*,2) (a(i,j), j=1,4)
		write(*,2) (a(i,j), j=1,4) 
2		format (10 F8.0)
10		continue
	end do
	
C 	multiplicadores
	m21 = a(2,1) / a(1,1)
	m31 = a(3,1) / a(1,1)

C	Continhas
	do i=1,4
		b(1,i) = a(1,i)   ! somente copiando pra proxima matriz
		b(2,i) = ( m21 * a(1,i) ) - a(2,i)  ! aqui que a magica acontece
		b(3,i) = ( m31 * a(1,i) ) - a(3,i)  ! e aqui tb =)
	end do

C 	Debug - exibindo a segunda matriz
	print *, 'segunda matriz'
	do i=1,3
		write(*,3) (b(i,j), j=1,4) 
3		format (11 F8.0)
11		continue
	end do
	

	m22 = b(3,2) / b(2,2) ! multiplicador
C	Continhas
	do i=1,4
		c(1,i) = b(1,i)  ! somente copiando pra proxima matriz
		c(3,i) = ( m22 * b(2,i) ) - b(3,i)  ! adivinha?
		c(2,i) = b(2,i)  ! somente copiando pra proxima matriz
	end do

C 	Debug - exibindo a terceira matriz
	print *, 'terceira matriz'
	do i=1,3
		write(*,4) (c(i,j), j=1,4) 
4		format (12 F8.0)
12		continue
	end do

	z = c(3,4) / c(3,3)
	y = ( c(2,4) - z ) / c(2,2)
	x = ( (c(1,4) + z -( c(1,2) * y) ) / c(1,1) )

	print *, 'o resultado eh: ',x, y, z

	END PROGRAM
