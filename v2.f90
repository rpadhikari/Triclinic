subroutine v02(a, b, c, alpha, beta, gamma, v2)
  implicit none
  real(8) a, b, c, alpha, beta, gamma
  real(8) v2(3)
  v2(1)= b*cos(gamma)
  v2(2)= b*sin(gamma)
  v2(3) = 0.0d0
end subroutine v02

  
