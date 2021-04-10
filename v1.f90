subroutine v00(a, b, c, alpha, beta, gamma, v1, v2, v3)
  implicit none
  real(8) a, b, c, alpha, beta, gamma
  real(8) v1(3)
  v1=0.0d0
  v2=0.0d0
  v3=0.0d0
  v1(1) = a
  v2(1)= b*cos(gamma)
  v2(2)= b*sin(gamma)
   v3(1)= c*cos(beta)
  v3(2)= c*(cos(alpha)-cos(beta)*cos(gamma))/sin(gamma)
  v3(3) = c*sqrt(1.0d0+2.0d0*cos(alpha)*cos(beta)*cos(gamma)-&
          cos(alpha)**2-cos(beta)**2-cos(gamma)**2)/sin(gamma)
end subroutine v00

  
