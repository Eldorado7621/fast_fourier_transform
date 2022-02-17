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

N=int(fs/f_signal)

t=np.linspace(0,(N-1)*t_step,N) #time steps

f_steps=np.linspace(0,(N-1)*f_signal,N)

y=1*np.sin(2*np.pi*f_signal*t)


#perform fft
x=np.fft.fft(y)
x_mag=np.abs(x)/N

f_plot=f_steps[0:int(N/2+1)]
x_mag_plot=2*x_mag[0:int(N/2+1)]
x_mag_plot[0]=x_mag_plot[0]/2

#f_plot=f


#plot
fig,[ax1,ax2]=plt.subplots(2,1)
ax1.plot(t,y,'.-')
#ax2.plot(f_steps,x_mag,'.-')

ax2.plot(f_plot,x_mag_plot,'.-')
plt.show()