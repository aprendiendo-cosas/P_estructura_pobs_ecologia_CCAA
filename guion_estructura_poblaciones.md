# Analizando la estructura de las poblaciones más importantes de los ecosistema de Sierra Nevada

> + **_Tipo de material_**: <span style="display: inline-block; font-size: 12px; color: white; background-color: #4caf50; border-radius: 5px; padding: 5px; font-weight: bold;"> Prácticas</span> 
> + **_Versión_**: 2026-2027
> + **_Asignatura (grado)_**: Ecología (CCAA)
> + **_Autor_**: Curro Bonet-García (fjbonet@uco.es)
> + **_Duración_**: Tres sesiones de 2 horas cada una. Alguna hora más en casa. 

![portada](https://raw.githubusercontent.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/refs/tags/2025_2026/imagenes/portada.png)



[TOC]

---



## 1 Objetivos 

Como todas las actividades de la asignatura, esta práctica tiene dos tipos de objetivos:

+ Objetivos disciplinares (relacionados con la ecología):
  + Aprender a generar histogramas de frecuencias de tamaño de distintas poblaciones a partir de distintas fuentes de datos. 
  + Aprender a interpretar histogramas de frecuencias de edades y tamaños a la luz de la ecología. Es decir, aprender a inferir el funcionamiento y la dinámica de una población a partir de una "pirámide de edades".
  + Comparar la estructura de poblaciones de las especies dominantes de distintos tipos de ecosistemas de Sierra Nevada.
  + Entender el concepto de inventario de campo y concretamente aprender algunas ideas generales del Inventario Forestal Nacional (de España).
+ Objetivos instrumentales (relacionados con herramientas o competencias transversales):
  + Promover el aprendizaje autónomo de los estudiantes. Trataremos de generar un histograma de tamaños para las especies dominantes de distintos ecosistemas como si nadie, ni siquiera el profesor, supiera cómo hacerlo. 
  + Presentar a los estudiantes R, el lenguaje de programación más frecuente entre los ecólogos. Lo usaremos para generar un histograma de frecuencias.
  + Aprender qué es un flujo de trabajo.
  + Mejorar las competencias de los estudiantes para manejar datos y ordenadores.



## 2 Contextualización ecológica del problema

Para lograr los anteriores objetivos de aprendizaje plantearemos un problema a resolver. Se trata de caracterizar la estructura de cada uno de los ecosistemas que cada estudiante tiene asignado y que visitaremos en Sierra Nevada. Concretamente usaremos un descriptor que estudiamos en los primeros días de clase: diagramas rango-edad o pirámides poblacionales. Son esquemas que nos dan idea de cuándos individuos de qué tamaño o edad hay en una población determinada. Como vimos en teoría, esos diagramas nos ayudan a entender también cómo funciona la población con relación a la reproducción. Y esto es importante para estimar o inferir posibles problemas que afecten a la población. Una población de una especie cualquiera en la que no hay regeneración tendrá una pirámide poblacional con muy pocos individuos jóvenes. Esto pone en peligro su supervivencia en el corto y medio plazo.

Pero esto sirve para poblaciones, no para ecosistemas. O al menos no sabemos si sirve porque no hemos estudiado aún los ecosistemas. Así que, asumiremos algo importante: la estructura de un sistema complejo (un ecosistema) se parece mucho a la estructura de los elementos que lo constituyen (una serie de poblaciones de seres vivos en nuestro caso). Así que, estudiaremos la estructura de un ecosistema a partir de la estructura de las poblaciones que lo forman. Pero pondremos el foco en aquellas poblaciones que son más relevantes para la estructura. Por ejemplo, en un bosque nos referimos a las poblaciones de los árboles que dominan (y dan nombre) al bosque. En un pinar de repoblación, por ejemplo, son los pinos las especies dominantes. Caracterizaremos la estructura de edades de las poblaciones de pinos y asumiremos que dicha estructura se parece a la del ecosistema. Esto es una asunción importante, pero con el conocimiento que tenemos de ecología, es razonable.

La siguiente figura muestra, de manera resumida, los distintos ecosistemas con los que trabajaremos, así como una versión muy simplificada del flujo de trabajo que ejecutaremos o pondremos en práctica. 



![gradiente](https://raw.githubusercontent.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/refs/tags/2025_2026/imagenes/esquema_gradiente_alturas.png)




## 3 Metodología docente propuesta
Esta práctica es, seguramente, la más compleja que tendremos durante la asignatura. Y lo es por tres razones:

+ Los objetivos docentes que nos planteamos son ambiciosos. Pero esto no es lo más complejo.
+ Vamos a tratar de cumplir nuestro objetivo (generar un histograma para cada tipo de ecosistema) usando la "ingeniería inversa". Caracterizaremos un histograma e iremos dando pasos hacia atrás para tratar de aprender cómo se construye uno. Esto es habitual cuando uno se enfrenta a algo completamente nuevo. Aprenderemos esta técnica que será muy útil en vuestro desempeño profesional.
+ La última fuente de complejidad deriva de la forma en la que aprenderemos todo lo anterior. Yo, como profesor, no os daré instrucciones precisas sobre cómo proceder para satisfacer nuestro objetivo. Modelaremos en directo cómo un profesional de la ecología aobrda un problema desde cero: qué preguntas se hace, cómo busca información y cómo interactúa con una IA de forma crítica para llegar a una solución.

Aunque sea complejo, esta aproximación docente tiene muchas ventajas:

- Estimula el razonamiento deductivo y el pensamiento crítico. Estas son habilidades básicas que tendréis que poner en práctica cada día cuando terminéis el grado. 
- La comprensión profunda de los procesos se alcanza antes si uno o una se enfrenta a los problemas desde su origen, simulando que es un caso real.
- Mejora en la transferibilidad a situaciones reales. Si aprendemos bien el método que propongo aquí, os resultará más fácil transferirlo a otras situaciones (por ejemplo, a vuestro TFG, para el que no falta tanto tiempo...).
- Mejora en la retención del conocimiento. Dicen que Confucio dijo algo así: *Me lo contaron y lo olvidé; lo vi y lo entendí; lo hice y lo aprendí*. Esta afirmación está contrastada con bastantes evidencias científicas. Parece que nuestro cerebro retiene más eficazmente la información si pone en práctica el nuevo conocimiento adquirido. 

En esta práctica aplicaremos varias metodologías docentes. Quizás pienses que no es importante para ti como estudiante conocer esas metodologías. Te equivocarías en ese caso. Saber cómo el profesor intenta que aprendas promueve tu metacognición. Es decir, tomar conciencia de los mecanismos por los cuales tu cerebro aprende. Y eso es muy importante. Los métodos docentes que aplicamos aquí son:
- Diseño regresivo: consiste en definir claramente el objetivo de la práctica para deconstruir los requisitos cognitivos y operativos que se necesitan para lograrlo. Es decir, yo os diré a dónde queremos llegar (=generar un histograma de frecuencias) y juntos iremos deduciendo (con mi ayuda y con la de una IA) cómo hacerlo.
- Indagación guiada: consiste en que el profesor hace preguntas que guian la atención de los estudiantes hacia el siguiente eslabón causal del problema abordado. 
- Modelado cognitivo: se trata de simular ante vosotros (aprendices) cómo los expertos se comportan cuando se enfrentan a un problema concreto. Yo actuaré como si fuera uno de vosotros para buscar ayuda en internet. 

Para conseguir lo anterior dividiremos la práctica en tres sesiones diferentes pero muy relacionadas. En la primera entenderemos de forma semi-dirigida lo que queremos conseguir, así como el tipo de datos que necesitamos para ello. Al final de la primera sesión dispondremos de un flujo de trabajo que nos permitirá describir lo que queremos hacer. En la segunda sesión llevaremos dicho flujo de trabajo teórico a la práctica. Se transformará en una serie de instrucciones de R que podremos ejecutar. Esta segunda sesión se realizará con el apoyo de IAs generativas. En la última sesión aplicaremos el código generado a nuestro ecosistema. También discutiremos los resultados ecológicos obtenidos para cada ecosistema y los compararemos entre sí. 

La siguiente figura representa cómo se organizará esta práctica



![gradiente](https://raw.githubusercontent.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/main/imagenes/esquema_general.jpg)



Las metodologías docentes descritas anteriormente explican por qué el guión no contiene mucha información a partir de aquí. O al menos no la contiene antes de la realización de la sesión. Si la idea es que trabajemos en clase, no tiene sentido que desvele aquí lo que vamos a hacer. Iré completando el guión conforme vayamos avanzando en las distintas sesiones de esta práctica.



## 4. Primera sesión. Del ecosistema a la pizarra: entender lo que queremos hacer



### 4.1 Objetivos

+ Entender qué es un histograma de frecencias y su relación con la estructura del ecosistema.
+ Aprender qué es una tabla y cuál es su utilidad para almacenar información.
+ Conocer el concepto de inventario forestal-florístico y la estructura de datos asociada.
+ Aprender el concepto de flujo de trabajo.
+ Construir un flujo de trabajo para conseguir nuestro objetivo.

Para satisfacer estos objetivos procedemos dando los siguientes pasos:



### 4.2 Definir claramente nuestro objetivo final: un histograma

El texto mostrado a continuación es un resumen reeestructurado con lenguaje científico del proceso de indagación que seguimos en clase tras estas preguntas:

> ¿Qué tipo de gráfica se ajusta a lo que necesitamos?
>
> ¿Qué es un histograma?



El estudio cuantitativo de las comunidades ecológicas requiere caracterizar de forma rigurosa la estructura demográfica de las poblaciones dominantes o ingenieras del ecosistema, cuya arquitectura condiciona la dinámica de la comunidad. Para inferir patrones de regeneración, reclutamiento y senescencia, el objetivo final consiste en estimar y representar la distribución de frecuencias de variables biométricas continuas (tales como la clase de edad o el tamaño corporal/altura) asociadas a los individuos de una especie.

Desde una perspectiva analítica, un histograma es una representación gráfica bidimensional en la que el eje de abscisas (X) delimita intervalos discretos de una variable métrica continua (denominados intervalos de clase o *bins*), mientras que el eje de ordenadas (Y) cuantifica la frecuencia —absoluta o relativa— de observaciones comprendidas en cada rango. Matemáticamente, el área de cada barra resulta estrictamente proporcional a la densidad o frecuencia de eventos muestrales contenidos en dicho intervalo.

Es importante no confundir una distribución de frecuencias con una serie temporal o una gráfica de magnitudes agregadas (como la precipitación total mensual en milímetros o la facturación por mes). La variable de respuesta debe ser un conteo discreto de eventos u ocurrencias (p. ej., número de días de lluvia o número de individuos censados).

En el ámbito forestal, si consideramos una población de encinas (*Quercus ilex*), los individuos presentes en el estrato exhiben un gradiente continuo de tamaños o edades: desde plántulas y brinzales hasta individuos maduros y árboles senescentes de gran porte. La elaboración del histograma introduce un desafío intrínseco de discretización: la necesidad de proyectar una variable continua (edad o diámetro) en clases discretas arbitrarias. Si la amplitud del intervalo es excesivamente estrecha, la distribución se atomiza y pierde capacidad de síntesis estadística; si es excesivamente amplia respecto a la esperanza de vida o variabilidad de la especie (p. ej., rangos de 50 años en taxones de ciclo corto), se anula la resolución informativa al colapsar todas las observaciones en una única barra.

Asimismo, la delimitación de la población debe respetar la homogeneidad ecológica: mezclar gradientes ambientales contrastados —como comparar poblaciones de plantas situadas a 200 m frente a 2000 m de altitud, análogo a comparar variables antropométricas de poblaciones humanas genéticamente dispares como holandeses y bosquimanos sin estratificación— generaría distribuciones bimodales o artefactos estadísticos atribuibles a plasticidad fenotípica o adaptación local, enmascarando la verdadera estructura demográfica del sitio.

Para entender bien qué es un histograma, podéis ver este de aquí:



![tabla](https://raw.githubusercontent.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/refs/tags/2025_2026/imagenes/rug_plot.png)


En él se representan las barras del histograma, pero también los valores concretos de la medida que estamos caracterizando para cada uno de los elementos del grupo. Si estamos representando el tamaño de una serie de árboles, el eje X representa las clases de tamaño (a la izquierda los más bajos) y el eje Y representa cuántos árboles de cada clase hay. Las líneas coloreadas que hay en el eje X representan los valores de las medidas concretas de cada árbol. De esta forma vemos cómo se distribuyen los tamaños en la población. A esta gráfica se le llama "rug plot". El color de cada línea es aleatorio.



## 4.3 Estructura de datos necesarios para generar el histograma: las tablas

Para obtener la distribución empírica de una variable biológica, es indispensable disponer de un modelo de datos estructurado. En computación y análisis ecológico, el soporte fundamental es la estructura tabular o matriz de datos.

Una tabla constituye un dispositivo formal diseñado para caracterizar unívocamente entidades homogéneas (= del mismo tipo. Es decir, en una tabla no podemos caracterizar sillas y personas porque tienen atributos diferentes para ser caracterizados) de la realidad física. Para garantizar la integridad de la base de datos, toda tabla debe satisfacer dos condiciones estructurales:

1. **La fila (o tupla) como unidad indivisible e invariante (instancia):** Cada fila representa una entidad física discreta observada en el muestreo (en este contexto, un único individuo vegetal o animal). La identidad de la fila preserva la correspondencia de atributos entre sí. A diferencia del paradigma de hoja de cálculo convencional (como Microsoft Excel), donde la celda es tratada a menudo como una unidad disociable —lo que provoca errores críticos como ordenar columnas de forma asimétrica y quebrar la trazabilidad de la entidad—, en entornos científicos y sistemas de información geográfica (SIG) la tupla mantiene una integridad relacional estricta.
2. **La columna como variable o atributo:** Representa una dimensión métrica o categórica homogénea compartida por todas las instancias (p. ej., especie, diámetro normal $d_{1.30}$, altura total, fecha de muestreo). No deben agregarse entidades dispares dentro de la misma estructura (como muebles y personas, o árboles individuales y valores agregados a escala de rodal), ya que no comparten el mismo espacio de atributos.

Para construir el histograma demográfico de una sola especie, la estructura tabular mínima reducible requiere una única variable biométrica cuantitativa asociada a cada individuo:

$$\text{Tabla} = \begin{pmatrix} \text{ID} & \text{Especie} & \text{Altura (m)} \\ 1 & \text{Q. ilex} & 3.0 \\ 2 & \text{Q. ilex} & 4.0 \\ 3 & \text{Q. ilex} & 1.5 \\ \vdots & \vdots & \vdots \end{pmatrix}$$

Si el rodal objeto de estudio fuera mixto (p. ej., coocurrencia de *Pinus sylvestris* y *Quercus pyrenaica*), la adición de una variable categórica para la identidad taxonómica permite segmentar la tabla y derivar distribuciones de frecuencias específicas por taxón. Es decir, en este caso podríamos hacer un histograma para cada especie.



## 4.4 Transformación de datos en una gráfica: el concepto de análisis o procesamiento de datos

El paso desde los registros tabulados hasta la visualización sintética del histograma exige un proceso algorítmico de transformación y reducción de dimensionalidad. Partiendo de una nube continua de observaciones individuales no agregadas, el procedimiento computacional comprende dos operaciones fundamentales:

1. **Agrupamiento por intervalos de clase:** Consiste en particionar el soporte de la variable cuantitativa X en k subintervalos contiguos, disjuntos y exhaustivos:

$$I_i = [x_{\min} + (i-1)h, \; x_{\min} + ih) \quad \text{para } i = 1, \dots, k$$

donde $h$ representa el ancho de banda (*bin width*). Este paso fija el umbral de resolución con el que se clasifica a cada individuo según su magnitud biométrica. La creación de estos intervalos se hará en la próxima sesión cuando trabajemos con R. Por ahora solo nos quedamos con el hecho de que se agrupan los intervalos en clases o columnas.

2. **Agregación por recuento (Conteo de frecuencias):** Para cada intervalo $I_i$, se cuentan cuántos individuos de la tabla hay en cada uno de los intervalos definidos anteriormente.

A partir de la tabla agregada resultante, que vincula cada clase de tamaño con su respectivo conteo, se proyectan las coordenadas cartesianas que determinan las dimensiones geométricas del histograma. Mediante esta lógica de «ingeniería inversa», se deduce que para obtener el gráfico no se requiere una ordenación exhaustiva simple, sino una regla sistemática de agrupación y recuento paramétrico.



## 4.5 El origen de los datos que usaremos: inventarios forestales

La matriz de datos brutos no es un constructo abstracto; deriva de protocolos normalizados de muestreo en campo. En el ámbito forestal y de ecología de comunidades, el levantamiento de inventarios ecológicos a escala de paisaje (como los implementados históricamente en observatorios de cambio global en macizos montañosos como Sierra Nevada) requiere conciliar la heterogeneidad territorial con la viabilidad logística y económica del trabajo de campo.

El diseño de muestreo no puede depender de una cuadrícula espacial sistemática u homogénea indiscriminada: en terrenos orográficamente complejos, una malla rígida subrepresentaría los ecosistemas minoritarios o de ribera que ocupan una fracción reducida del territorio frente a grandes masas continuas de matorral o pinares de repoblación. Para corregir este sesgo se aplica un **muestreo estratificado ambientalmente**:

- Mediante análisis geoespacial multicriterio en SIG, se cruzan capas temáticas independientes (tales como pisos bioclimáticos, litología, modelos edáficos y orientación).
- El territorio se fragmenta en teselas homogéneas según las combinaciones de factores físicos.
- La densidad de asignación de parcelas de muestreo se modula de modo que todos los estratos ambientales queden representados con un número mínimo de unidades muestrales, incrementando la intensidad de muestreo en tipologías singulares o raras.

Una vez georreferenciadas las coordenadas de muestreo, el levantamiento en campo se ejecuta mediante parcelas fijas (típicamente cuadradas de $20 \times 20\text{ m}$ o circulares de radio variable). Desde el centro geométrico de la unidad muestral se determina la posición de cada individuo mediante brújula y distanciómetro/clinómetro (rumbo y distancia polar), registrándose variables dasométricas directas:

- Diámetro normal ($d_{1.30}$).
- Altura total y altura a la base de la copa.
- Diámetro medio de proyección de copa.
- Densidad de regeneración natural y cobertura del sotobosque.

La integración de estas parcelas locales con fuentes masivas normalizadas (tales como el Inventario Forestal Nacional) permite disponer de bases de datos sólidas a partir de las cuales se extraen y curan los subconjuntos de datos tabulares (en formatos estándar como `.csv`) con los que se alimenta el flujo computacional.

[Aquí](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/refs/tags/2025_2026/presentacion/inventarios_forestales.pptx) podéis ver la presentación que usamos para explicar los inventarios forestales. Un buen ejemplo de inventario forestal es el [Inventario Forestal Nacional](https://www.miteco.gob.es/es/biodiversidad/temas/inventarios-nacionales/inventario-forestal-nacional.html)



## 4.6 Poniendo todos los pasos en orden: flujo de trabajo

La formalización de una secuencia analítica reproducible en ciencia ecológica se modela mediante el concepto de **flujo de trabajo** (*workflow*): una secuencia estructurada, determinista y ordenada de transformaciones y procesos algorítmicos que transfiere los datos desde su captación empírica hasta la obtención de productos de información sintetizados.

El flujo de trabajo se representa mediante convenciones estandarizadas:

- **Rectángulos:** Identifican estructuras de datos, fuentes tabulares o colecciones de registros (p. ej., `inventario_bruto.csv`, `tabla_agrupada`).
- **Cilindros:** Representan almacenes relacionales de persistencia o bases de datos espaciales.
- **Rombos:** Representan operaciones de decisión lógica o bifurcaciones condicionales.
- **Flechas direccionales:** Indican el vector de transformación y transferencia secuencial de estados.

Aplicando la lógica analítica desarrollada, el flujo de trabajo computacional para la caracterización demográfica adopta la siguiente secuencia:

1. **Diseño y ejecución del muestreo estratificado:** Muestreo en campo y registro biométrico individual en parcelas dasométricas. Esto no lo hacemos aquí. Los datos que usaremos están aquí y yo los he modificado para utilizarlos.
2. **Consolidación en soporte estructurado:** Exportación a archivo de texto plano delimitado por caracteres (`.csv`), con codificación estándar, ausencia de caracteres reservados en rutas y preservación de la fila como entidad de integridad.
3. **Ingesta y preprocesamiento de datos:** Carga de la estructura tabular en el entorno computacional (R) e indexación por especies.
4. **Agregación analítica:** Definición de anchos de clase ($h$), discretización de la variable continua (*binning*) y conteo de frecuencias por estrato. Esto lo haremos en la segunda sesión de esta práctica.
5. **Generación gráfica y evaluación:** Renderizado del histograma de frecuencias e interpretación ecológica de la distribución (detección de cohortes, patrones de envejecimiento o cuellos de botella en la regeneración de la comunidad vegetal). Esto también se hará en la segunda sesión.

Es importante que aprendamos a crear flujos de trabajo porque nos ayudan en el proceso de captura y análisis de la información ambiental. En esta sesión construiremos un flujo de trabajo para generar una gráfica. Pero la idea es que esta herramienta esté presente (de forma implícita) en las demás prácticas de la asignatura.

En los siguientes enlaces tienes información sobre flujos de trabajo. Recomiendo su lectura:

+ [El papel de los flujos de trabajo en la reproducibilidad de la ciencia.](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/2025_2026/biblio/how_to_flow.pdf) Es un texto sencillo que describe la importancia de los flujos de trabajo en la creación de conocimiento científico.
+ [Ejemplos de flujos de trabajo.](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/2025_2026/biblio/workflow_reusable.pdf) Este texto es algo más elabrado y describe distintos tipos de flujos de trabajo. 

En la última práctica de la asignatura veremos con más detalle los flujos de trabajo.

A continuación tienes un dibujo de cómo quedó el flujo de trabajo del GM-2 en esta sesión:

![flujograma](https://raw.githubusercontent.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/main/imagenes/flujograma.jpg)



Conforme nos desplazamos hacia la derecha en el flujo de trabajo vamos obteniendo resultados que se parecen más a lo que necesitamos. Pero al mismo tiempo esos resultados son cada vez menos útiles para otros usos. De alguna forma podemos decir que lo que hay a la izquierda del flujo de trabajo es "totipotente" (= podemos hacer muchas cosas con esos datos). Lo de la derecha (nuestros resultados) es una manifestación especializada y particular de esos datos. 



## 4.7 Enlaces para acceder a los datos y primera toma de contacto



Terminamos la sesión descargando las tablas de datos que usaremos para generar el histograma. Yo he preparado las tablas necesarias en todos los ecosistemas para los que los necesitamos. Estas tablas son las siguientes:

+ **Pinares de repoblación:** [alturas_pinus.zip](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/2025_2026/geoinfo/alturas_pinus.zip). Este archivo contiene los datos altura (en metros) de miles de pinos medidos en Sierra Nevada por el IFN. Esta tabla se usará para los pinares de repoblación. La tabla contiene los siguientes campos:
  + Especie: indica la especie del individuo cuyo tamaño se indica en el siguiente campo. Se incluyen valores de varias especies de pino presentes en Sierra Nevada. Los estudiantes de este grupo tendrán que decidir si hacen un histograma agregado para todas las especies o uno para cada especie. 
  + Altura: se muestra la altura en metros del árbol medido.
+ **Encinares: **[alturas_encinas.zip](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/2025_2026/geoinfo/alturas_encinas.zip). Este archivo contiene los datos altura (en metros) de miles de encinas medidas en los encinares de Sierra Nevada por el IFN. Esta tabla se usará para los encinares. La tabla contiene los siguientes campos:
  + Especie: indica la especie del individuo cuyo tamaño se indica en el siguiente campo. En todos los casos la especie es *Quercus ilex*.
  + Altura: se muestra la altura en metros del árbol medido.
+ **Robledales: **[Alturas_robles.zip](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/2025_2026/geoinfo/alturas_robles.zip). Este archivo contiene datos de altura (en metros) de muchos robles de la especie *Quercus pyrenaica* de Sierra Nevada. Estos datos proceden del inventario forestal nacional. Contiene dos campos que se explican solos: la especie y la altura del árbol en metros.
+ **Enebrales-piornales: **[Area_enebros.zip](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/2025_2026/geoinfo/area_enebros.zip). Esta tabla contiene información del tamaño de cientos de enbros medidos en Sierra Nevada. En este caso, el tamaño de los individuos no se mide por su altura, sino por la superficie ocupada por el enebro. Esto se debe a que los enebros son especies que se extienden por el territorio en horizontal. Los datos han sido inferidos (usando ChatGPT) a partir de [este](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/refs/heads/2025_2026/biblio/estructura_edades_enebro.pdf) artículo científico. La tabla tiene los siguientes campos:
  + Especie: en todos los casos la especie es *Juniperus*, que es el género al que pertenece el enebro que vive en las partes altas de Sierra Nevada.
  + Tamaño_m2: se indica en metros cuadrados eel tamaño de los enebros medidos.
+ **Bosques de ribera: **[Alturas_Populus.zip](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/2025_2026/geoinfo/Alturas_Populus.zip). En este caso esta tabla contiene información de alturas de árboles del género *Populus*. Son los chopos y álamos tan habituales en los bosques de ribera. Estos datos se usarán para generar el histograma de los bosques de ribera. Tiene los siguientes campos:
  + Especie: en este caso todos los registros tienen el valor de *Populus*.
  + Altura_m: indica la altura en metros de cada árbol.
+ **Matorrales de media montaña:** [alturas_romero.zip](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/2025_2026/geoinfo/alturas_romero.zip). Esta tabla contiene información sobre las alturas de ejemplares de *Rosmarinus oficinalis*, una especie típica de los matorrales de media montaña. Tiene un campo con el nombre de la especie y otro con el tamaño de cada individuo en metros. 
+ **Pastizales de alta montaña: **[Tamaños_festuca.zip](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/2025_2026/geoinfo/tamanios_festuca.zip):  Esta tabla, generada artificialmente, se usará para generar el histograma de los pastizales alpinos. Tiene un único campo (tamaño_m) que muestra el tamaño en horizontal de las plantas de la especie *Festuca indigesta*, que es una de las dominantes de los pastizales alpinos de Sierra Nevada.
+ **Borreguiles: **[Diametros_carex_nigra.zip](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/2025_2026/geoinfo/diametros_carex_nigra.zip): Esta tabla también está generada artificialmente. Se usará para generar el histograma de los borreguiles. La especie *Carex nigra* es una de las más frecuentes en este tipo de formaciones vegetales.







**Importante: Contesta a [estas](https://script.google.com/macros/s/AKfycbx40ta7IJmMVeXYW7RwXiektBtsGzFAFNYAxcf2Izp5eJpFrMd2FJS-3m9JRXluxxdA1w/exec) preguntas antes de terminar la sesión**. Son muy útiles para que el profesor pueda guiar vuestro aprendizaje. 

---

## 5. Segunda sesión. De la pizarra al ordenador: procesar datos para obtener lo que queremos



### 5.1 Objetivos

+ Aprender algunas nociones básicas de R
+ Construir un script para generar un histograma con el apoyo de una IA. Es decir, transformar el flujo de trabajo anterior en un código ejecutable. Este objetivo se abordará mediante demostración sincrónica en micro-bloque susando IA para encontrar la sintáxis de las funciones a usar en R.





## 6. Tercera sesión. Del dato al conocimiento ecológico: interpretación ecológica de los resultados



### 6.1 Objetivos

+ Crear de manera autónoma un histograma para tus propios datos.
+ Ver cómo afectan ciertos cambios en el código al histograma.
+ Incorporar nuevas funciones al histograma (ej. rug plot para dar más información)
+ Discutir las implicaciones ecológicas de los histogramas obtenidos. Analizarlos de manera individual y luego comparar los resultados entre ecosistemas. Es decir, evaluar en qué medida se parecen y se diferencian los histogramas por ecosistema. 



---



AQUÍ VAN LOS DATOS PARA QUE EMPEZEMOS A JUGAR



### 





----










****

[Aquí](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/archive/refs/tags/2026_2027.zip) puedes descargar un archivo .zip que contiene este guión en formato html y todo el material que incluye.

****

Haz click [aquí](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/releases) para ver cómo ha cambiado este guión en los distintos cursos académicos.

---

[Aquí](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/blob/2026_2027/notas_imparticion_P_estructura_pobs_ecologia_CCAA.md) puedes ver las notas que tomó el profesor una vez que se impartió la clase.

****

 <p xmlns:cc="http://creativecommons.org/ns#" >El contenido de este repositorio se puede utilizar bajo la siguiente licencia:  <a  href="https://creativecommons.org/licenses/by-nc-sa/4.0/?ref=chooser-v1"  target="_blank" rel="license noopener noreferrer"  style="display:inline-block;">CC BY-NC-SA 4.0<img  style="height:22px!important;margin-left:3px;vertical-align:text-bottom;"   src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"  alt=""><img  style="height:22px!important;margin-left:3px;vertical-align:text-bottom;"   src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"  alt=""><img  style="height:22px!important;margin-left:3px;vertical-align:text-bottom;"   src="https://mirrors.creativecommons.org/presskit/icons/nc.svg?ref=chooser-v1"  alt=""><img  style="height:22px!important;margin-left:3px;vertical-align:text-bottom;"   src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1"  alt=""></a></p> 

<p>Esta licencia no aplica a enlaces a artículos, libros o imágenes no originales. Estos productos tienen su licencia correspondiente.</p>
