subroutine v03(a, b, c, alpha, beta, gamma, v3)
  implicit none
  real(8) a, b, c, alpha, beta, gamma
  real(8) v3(3)
  v3(1)= c*cos(beta)
  v3(2)= c*(cos(alpha)-cos(beta)*cos(gamma))/sin(gamma)
  v3(3) = c*sqrt(1.0d0+2.0d0*cos(alpha)*cos(beta)*cos(gamma)-&
          cos(alpha)**2-cos(beta)**2-cos(gamma)**2)/sin(gamma)
end subroutine v03

