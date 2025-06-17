* Encoding: UTF-8.
* Encoding: .

TESIS 2024

Sintaxis


    INTRODUCCION

Tabla 1 – Preferencias estatales en torno a los procesos plurilaterales sobre comercio electrónico en la OMC en 2017, 2019 y 2024

DATASET ACTIVATE ConjuntoDatos1.
FREQUENCIES VARIABLES=GTCEm1
  /ORDER=ANALYSIS.

DATASET ACTIVATE ConjuntoDatos1.
FREQUENCIES VARIABLES=GTCEm2
  /ORDER=ANALYSIS.

DATASET ACTIVATE ConjuntoDatos1.
FREQUENCIES VARIABLES=GTCEm3
  /ORDER=ANALYSIS.

    ESTRATEGIA METODOLÓGICA

Tabla 3 – Membresía del GTCE de la OMC a mediados de 2024 en poblaciones diferenciadas

DATASET ACTIVATE ConjuntoDatos2.
FREQUENCIES VARIABLES=GTCEmemberx2
  /ORDER=ANALYSIS.

Tabla 7 – Correlación entre covariables del Paso 1

CORRELATIONS 
  /VARIABLES=Densidadx2 EGOV2020x2 INCOMEx2 Red_RTAx3ok Red_ecRTAx3ok
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.



    CAPÌTULO 1
    
Análisis descriptivos
    
Análisis a partir del modelo de crecimiento económico y tecnológico

Tabla 15 – Coeficientes comparados de indicadores de capacidades materiales para población sincrónica o de interés (n═164)
Tabla 16 – Coeficientes comparados de indicadores de capacidades materiales para población diacrónica o de control (n═492)

DATASET ACTIVATE ConjuntoDatos1.
CROSSTABS
  /TABLES=GTCEm2 BY EGOV2020x2 Densidadx2 incomex2
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ PHI  
  /CELLS=COUNT COLUMNN
  /COUNT ROUND CELL
 
DATASET ACTIVATE ConjuntoDatos2.
CROSSTABS
  /TABLES=GTCEmemberx2 BY EGOV2020x2 Densidadx2 incomex2
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ PHI  
  /CELLS=COUNT COLUMNN
  /COUNT ROUND CELL
 
Tabla 17 – Tablas de consistencia para EGOV en M2 (ordinal, sincrónica, n═160)

DATASET ACTIVATE ConjuntoDatos1.
  CROSSTABS
  /TABLES=GTCEm2 BY EGOV2020x4
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ PHI  
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

Tabla 18 – Tablas de consistencia para EGOV en cualquier M (ordinal, diacrónica, n═480)

DATASET ACTIVATE ConjuntoDatos2.
  CROSSTABS
  /TABLES=GTCEmemberx2 BY EGOV2020x4 
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ PHI  
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

Tabla 19 - Tablas de consistencia para Densidad de Servidores Seguros en M2 (ordinal, sincrónica, n═137)

DATASET ACTIVATE ConjuntoDatos1.
  CROSSTABS
  /TABLES=GTCEm2 BY Densidadx4 
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ PHI  
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

Tabla 20 - Tablas de consistencia para Densidad de Servidores Seguros en cualquier M (ordinal, diacrónica, n═411)

DATASET ACTIVATE ConjuntoDatos2.
  CROSSTABS
  /TABLES=GTCEmemberx2 BY Densidadx4 
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ PHI  
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

Tabla 21 – Tablas de consistencia para ingreso nacional en M2 (ordinal, sincrónica, n═163)

DATASET ACTIVATE ConjuntoDatos1.
  CROSSTABS
  /TABLES=GTCEm2 BY incomex4
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ PHI  
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

Tabla 22 – Tablas de consistencia para ingreso nacional en cualquier M (ordinal, diacrónica, n═489)

DATASET ACTIVATE ConjuntoDatos2.
  CROSSTABS
  /TABLES=GTCEmemberx2 BY incomex4
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ PHI  
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

Tablas de consistencia con efectos de interacción 

Tabla 23 – Tablas de consistencia combinando los proxys de capacidades materiales

