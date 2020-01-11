
# Système climatique: Normales et extrêmes

## Sujet

Le but de ce sujet est d'étudier comment construire des "normales" et quantifier des évènements "extrêmes" sur la France et dans différentes villes. (Marseille, Brest et Briancon).


## Description

- Un notebook python et sa correction,
- Un script shell `install.sh` qui permet d'installer les modules python necessaires,
- un dossier data contenant les séries temporelles au format pickle (non portable),
- un dossier `build_data` qui contient les données au format netcdf (portable), ainsi qu'un script python qui génère le fichier pickle ci-dessus.


## Installation

Les librairies python suivantes sont necessaires pour utiliser le notebook:
- `numpy`
- `scipy`
- `matplotlib`
- `pandas`
- `xarray`
- `cftime`
- `jupyter-notebook`
- `cartopy`: en option, permet d'afficher une carte de la France et l'emplacement des séries temporelles. 

Ces librairies peuvent être installées en shell avec la commande:

```
pip3 install --user nom_du_package
```

Le script install.sh lance automatiquement ces installations. Pour l'executer en shell:

- `chmod +x install.sh`
- `./install.sh`

Finalement, executer `jupyter notebook` en shell et selectionner le TP.

## Reconstruction des données à partir de EOBS

Les données sont extraites de la base de données d'observations [EOBS](http://surfobs.climate.copernicus.eu/dataaccess/access_eobs.php). Le repertoire `build_data` contient les scripts necessaires pour reconstruire les données:
- Dans le script `extract_from_EOBS.sh` donner à la variable `PATHIN` le chemin vers le jeu de données EOBS, et à la variable `EOBSTG` le nom du fichier.
- Executer le script `extract_from_EOBS.sh`
- Executer le script python `nc_to_pk.py`
