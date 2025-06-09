# PhDThesis

Preferencias Estatales de Coordinación Regulatoria en Comercio Electrónico
Tesis Doctoral - Universidad de Buenos Aires (2024)
Autora: Alexandra Bustos Frati
Directora: Carolina Aguerre

🚀 ¿Qué encontrarás aquí?
Este repositorio contiene datos, código y metodología de una investigación doctoral sobre cómo los países toman decisiones de coordinación regulatoria en temas digitales. Usamos el caso de comercio electrónico en la OMC (2017-2024) como laboratorio, pero las herramientas son aplicables a múltiples campos.
¿Por qué es útil esto?

Bases de datos limpias y documentadas (164/492 observaciones)
Metodología replicable para estudiar gobernanza digital
Código abierto (ATLAS.ti + SPSS) con trazabilidad completa
Variables transferibles a ciberseguridad, IA, clima, salud global

🧠 Marco Teórico
Innovación Conceptual

Ecología organizacional del complejo de regímenes de comercio digital
Modelo secuencial de 3 pasos adaptado de Moravcsik (1998)
Ensamblaje teórico híbrido entre institucionalismo liberal y realismo estructural

Pregunta Central de Investigación

¿Qué factores determinan las preferencias estatales sobre coordinación regulatoria en comercio electrónico dentro de la ecología organizacional de la OMC?

📊 Metodología
Diseño de Investigación

Enfoque mixto: Técnicas cuantitativas y cualitativas integradas
Análisis secuencial: Tres pasos diferenciados según dimensión de variable dependiente
Estudio de caso: IDCCE-OMC como laboratorio empírico

Datos Empíricos

164 países OMC (población sincrónica)
492 observaciones diacrónicas (2017-2024)
130+ documentos oficiales analizados con ATLAS.ti
Variables ordinales → dicotómicas para regresión logística

🔬 Estructura de la Investigación
Paso 1: Preferencias de Cooperación Sustantiva
Pregunta: ¿Negociar ahora o después?

Variable dependiente: Participación en IDCCE (M1, M2, M3)
Variables explicativas: Capacidades materiales vs. ventajas institucionales
Modelos: Tecno-económico, Estructurado por cuestiones, Integrador

Paso 2: Preferencias de Elección Institucional
Pregunta: ¿Negociar aquí o en otro lugar?

Foco: Pool de soberanía en venue plurilateral dentro de organización multilateral
Marco: 4 motivaciones estratégicas (Moravcsik adaptado)
Hallazgo: Credibilidad de compromisos como motivación dominante

Paso 3: Preferencias del Núcleo Negociador
Pregunta: ¿Qué negociar y qué no?

Objeto: Contenidos del núcleo negociador (2017-2024)
Variables: Estándares defensivos vs. ofensivos
Evidencia: Evolución de preferencias sobre moratoria arancelaria y transferencias de datos

📈 Hallazgos Principales
Contribución Empírica

Contradicción a Abbott, Green & Keohane (2016): Evidencia de innovación institucional dentro de organizaciones intergubernamentales formales
Multilateralismo fragmentado: Variedades dinámicas, no declive monolítico
Capacidades + ventajas institucionales: Condiciones necesarias pero no suficientes para participación

Contribución Metodológica

Metodología pre-IA: Análisis manual con trazabilidad completa
Integración cuali-cuanti: ATLAS.ti → variables → SPSS
Replicabilidad: Bases de datos y códigos abiertos

🗂️ Contenido del Repositorio

PhDThesis/
├── data/
│   ├── DB2024_Paso1_164obs.csv          # Base sincrónica principal
│   ├── DB2024_Paso1_492obs.csv          # Base diacrónica control
│   ├── DB2024_Paso3_164obs.csv          # Núcleo negociador
│   └── codebook.md                      # Diccionario de variables
├── analysis/
│   ├── ATLAS_project/                   # Proyecto ATLAS.ti completo
│   ├── SPSS_syntax/                     # Sintaxis estadística
│   └── replication_guide.md             # Guía de replicación
├── docs/
│   ├── thesis_complete.pdf              # Tesis completa
│   ├── defense_slides.pdf               # Presentación defensa
│   └── infographic.html                 # Infografía interactiva
└── spillovers/
    ├── potential_applications.md        # Casos de aplicación futura
    └── variable_mapping.csv             # Variables reutilizables

    🛠️ ¿Cómo usar este repo?
Para investigadores de gobernanza digital

Fork y adapta las variables a tu campo (ciberseguridad, IA, etc.)
Reutiliza la metodología secuencial de 3 pasos
Extiende el análisis a nuevos casos o períodos

Para cientistas de datos

Datasets estructurados y listos para análisis
Variables ordinales ya construidas y validadas
Códigos SPSS para replicar todos los modelos

Para policy makers

Insights sobre cómo se forman coaliciones regulatorias
Patrones de comportamiento estatal en gobernanza digital
Casos de uso para anticipar dinámicas futuras

🚀 Uso y Replicación
Requisitos

SPSS/R: Para análisis cuantitativo
ATLAS.ti: Para análisis cualitativo (opcional)
Python/R: Para procesamiento adicional

Inicio Rápido

# Clonar repositorio
git clone https://github.com/metterniezsche/PhDThesis.git

# Cargar base principal
# Ver analysis/replication_guide.md para instrucciones detalladas

Citación

@phdthesis{bustos2024preferencias,
  author    = {Alexandra Bustos Frati},
  title     = {Preferencias Estatales de Coordinación Regulatoria en Comercio Electrónico: 
               Un Modelo Integrador Aplicado al Caso de la OMC (2017-2024)},
  school    = {Universidad de Buenos Aires},
  year      = {2024},
  address   = {Buenos Aires, Argentina},
  note      = {Datos y código disponibles en: https://github.com/metterniezsche/PhDThesis}
}

🤝 Contribuciones y Contacto
Colaboración
Este repositorio está diseñado para facilitar:

Replicaciones en otros campos de coordinación regulatoria
Extensiones metodológicas del modelo secuencial
Aplicaciones a nuevos casos empíricos
Validaciones con datos actualizados

Contacto

Email: [tu-email]
ORCID: [tu-orcid]
LinkedIn: [tu-linkedin]
Twitter/X: [tu-handle]

Agradecimientos
Especial reconocimiento a Carolina Aguerre (directora), la Universidad de Buenos Aires, y todos los colegas que contribuyeron al desarrollo de esta investigación.

📄 Licencia
Este trabajo está licenciado bajo Creative Commons Attribution 4.0 International License.
Compartir y adaptar libremente, con atribución apropiada.