DATASET ACTIVATE ConjuntoDatos1.
  CROSSTABS
  /TABLES=GTCEm2  By Densidadx2 BY incomex2 BY EGOV2020x2
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ PHI  
  /CELLS= COUNT COLUMN
  /COUNT ROUND CELL.

Tabla 24 – Tablas de consistencia entre casos con ingreso nacional alto

DATASET ACTIVATE ConjuntoDatos1.
USE ALL.
COMPUTE filter_$=(filter_$OMC  & incomex4 = 3).
VARIABLE LABELS filter_$ 'filter_$OMC   & incomex4 = 3 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DATASET ACTIVATE ConjuntoDatos1.
  CROSSTABS
  /TABLES=GTCEm2  By Densidadx2 BY incomex2 BY EGOV2020x2
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ PHI  
  /CELLS= COUNT COLUMN
  /COUNT ROUND CELL.

(Si se quieren ver las frecuencias y no solo los porcentajes, la sintaxis es la siguiente)

DATASET ACTIVATE ConjuntoDatos1.
  CROSSTABS
  /TABLES=GTCEm2  By Densidadx2 BY incomex2 BY EGOV2020x2
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ PHI  
  /CELLS= COUNT COLUMN
  /COUNT ROUND CELL.

(Filtro para detectar a los dos outliers que suscriben al GTCE en M2 con alto ingreso nacional
 pero sin tener una mayor densidad de servidores: México y Perú)

DATASET ACTIVATE ConjuntoDatos1.
USE ALL.
COMPUTE filter_$=(EGOV2020x2 = 1 & incomex4 = 3 & Densidadx2 = 0 & GTCEm2 = 1).
VARIABLE LABELS filter_$ 'EGOV2020x2 = 1 & incomex4 = 3 & Densidadx2 = 0 & GTCEm2 = 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

(Filtro para detectar a los dos outliers que suscriben al GTCE en M2 con alto ingreso nacional
 pero sin tener una mayor densidad de servidores: México y Perú)

DATASET ACTIVATE ConjuntoDatos1.
USE ALL.
COMPUTE filter_$=(EGOV2020x2 = 1 & incomex4 = 3 & Densidadx2 = 0 & GTCEm2 = 1).
VARIABLE LABELS filter_$ 'EGOV2020x2 = 1 & incomex4 = 3 & Densidadx2 = 0 & GTCEm2 = 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

(Filtro para detectar al outlier que suscriben al GTCE en M2 con alto ingreso nacional
 pero sin tener una mayor densidad de servidores ni un mayor EGOV: Paraguay)
 
DATASET ACTIVATE ConjuntoDatos1.
USE ALL.
COMPUTE filter_$=(EGOV2020x2 = 0 & incomex4 = 3 & Densidadx2 = 0 & GTCEm2 = 1).
VARIABLE LABELS filter_$ 'EGOV2020x2 = 0 & incomex4 = 3 & Densidadx2 = 0 & GTCEm2 = 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


Análisis a partir del modelo estructurado según cuestiones

Tabla 25 - Coeficientes comparados de indicadores de ventajas institucionales para población sincrónica en M2 (n═164)
Tabla 26 - Coeficientes comparados de indicadores de ventajas institucionales para población diacrónica o de control en M1, M2 y M3 combinados (n═492)


DATASET ACTIVATE ConjuntoDatos1.
USE ALL.

DATASET ACTIVATE ConjuntoDatos1.
CROSSTABS
  /TABLES=GTCEm2 BY Red_RTAx2ok Red_ecRTAx2ok
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ PHI  
  /CELLS=COUNT COLUMNN
  /COUNT ROUND CELL
 
DATASET ACTIVATE ConjuntoDatos2.
CROSSTABS
  /TABLES=GTCEmemberx2 BY Red_RTAx2ok Red_ecRTAx2ok
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ PHI  
  /CELLS=COUNT COLUMNN
  /COUNT ROUND CELL
  
Tabla 27 – Tablas de consistencia para Red Comercial (ordinal, sincrónica, n═164)
Tabla 28 – Tablas de consistencia para Red Comercial Digital (ordinal, sincrónica, n═164)
Tabla 29 – Tablas de consistencia para Red Comercial (ordinal, diacrónica, n═492)
Tabla 30 – Tablas de consistencia para Red Comercial Digital (ordinal, diacrónica, n═492)

