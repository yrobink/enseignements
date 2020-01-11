#!/bin/sh

PATHIN= ## Chemin vers EOBS
#EOBSTG="tg_ens_mean_0.1deg_reg_v19.0e.nc" ## Nom d'EOBS



## Extract Strasbourg
#cdo sellonlatbox,7.6,7.7,48.4,48.6 $PATHIN/$EOBSTG EOBS_tg_around_Strasbourg.nc
#cdo fldmean EOBS_tg_around_Strasbourg.nc EOBS_tg_Strasbourg.nc
#cdo del29feb EOBS_tg_Strasbourg.nc EOBS_tg_Strasbourg_noleap.nc
#rm -f EOBS_tg_around_Strasbourg.nc
#rm -f EOBS_tg_Strasbourg.nc
#
## Extract Toulouse
#cdo sellonlatbox,1.3,1.5,43.5,43.8 $PATHIN/$EOBSTG EOBS_tg_around_Toulouse.nc
#cdo fldmean EOBS_tg_around_Toulouse.nc EOBS_tg_Toulouse.nc
#cdo del29feb EOBS_tg_Toulouse.nc EOBS_tg_Toulouse_noleap.nc
#rm -f EOBS_tg_around_Toulouse.nc
#rm -f EOBS_tg_Toulouse.nc
#
### Extract Mourmelon
#cdo sellonlatbox,4.3,4.5,49,49.2 $PATHIN/$EOBSTG EOBS_tg_around_Mourmelon.nc
#cdo fldmean EOBS_tg_around_Mourmelon.nc EOBS_tg_Mourmelon.nc
#cdo del29feb EOBS_tg_Mourmelon.nc EOBS_tg_Mourmelon_noleap.nc
#rm -f EOBS_tg_around_Mourmelon.nc
#rm -f EOBS_tg_Mourmelon.nc

## Extract Brest
cdo sellonlatbox,-4.6,-4.4,48.3,48.5 $PATHIN/$EOBSTG EOBS_tg_around_Brest.nc
cdo fldmean EOBS_tg_around_Brest.nc EOBS_tg_Brest.nc
cdo del29feb EOBS_tg_Brest.nc EOBS_tg_Brest_noleap.nc
rm -f EOBS_tg_around_Brest.nc
rm -f EOBS_tg_Brest.nc

## Extract France
cdo sellonlatbox,-5,8,42,51 $PATHIN/$EOBSTG EOBS_tg_around_France.nc
cdo fldmean EOBS_tg_around_France.nc EOBS_tg_France.nc
cdo del29feb EOBS_tg_France.nc EOBS_tg_France_noleap.nc
rm -f EOBS_tg_around_France.nc
rm -f EOBS_tg_France.nc

## Extract Marseille
CITY="Marseille"
BOX="5.2,5.4,43,44"
cdo sellonlatbox,$BOX $PATHIN/$EOBSTG EOBS_tg_around_$CITY.nc
cdo fldmean EOBS_tg_around_$CITY.nc EOBS_tg_$CITY.nc
cdo del29feb EOBS_tg_$CITY.nc EOBS_tg_$CITY"_noleap.nc"
rm -f EOBS_tg_around_$CITY.nc
rm -f EOBS_tg_$CITY.nc

## Extract Calais
#CITY="Calais"
#BOX="1.8,2,50,52"
#cdo sellonlatbox,$BOX $PATHIN/$EOBSTG EOBS_tg_around_$CITY.nc
#cdo fldmean EOBS_tg_around_$CITY.nc EOBS_tg_$CITY.nc
#cdo del29feb EOBS_tg_$CITY.nc EOBS_tg_$CITY"_noleap.nc"
#rm -f EOBS_tg_around_$CITY.nc
#rm -f EOBS_tg_$CITY.nc

## Extract Paris
#CITY="Paris"
#BOX="2.3,2.4,48.7,48.9"
#cdo sellonlatbox,$BOX $PATHIN/$EOBSTG EOBS_tg_around_$CITY.nc
#cdo fldmean EOBS_tg_around_$CITY.nc EOBS_tg_$CITY.nc
#cdo del29feb EOBS_tg_$CITY.nc EOBS_tg_$CITY"_noleap.nc"
#rm -f EOBS_tg_around_$CITY.nc
#rm -f EOBS_tg_$CITY.nc

## Extract Clermont
#CITY="Clermont"
#BOX="2.5,3.5,45.5,46.5"
#cdo sellonlatbox,$BOX $PATHIN/$EOBSTG EOBS_tg_around_$CITY.nc
#cdo fldmean EOBS_tg_around_$CITY.nc EOBS_tg_$CITY.nc
#cdo del29feb EOBS_tg_$CITY.nc EOBS_tg_$CITY"_noleap.nc"
#rm -f EOBS_tg_around_$CITY.nc
#rm -f EOBS_tg_$CITY.nc


## Extract Briancon
CITY="Briancon"
BOX="6,7,44.5,45.5"
cdo sellonlatbox,$BOX $PATHIN/$EOBSTG EOBS_tg_around_$CITY.nc
cdo fldmean EOBS_tg_around_$CITY.nc EOBS_tg_$CITY.nc
cdo del29feb EOBS_tg_$CITY.nc EOBS_tg_$CITY"_noleap.nc"
rm -f EOBS_tg_around_$CITY.nc
rm -f EOBS_tg_$CITY.nc


