* Encoding: UTF-8.
TESIS 2024

PASO 3


Tabla 77 – Tabla de países que expresan alguna preferencia en las materias del núcleo negociador (n = 164 casos)

FREQUENCIES VARIABLES=DOCS_alguna_fuente_disponible
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=Reglamentación_Expresión_Docs_y_Actas
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=Aranceles_Expresión_Docs_y_Actas
  /ORDER=ANALYSIS.

CROSSTABS
  /TABLES=Reglamentación_Expresión_Docs_y_Actas BY Aranceles_Expresión_Docs_y_Actas
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT ROW
  /COUNT ROUND CELL.

Tabla 78 – Tablas de consistencia de países de membresía de la IDCCE en M2 según preferencias sobre la duración de la moratoria arancelaria (dicotómica, n = 164 casos)
Tabla 79 – Tabla de consistencia países de membresía de la IDCCE en M2 según preferencias sobre el derecho reglamentario (dicotómica, n = 164 casos)

CROSSTABS
  /TABLES=GTCEm2 BY Aranceles_Duración_Inicial_DICO Reglamentación_Inicial_DICO
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

Tabla 86 - Frecuencia en preferencias iniciales sobre Reglamentaciones estatales de las transferencias de datos (n = 138 casos)

FREQUENCIES VARIABLES=Reglamentación_Estándares_Inicial_ORD
  /ORDER=ANALYSIS.

Tabla 87 – Tabla de consistencia de membresía de la IDCCE en M1, M2 y M3 según preferencias estatales sobre Reglamentaciones estatales de las transferencias de datos (hasta 2020) (ordinal, n = 138)

CROSSTABS
  /TABLES=GTCEcrono BY Reglamentación_Estándares_Inicial_ORD 
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

Tabla 88 – Resumen del modelo basado en preferencias sobre el derecho a reglamentar los flujos de datos (dicotómica, n = 97)
Tabla 89 – Tabla de clasificación del modelo basado en preferencias sobre el derecho a reglamentar los flujos de datos (dicotómica, n = 97)
Tabla 90 – Variables del modelo basado en preferencias sobre el derecho a reglamentar los flujos de datos (dicotómica, n = 97)


(Filtro de 97 casos con estándares ofensivos o defensivos, eliminando ambiguos)

USE ALL.
COMPUTE filter_$=(Reglamentación_Inicial_DICO <= 1).
VARIABLE LABELS filter_$ 'Reglamentación_Inicial_DICO <= 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DATASET ACTIVATE ConjuntoDatos1.
LOGISTIC REGRESSION VARIABLES GTCEm2
  /METHOD=ENTER Reglamentación_Inicial_DICO 
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20) CUT(.5).

Tabla 91 - Frecuencia de preferencias iniciales sobre duración de moratoria (ordinal, n = 138)

DATASET ACTIVATE ConjuntoDatos1.
USE ALL.
COMPUTE filter_$=(DOCS_alguna_fuente_disponible = 1).
VARIABLE LABELS filter_$ 'DOCS_alguna_fuente_disponible = 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=Aranceles_duración_Inicial_ORD
  /ORDER=ANALYSIS.

Tabla 92 - Frecuencia de preferencias iniciales sobre alcance de moratoria (ordinal, n = 138)

FREQUENCIES VARIABLES=Aranceles_alcance_Inicial_ORD
  /ORDER=ANALYSIS.

Tabla 93 – Tabla de consistencia que combina duración y alcance de la moratoria (hasta 2020) (cruce de ordinales, n = 138)

CROSSTABS
  /TABLES=Aranceles_duración_Inicial_ORD BY Aranceles_alcance_Inicial_ORD
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=Aranceles_alcance_Inicial_ORD BY Aranceles_duración_Inicial_ORD
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

Tabla 94 – Tabla de consistencia de membresía de la IDCCE en M1, M2 y M3 según preferencias estatales sobre duración de la moratoria arancelaria (hasta 2020) (ordinal y longitudinal, n = 138)

CROSSTABS
  /TABLES=GTCEcrono BY Aranceles_duración_Inicial_ORD 
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