DATASET ACTIVATE ConjuntoDatos1.
CROSSTABS
  /TABLES=GTCEm2 BY   Red_RTAx4
  /STATISTICS=CHISQ PHI  
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

DATASET ACTIVATE ConjuntoDatos1.
CROSSTABS
  /TABLES=GTCEm2 BY  Red_ecRTAx4 
  /STATISTICS=CHISQ PHI  
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

DATASET ACTIVATE ConjuntoDatos2.
CROSSTABS
  /TABLES=GTCEmemberx2 BY  Red_RTAx4 
  /STATISTICS=CHISQ PHI  
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

DATASET ACTIVATE ConjuntoDatos2.
CROSSTABS
  /TABLES=GTCEmemberx2 BY  Red_ecRTAx4
  /STATISTICS=CHISQ PHI  
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

Tablas de consistencia con efectos de interacción 

Tabla 31 – Tablas de consistencia combinando proxys de ventajas institucionales (dicotómicas, n═164)
Tabla 32 – Tablas de consistencia combinando proxys de ventajas institucionales y filtrando categorías extremas de Comercio Digital (n═164)

DATASET ACTIVATE ConjuntoDatos1.
  CROSSTABS
  /TABLES=GTCEm2 BY Red_RTAx2ok BY Red_ecRTAx2ok
  /STATISTICS=CHISQ PHI  
  /CELLS= COUNT COLUMN
  /COUNT ROUND CELL.

DATASET ACTIVATE ConjuntoDatos1.
USE ALL.
COMPUTE filter_$=(Red_ecRTAx4 >= 1 & Red_ecRTAx4 <= 2).
VARIABLE LABELS filter_$ 'Red_ecRTAx4 >= 1 & Red_ecRTAx4 <= 2 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DATASET ACTIVATE ConjuntoDatos1.
CROSSTABS
  /TABLES=GTCEm2 BY Red_RTAx4 BY  Red_ecRTAx4 
  /STATISTICS=CHISQ PHI  
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

Filtro para identificar los tres outliers que tienen mayores ventajas en RC y RCD pero no participan en el IDCCE

USE ALL.
COMPUTE filter_$=(Red_RTAx2ok = 1 & Red_ecRTAx2ok = 1 & GTCEm2 = 0).
VARIABLE LABELS filter_$ 'Red_RTAx2ok = 1 & Red_ecRTAx2ok = 1 & GTCEm2 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

Análisis descriptivos a partir del modelo integrador

Tabla 33 – Tablas de consistencia del modelo integrador considerando desarrollo en gobierno digital y red comercial (excluyendo países con muy alto EGOV, n ═ 123)
Tabla 34 – Tablas de consistencia del modelo integrador considerando desarrollo en gobierno digital y red comercial digital (excluyendo países con muy alto EGOV, n ═ 123)
Tabla 35 – Tablas de consistencia del modelo integrador (dicotómicas, sincrónica, n═160)
Tabla 36 – Tablas de consistencia del modelo integrador (dicotómicas, diacrónica, n═480)

DATASET ACTIVATE ConjuntoDatos1.
USE ALL.
COMPUTE filter_$=(filter_$OMC   & EGOV2020x4 <= 2).
VARIABLE LABELS filter_$ 'filter_$OMC   & EGOV2020x4 <= 2 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DATASET ACTIVATE ConjuntoDatos1.
  CROSSTABS
  /TABLES=GTCEm2 BY EGOV2020x4 BY Red_RTAx2ok 
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ PHI 
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

DATASET ACTIVATE ConjuntoDatos1.
  CROSSTABS
  /TABLES=GTCEm2 BY EGOV2020x4  BY Red_ecRTAx2ok 
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ PHI 
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

Filtro para identificar outlier con bajo EGOV y menor RC y menor RCD (NIgeria) 

DATASET ACTIVATE ConjuntoDatos1.
USE ALL.
COMPUTE filter_$=(filter_$OMC  & EGOV2020x4 <= 1 & Red_RTAx2ok = 0 & GTCEm2 = 1).
VARIABLE LABELS filter_$ 'filter_$OMC   & EGOV2020x4 <= 1 & Red_RTAx2ok = 0 & GTCEm2 = 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

