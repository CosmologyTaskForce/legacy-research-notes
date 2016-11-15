# IPython log file

from scipy.integrate import odeint
from pylab import *
import numpy as np
from sympy import *

# Parameters

#a =  Symbol('a')
H0 = Symbol('H0')
Omegam0 = Symbol('Omegam0')
Omegar0 = Symbol('Omegar0')
Omegax0 = Symbol('Omegax0')
d2 = Symbol('d2')



# Functions

def hubblel(a):
    return H0*sqrt(Omegam0*a**(-3)+Omegar0*a**(-4)+Omegax0)

def hubblel1(a):
    return H0*(-3*Omegam0*a**(-4)-4*Omegar0*a**(-5))/(2*sqrt(Omegam0*a**(-3)+Omegar0*a**(-4)+Omegax0))

def hubble(a):
   return H0*sqrt((27*(Omegam0*a**(-3))**4 + (27*13*Omegax0 - 3*d2)*(Omegam0*a**(-3))**3 + (9*12*15*Omegax0**2 - 24*d2*Omegax0)*(Omegam0*a**(-3))**2 + (21*12**2*Omegax0**3 - 12*4*d2*Omegax0**2)*(Omegam0*a**(-3)) + Omegax0*(12*Omegax0)**3 + Omegar0*a**(-4)*(27*(Omegam0*a**(-3))**3 + (12*Omegax0)**3 + 3*(3*Omegam0*a**(-3))**2*12*Omegax0 + 3*(12*Omegax0)**2*3*Omegam0*a**(-3)))/(27*(Omegam0*a**(-3))**3 + 27*12*Omegax0*(Omegam0*a**(-3))**2 + (9*12**2*Omegax0**2 - 3*d2*Omegam0**2 - 54*d2*Omegam0**2)*Omegam0*a**(-3) + (12*Omegax0)**3 - 12*d2*Omegam0**2*Omegax0))


#def hubble1(a):
#   return diff(hubble(a),a)

def hubble1(a):
   return -(3.0*H0*(Omegam0 + 4.0*a**3*Omegax0)*(81.0*a*Omegam0**6 + 108.0*Omegam0**5*Omegar0 + 1620.0*a**4*Omegam0**5*Omegax0 + 2160.0*a**3*Omegam0**4*Omegar0*Omegax0 - 9.0*a**7*Omegam0**4*(57.0*d2*Omegam0**2 + 4.0*d2*Omegax0 - 1440.0*Omegax0**2) - 72.0*a**9*Omegam0**2*Omegar0*Omegax0*(37.0*d2*Omegam0*2 - 960.0*Omegax0**2) - 30.0*a**6*Omegam0**3*Omegar0*(19.0*d2*Omegam0**2 - 576.0*Omegax0**2) - 1728.0*a**12*Omegam0*Omegar0*Omegax0**2*(d2*Omegam0**2 - 80.0*Omegax0**2) + 768.0*a**15*Omegar0*Omegax0**3*(-d2*Omegam0**2 + 144.0*Omegax0**2) + 16.0*a**16*Omegam0*Omegax0**2*(d2**2*Omegam0**2 + 36.0*d2*(3.0*Omegam0**2 - 4.0*Omegax0)*Omegax0 +5184.0*Omegax0**3) + 12.0*a**13.0*Omegam0**2*Omegax0*(d2**2*Omegam0**2 + 8640.0*Omegax0**3 - 18.0*d2*Omegax0*(7.0*Omegam0**2 + 8*Omegax0)) + 2.0*a**10*Omegam0**3*(19.0*d2**2*Omegam0**2 + 25920.0*Omegax0**3 - 27.0*d2*Omegax0*(47.0*Omegam0**2 + 8.0*Omegax0))))/(2.0*a**5*sqrt(-((Omegam0 + 4.0*a**3*Omegax0)**2*(9.0*a*Omegam0**2 + 9.0*Omegam0*Omegar0 - a**4*Omegam0*(d2 - 45.0*Omegax0) + 36.0*a**3*Omegar0*Omegax0 + 36.0*a**7*Omegax0**2))/(a**4*((-9.0 + 19.0*a**6*d2)*Omegam0**3 +4.0*a**3*(-27.0+ a**6*d2)*Omegam0**2*Omegax0 - 432.0*a**6*Omegam0*Omegax0**2 - 576.0*a**9*Omegax0**3)))*((-9.0 + 19.0*a**6*d2)*Omegam0**3 + 4.0*a**3*(-27.0 + a**6*d2)*Omegam0**2*Omegax0 - 432.0*a**6*Omegam0*Omegax0**2 -576.0*a**9*Omegax0**3)**2)

# Numerical

Omegam0 = 0.27
Omegar0 = 8.09*10**(-5)
Omegax0 = 0.73
H0 = 71.0
d2 = -25.1262

