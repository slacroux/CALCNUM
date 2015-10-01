	program aulaDois

c Media, variancia e desvio-padrão de um conjunto de dados
c
      REAL*8 m, x, var, d, soma1, soma2
      Integer n
      OPEN (1, FILE = 'dados.dat', status = 'unknown')
c
c	Entrada
      write(*,10)
10    FORMAT('Entre no. de dados')
      READ(*,11)n
11    FORMAT(I3)
      print *, n
      soma1 = 0.0D0
      soma2 = 0.D0
	DO 1 i=1,n
	  Write(*,12)
12	  FORMAT('Entre com o valor de x: ')
	  READ(*, 13)x
13	  FORMAT(F6.1)
          soma1 = soma1 + x
1	  soma2 = soma2 + x**2
c	CALCULADOSAJ
      m = soma1 / dfloat(n)
      var = (soma2 - m**2/dble(n))
      d = dsqrt(var)
20    format('A media e: ',f6.1)
      print 20,m
21    format('A variancia e: ', f6.1)
      print 21,d
      READ(*,*)
          
      end program	 