Filtro para identificar outlier con medio EGOV y menor RC y menor RCD (Mongolia) 

DATASET ACTIVATE ConjuntoDatos1.
USE ALL.
COMPUTE filter_$=(filter_$OMC  & EGOV2020x4 = 1 & Red_RTAx2ok = 0 & GTCEm2 = 1).
VARIABLE LABELS filter_$ 'filter_$OMC   & EGOV2020x4 = 1 & Red_RTAx2ok = 0 & GTCEm2 = 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

Filtro para identificar outlier con medio EGOV y menor RCD (Mongolia, Paraguay y Cambodia) 

DATASET ACTIVATE ConjuntoDatos1.
USE ALL.
COMPUTE filter_$=(filter_$OMC  & EGOV2020x4 = 1 & Red_ecRTAx2ok = 0 & GTCEm2 = 1).
VARIABLE LABELS filter_$ 'filter_$OMC   & EGOV2020x4 = 1 & Red_ecRTAx2ok = 0 & GTCEm2 = 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

Filtro para identificar 4 outliesr con bajo EGOV que optan por GTCE en M2: Honduras, Nigeria, Laos, Myanmar

DATASET ACTIVATE ConjuntoDatos1.
USE ALL.
COMPUTE filter_$=(filter_$OMC  & EGOV2020x4 = 0 & GTCEm2 = 1).
VARIABLE LABELS filter_$ 'filter_$OMC   & EGOV2020x4 = 0 & GTCEm2 = 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.



DATASET ACTIVATE ConjuntoDatos1.
USE ALL.


DATASET ACTIVATE ConjuntoDatos1.
  CROSSTABS
  /TABLES=GTCEm2 BY Red_RTAx2ok BY EGOV2020x2 
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ PHI 
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

Filtro para identificar 2 outliers (de 63) con menor EGOV y menor RC que optan por GTCE en M2: Mongolia y Nigeria

DATASET ACTIVATE ConjuntoDatos1.
USE ALL.
COMPUTE filter_$=(filter_$OMC  & EGOV2020x2 = 0 & GTCEm2 = 1 & Red_RTAx2ok = 0).
VARIABLE LABELS filter_$ 'filter_$OMC   & EGOV2020x2 = 0 & Red_RTAx2ok = 0& GTCEm2 = 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DATASET ACTIVATE ConjuntoDatos1.
USE ALL.




DATASET ACTIVATE ConjuntoDatos2.
  CROSSTABS
  /TABLES=GTCEmemberx2 BY Red_RTAx2ok BY EGOV2020x2 
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ PHI 
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

Filtro para identificar 6 outliers (de 192) con mayor EGOV y mayor RC que optan 
por no integrar el GTCE en ningún momento: Armenia (ni en M1, ni M2 ni M3) y Sudáfrica (ni en M1, ni M2 ni M3) 


DATASET ACTIVATE ConjuntoDatos2.
USE ALL.
COMPUTE filter_$=(EGOV2020x2 = 1 & GTCEmemberx2 = 0 & Red_RTAx2ok = 1).
VARIABLE LABELS filter_$ 'EGOV2020x2 = 1 & Red_RTAx2ok = 1 & GTCEmemberx2 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DATASET ACTIVATE ConjuntoDatos2.
USE ALL.


Análisis de regresión logística

Modelo de crecimiento tecno-económico 

Tabla 37 – Resumen del modelo de crecimiento tecno-económico (Función A, ambas poblaciones)
Tabla 38 – Tabla de clasificación del modelo de crecimiento tecno-económico (Función A, ambas poblaciones)
Tabla 39 – Variables en el tecno-económico (Función A, ambas poblaciones)
Tabla 40 – Resumen del modelo de crecimiento tecno-económico (Función B, ambas poblaciones)
Tabla 41 – Tabla de clasificación del modelo de crecimiento tecno-económico (Función B, ambas poblaciones)
Tabla 42 – Variables en el modelo de crecimiento tecno-económico (Función B, ambas poblaciones)
Tabla 43 – Resumen del modelo de crecimiento tecno-económico (Función C, ambas poblaciones)
Tabla 44 – Tabla de clasificación del modelo de crecimiento tecno-económico (Función C, ambas poblaciones)
Tabla 45 – Variables del modelo de crecimiento tecno-económico (Función C, ambas poblaciones)


