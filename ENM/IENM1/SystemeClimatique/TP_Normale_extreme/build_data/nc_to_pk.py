# -*- coding: utf-8 -*-

#############################
## Yoann Robin             ##
## yoann.robin.k@gmail.com ##
#############################

###############
## Libraries ##
##{{{

import sys,os
import pickle as pk
import multiprocessing as mp


## Scientific libraries
##=====================

import numpy as np
import scipy.stats as sc
import scipy.linalg as scl
import pandas as pd
import xarray as xr
import cftime as cf
import datetime as dt

## Plot libraries ##
##==================

##}}}
###############

###############
## Fonctions ##
###############

#############
## Classes ##
#############


##########
## main ##
##########

if __name__ == "__main__":
	
	cities = ["France","Brest","Marseille","Briancon"]
#	cities = ["France","Brest","Strasbourg","Mourmelon","Toulouse","Marseille","Calais","Paris","Clermont","Briancon"]
	dX = [ xr.open_dataset( "EOBS_tg_" + city + "_noleap.nc" ) for city in cities ]
	
	t_init = cf.DatetimeNoLeap(1950,1,1)
	time   = [ t_init + dt.timedelta(i) for i in range(70*365) ]
	S = np.stack( [X.tg.values.squeeze() for X in dX] ).T
	K = np.zeros( (len(time),4) ) + np.nan
	K[:S.shape[0],:] = S
	
	dY = xr.DataArray( K , dims = ["time","location"] , coords = [time,cities] )
	pk.dump( dY , open( "EOBS_tg.pk" , "wb" ) )
	
	print("Done")