Tabla 95 – Tabla de consistencia de membresía histórica de la IDCCE (M1, M2 y M3) según preferencias estatales sobre alcance de la moratoria arancelaria (hasta 2020) (ordinal y longitudinal, n = 138)

CROSSTABS
  /TABLES=GTCEcrono BY Aranceles_alcance_Inicial_ORD 
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

Tabla 96 – Resumen del modelo basado en preferencias sobre la moratoria (dicotómica, n = 123 para la duración y 125 para el alcance)
Tabla 97 – Tabla de clasificación del modelo basado en preferencias sobre la moratoria (dicotómica, n = 123 para la duración y 125 para el alcance)
Tabla 98 – Variables del modelo basado en preferencias sobre la moratoria (dicotómica, n = 123 para la duración y 125 para el alcance)


(Filtro de 125 casos sobre alcance con estándares ofensivos o defensivos)

USE ALL.
COMPUTE filter_$=(Aranceles_alcance_Inicial_DICO <= 1).
VARIABLE LABELS filter_$ 'Aranceles_alcance_Inicial_DICO <= 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

(Filtro de 123 sobre duración con estándares ofensivos o defensivos)

USE ALL.
COMPUTE filter_$=(Aranceles_duración_Inicial_DICO <= 1).
VARIABLE LABELS filter_$ 'Aranceles_duración_Inicial_DICO <= 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DATASET ACTIVATE ConjuntoDatos1.
LOGISTIC REGRESSION VARIABLES GTCEm2
  /METHOD=ENTER Aranceles_duración_Inicial_DICO 
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20) CUT(.5).

DATASET ACTIVATE ConjuntoDatos1.
LOGISTIC REGRESSION VARIABLES GTCEm2
  /METHOD=ENTER Aranceles_alcance_Inicial_DICO 
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20) CUT(.5).

Tabla 99 - Tabla sobre duración de moratoria arancelaria según desarrollo en gobierno digital (ordinal, n = 135)

USE ALL.
COMPUTE filter_$=(DOCS_alguna_fuente_disponible = 1).
VARIABLE LABELS filter_$ 'DOCS_alguna_fuente_disponible = 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CROSSTABS
  /TABLES=EGOV2020x2 BY Aranceles_duración_Inicial_ORD
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

Filtro para identificar a Praguay como outlier que tiene EGOV menor y quiere moratoria permanente

DATASET ACTIVATE ConjuntoDatos5.
USE ALL.
COMPUTE filter_$=(EGOV2020x2 = 0 & Aranceles_duración_Inicial_ORD = 6).
VARIABLE LABELS filter_$ 'EGOV2020x2 = 0 & Aranceles_duración_Inicial_ORD = 6 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

Tabla 100 - Tabla sobre alcance de moratoria arancelaria según desarrollo en gobierno digital (ordinal, n = 135)

CROSSTABS
  /TABLES=EGOV2020x2 BY Aranceles_alcance_Inicial_ORD
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

Tabla 101 - Tabla sobre duración de moratoria arancelaria según Densidad de red comercial (n = 138)

CROSSTABS
  /TABLES=Red_RTAx2ok BY Aranceles_duración_Inicial_ORD
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

Tabla 102 - Tabla sobre alcance de moratoria arancelaria según Densidad de red comercial (n = 138)

CROSSTABS
  /TABLES=Red_RTAx2ok BY Aranceles_alcance_Inicial_ORD
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

Tabla 107 - Frecuencia de nuevas preferencias estatales sobre la cuestión arancelaria (n = 138)

FREQUENCIES VARIABLES=Aranceles_BloqueDOC
  /ORDER=ANALYSIS.

Tabla 108 – Tabla de consistencia de preferencias estatales sobre la moratoria arancelaria contrastando las dos estructuras (2017-2020, 2020-2024) (n = 138)

CROSSTABS
  /TABLES=Aranceles_duración_Inicial_ORD BY Aranceles_BloqueDOC
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT ROW
  /COUNT ROUND CELL.

Tabla 109 – Tabla de consistencia de membresía de la IDCCE en M1, M2 y M3 según nuevas preferencias estatales sobre la moratoria arancelaria (hasta 2024) (n = 138)

CROSSTABS
  /TABLES=GTCEcrono BY Aranceles_BloqueDOC
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.