DATASET ACTIVATE ConjuntoDatos1.
LOGISTIC REGRESSION VARIABLES GTCEm2
  /METHOD=ENTER EGOV2020x2 
  /CONTRAST (EGOV2020x2)=Indicator(1)
  /CONTRAST (INCOMEx2)=Indicator
  /CONTRAST (Densidadx2)=Indicator
  /CLASSPLOT
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

DATASET ACTIVATE ConjuntoDatos2.
LOGISTIC REGRESSION VARIABLES GTCEmemberx2
  /METHOD=ENTER EGOV2020x2 
  /CONTRAST (EGOV2020x2)=Indicator(1)
  /CONTRAST (INCOMEx2)=Indicator
  /CONTRAST (Densidadx2)=Indicator
  /CLASSPLOT
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

DATASET ACTIVATE ConjuntoDatos1.
LOGISTIC REGRESSION VARIABLES GTCEm2
  /METHOD=ENTER EGOV2020x2 Densidadx2 
  /CONTRAST (EGOV2020x2)=Indicator(1)
  /CONTRAST (INCOMEx2)=Indicator(1)
  /CONTRAST (Densidadx2)=Indicator(1)
  /CLASSPLOT
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

DATASET ACTIVATE ConjuntoDatos2.
LOGISTIC REGRESSION VARIABLES GTCEmemberx2
  /METHOD=ENTER EGOV2020x2 Densidadx2  
  /CONTRAST (EGOV2020x2)=Indicator(1)
  /CONTRAST (INCOMEx2)=Indicator
  /CONTRAST (Densidadx2)=Indicator
  /CLASSPLOT
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

DATASET ACTIVATE ConjuntoDatos1.
LOGISTIC REGRESSION VARIABLES GTCEm2
  /METHOD=ENTER Densidadx2*EGOV2020x2 
  /CONTRAST (EGOV2020x2)=Indicator(1)
  /CONTRAST (Densidadx2)=Indicator(1)
  /CLASSPLOT
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

DATASET ACTIVATE ConjuntoDatos2.
LOGISTIC REGRESSION VARIABLES GTCEmemberx2
  /METHOD=ENTER Densidadx2*EGOV2020x2 
  /CONTRAST (EGOV2020x2)=Indicator(1)
  /CONTRAST (Densidadx2)=Indicator(1)
  /CLASSPLOT
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

Modelo estructurado según cuestiones

Tabla 46 – Resumen del modelo estructurado según cuestiones (Función A, ambas poblaciones)
Tabla 47 – Tabla del modelo estructurado según cuestiones (Función A, ambas poblaciones)
Tabla 48 – Variables en el modelo estructurado según cuestiones (Función A, ambas poblaciones)
Tabla 49 – Resumen del modelo estructurado según cuestiones (Función B)
Tabla 50 – Tabla del modelo estructurado según cuestiones (Función B)
Tabla 51 – Variables en el modelo estructurado según cuestiones (Función B)
Tabla 52 – Resumen del modelo estructurado según cuestiones (Función C)
Tabla 53 – Tabla del modelo estructurado según cuestiones (Función C)
Tabla 54 – Variables en el modelo estructurado según cuestiones (Función C)

DATASET ACTIVATE ConjuntoDatos1.
LOGISTIC REGRESSION VARIABLES GTCEm2
  /METHOD=ENTER Red_RTAx2ok
  /CONTRAST (Red_ecRTAx2ok)=Indicator(1)
  /CONTRAST (Red_RTAx2ok)=Indicator(1)
  /CLASSPLOT
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

DATASET ACTIVATE ConjuntoDatos2.
LOGISTIC REGRESSION VARIABLES GTCEmemberx2
  /METHOD=ENTER Red_RTAx2ok
  /CONTRAST (Red_ecRTAx2ok)=Indicator(1)
  /CONTRAST (Red_RTAx2ok)=Indicator(1)
  /CLASSPLOT
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).


