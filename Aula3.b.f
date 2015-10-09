c Calcule a area de uma circunferencia de raio 100m para:
c phi = 3.14 - phi = 3.1416 ....


       real*8 area,r

       write(*,10)
10     format(' Digite o valor do raio')
       read(*,11) r
11     format(F4.1)

       print*, r
       write (*,11) r
       write (*,*)
       print*,r
	
	area = 3.1415D0 *r ** 2

       write(*,12)r,area
12     format('raio: ', F4.1, 1X, 'area',F6.2)
       write(1,12)r,area
       read(*,*)
       END
       





