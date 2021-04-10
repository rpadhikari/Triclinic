program main
  implicit none
  integer(2) i
  real(8) a, b, c, alpha, beta, gamma
  real(8) v1(3), v2(3), v3(3)
  real(8), parameter :: pi=3.1415926535897932
  open(1, file='in.dat',action='read', status='old')
  read(1,*) a, b, c, alpha, beta, gamma
  close(1)
  alpha=alpha*pi/180.0d0
  beta=beta*pi/180.0d0
  gamma=gamma*pi/180.0d0
  call v01(a, b, c, alpha, beta, gamma, v1)
  call v02(a, b, c, alpha, beta, gamma, v2)
  call v03(a, b, c, alpha, beta, gamma, v3)
  write(*,10) (v1(i), i=1, 3)
  write(*,10) (v2(i), i=1, 3)
  write(*,10) (v3(i), i=1, 3)
  10 format(3f18.10)
end program main

