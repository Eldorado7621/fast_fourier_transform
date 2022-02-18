#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Feb 17 17:46:31 2022

@author: sam
"""

import numpy as np
import random, sys
import matplotlib.pyplot as plt


#sampling frequency
fs=2000
t_step=1/fs #sample time interval
f_signal=100 #signal frequency

N=10*int(fs/f_signal)

t=np.linspace(0,(N-1)*t_step,N) #time steps

f_steps=np.linspace(0,(N-1)*f_signal,N)

#create the signal- I will  be creating 3 different signals
#the first is a sine wave
y1=1*np.sin(2*np.pi*f_signal*t)


#the second signal
y2=1*np.sin(2*np.pi*f_signal*t)+2*np.sin(2*np.pi*3*f_signal*t)

#the third signal
np.random.seed(0)   # start from known state
y3   = np.array([(np.random.randn()+1j*np.random.randn()) for i in range(N)])

#perform fft on the three signals
x1=np.fft.fft(y1)
x1_mag=np.abs(x1)/N

x2=np.fft.fft(y2)
x2_mag=np.abs(x2)/N

x3 = np.fft.fft(y3)



#converts the data to 8 bit hex format 
def get_hex(value, fmt="{:04x}"):
	if value < 0:
		c = 2**16 + value
	else:
		c = value
	return fmt.format(c.astype(int))

#creates a dump file 
def dump_mem(filename, x):
	with open(filename, "w") as f:
		for val in x:
			dr = get_hex(val.real*(2**8))
			di = get_hex(val.imag*(2**8))
			f.write(di+dr+"\n")

#save the generated data as text file in floating point format  
np.savetxt("inp_cpp.txt", y1, fmt = "%f %f")
np.savetxt("out_cpp.txt", x1, fmt = "%f %f")

#save the generated data in hex format
dump_mem("inp_hex.mem", y1)
dump_mem("out_hex.mem", x1)


#plot
f_plot=f_steps[0:int(N/2+1)]
x1_mag_plot=2*x1_mag[0:int(N/2+1)]
x1_mag_plot[0]=x1_mag_plot[0]/2

x2_mag_plot=2*x2_mag[0:int(N/2+1)]
x2_mag_plot[0]=x2_mag_plot[0]/2


fig,[ax1,ax2]=plt.subplots(2,1)
ax1.plot(t,y1,'.-')
#ax2.plot(f_steps,x_mag,'.-')

ax2.plot(f_plot,x1_mag_plot,'.-')
plt.show()