DATASET ACTIVATE ConjuntoDatos1.
LOGISTIC REGRESSION VARIABLES GTCEm2
  /METHOD=ENTER Red_ecRTAx2ok Red_RTAx2ok
  /CONTRAST (Red_ecRTAx2ok)=Indicator(1)
  /CONTRAST (Red_RTAx2ok)=Indicator(1)
  /CLASSPLOT
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

DATASET ACTIVATE ConjuntoDatos2.
LOGISTIC REGRESSION VARIABLES GTCEmemberx2
  /METHOD=ENTER Red_ecRTAx2ok Red_RTAx2ok
  /CONTRAST (Red_ecRTAx2ok)=Indicator(1)
  /CONTRAST (Red_RTAx2ok)=Indicator(1)
  /CLASSPLOT
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

DATASET ACTIVATE ConjuntoDatos1.
LOGISTIC REGRESSION VARIABLES GTCEm2
  /METHOD=ENTER Red_RTAx2ok*Red_ecRTAx2ok 
  /CONTRAST (Red_ecRTAx2ok)=Indicator(1)
  /CONTRAST (Red_RTAx2ok)=Indicator(1)
  /CLASSPLOT
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

DATASET ACTIVATE ConjuntoDatos2.
LOGISTIC REGRESSION VARIABLES GTCEmemberx2
  /METHOD=ENTER Red_RTAx2ok*Red_ecRTAx2ok 
  /CONTRAST (Red_ecRTAx2ok)=Indicator(1)
  /CONTRAST (Red_RTAx2ok)=Indicator(1)
  /CLASSPLOT
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).


Modelos integradores 

Función C minimalista

Tabla 55 – Resumen del modelo integrador minimalista (Función C, ambas poblaciones)
Tabla 56 – Tabla de clasificación del modelo integrador minimalista (Función C, ambas poblaciones)
Tabla 57 – Variables en el modelo integrador minimalista (Función C, ambas poblaciones)

DATASET ACTIVATE ConjuntoDatos1.
LOGISTIC REGRESSION VARIABLES GTCEm2
  /METHOD=ENTER EGOV2020x2*Red_RTAx2ok
  /CONTRAST (Red_RTAx2ok)=Indicator(1)
  /CONTRAST (EGOV2020x2)=Indicator(1)
  /CLASSPLOT
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

DATASET ACTIVATE ConjuntoDatos2.
LOGISTIC REGRESSION VARIABLES GTCEmemberx2
  /METHOD=ENTER EGOV2020x2*Red_RTAx2ok
  /CONTRAST (Red_RTAx2ok)=Indicator(1)
  /CONTRAST (EGOV2020x2)=Indicator(1)
  /CLASSPLOT
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).


Función C maximalista

Tabla 58 – Resumen del modelo integrador maximalista (Función C, ambas poblaciones)
Tabla 59 – Tabla de clasificación del modelo integrador maximalista (Función C, ambas poblaciones)
Tabla 60 – Variables en el modelo integrador maximalista (Función C, ambas poblaciones)

DATASET ACTIVATE ConjuntoDatos1.
LOGISTIC REGRESSION VARIABLES GTCEm2
  /METHOD=ENTER Red_RTAx2ok*Red_ecRTAx2ok Densidadx2*EGOV2020x2 
  /CONTRAST (Red_ecRTAx2ok)=Indicator(1)
  /CONTRAST (Red_RTAx2ok)=Indicator(1)
    /CONTRAST (EGOV2020x2)=Indicator(1)
  /CONTRAST (Densidadx2)=Indicator(1)
  /CLASSPLOT
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

DATASET ACTIVATE ConjuntoDatos2.
LOGISTIC REGRESSION VARIABLES GTCEmemberx2
  /METHOD=ENTER Red_RTAx2ok*Red_ecRTAx2ok Densidadx2*EGOV2020x2 
  /CONTRAST (Red_ecRTAx2ok)=Indicator(1)
  /CONTRAST (Red_RTAx2ok)=Indicator(1)
    /CONTRAST (EGOV2020x2)=Indicator(1)
  /CONTRAST (Densidadx2)=Indicator(1)
  /CLASSPLOT
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).






