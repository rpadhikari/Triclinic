program main
  implicit none
  integer(2) i
  real(8) a, b, c, alpha, beta, gamma
  real(8), parameter :: a2b=0.5291770d0
  real(8) v1(3), v2(3), v3(3)
  real(8), parameter :: pi=3.14159265358979320d0
  open(1, file='in.dat',action='read', status='old')
  read(1,*) a, b, c, alpha, beta, gamma
  close(1)
  alpha=alpha*pi/180.0d0
  beta=beta*pi/180.0d0
  gamma=gamma*pi/180.0d0
  call v00(a, b, c, alpha, beta, gamma, v1, v2, v3)
  write(*,10) (v1(i), i=1, 3)
  write(*,10) (v2(i), i=1, 3)
  write(*,10) (v3(i), i=1, 3)
  write(*,*) ' vectors in fractional coordinates'
  write(*,10) (v1(i)/a, i=1, 3)
  write(*,10) (v2(i)/a, i=1, 3)
  write(*,10) (v3(i)/a, i=1, 3)
  write(*,*) 'value of celldm(1) = ', a/a2b 
  10 format(3f18.10)
end program main
