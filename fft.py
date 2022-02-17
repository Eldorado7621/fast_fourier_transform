#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Feb 17 17:46:31 2022

@author: sam
"""

import numpy as np
import matplotlib.pyplot as plt


#sampling frequency
fs=2000
t_step=1/fs #sample time interval
f_signal=100 #signal frequency

N=10*int(fs/f_signal)

t=np.linspace(0,(N-1)*t_step,N) #time steps

f_steps=np.linspace(0,(N-1)*f_signal,N)

y=1*np.sin(2*np.pi*f_signal*t)+2*np.cos(2*np.pi*3*f_signal*t)


#perform fft
x=np.fft.fft(y)
x_mag=np.abs(x)/N

f_plot=f_steps[0:int(N/2+1)]
x_mag_plot=2*x_mag[0:int(N/2+1)]
x_mag_plot[0]=x_mag_plot[0]/2

#f_plot=f



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
np.savetxt("inp_cpp.txt", y, fmt = "%f %f")
np.savetxt("out_cpp.txt", x, fmt = "%f %f")

#save the generated data in hex format
dump_mem("inp_hex.mem", y)
dump_mem("out_hex.mem", x)


#plot
fig,[ax1,ax2]=plt.subplots(2,1)
ax1.plot(t,y,'.-')
#ax2.plot(f_steps,x_mag,'.-')

ax2.plot(f_plot,x_mag_plot,'.-')
plt.show()