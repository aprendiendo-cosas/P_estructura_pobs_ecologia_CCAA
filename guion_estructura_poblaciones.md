# Analizando la estructura de las poblaciones más importantes de los ecosistema de Sierra Nevada

> + **_Tipo de material_**: <span style="display: inline-block; font-size: 12px; color: white; background-color: #4caf50; border-radius: 5px; padding: 5px; font-weight: bold;"> Prácticas</span> 
> + **_Versión_**: 2025-2026
> + **_Asignatura (grado)_**: Ecología (CCAA)
> + **_Autor_**: Curro Bonet-García (fjbonet@uco.es)
> + **_Duración_**: Dos sesiones de 2 horas cada una. Algunas horas más en casa. 

![portada](https://raw.githubusercontent.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/refs/tags/2024-2025/imagenes/portada.png)



## Objetivos 

Como todas las actividades de la asignatura, esta práctica tiene dos tipos de objetivos:

+ Objetivos disciplinares (relacionados con la ecología):
  + Aprender a generar histogramas de frecuencias de tamaño de distintas poblaciones a partir de distintas fuentes de datos. 
  + Aprender a interpretar histogramas de frecuencias de edades y tamaños a la luz de la ecología. Es decir, aprender a inferir el funcionamiento y la dinámica de una población a partir de una "pirámide de edades".
  + Comparar la estructura de poblaciones de las especies dominantes de distintos tipos de ecosistemas de Sierra Nevada.
  + Entender el concepto de inventario de campo y concretamente aprender algunas ideas generales del Inventario Forestal Nacional (de España).
+ Objetivos instrumentales (relacionados con herramientas o competencias transversales):
  + Promover el aprendizaje autónomo de los estudiantes. Este ambicioso objetivo se aborda mediante "ingeniería inversa". Trataremos de generar un histograma de tamaños para las especies dominantes de distintos ecosistemas como si nadie, ni siquiera el profesor, supiera cómo hacerlo. 
  + Presentar a los estudiantes R, el lenguaje de programación más frecuente entre los ecólogos. Lo usaremos para generar un histograma de frecuencias.
  + Aprender qué es un flujo de trabajo.
  + Mejorar las competencias de los estudiantes para manejar datos y ordenadores.



## Contextualización ecológica del problema

Para lograr los anteriores objetivos de aprendizaje plantearemos un problema a resolver. Se trata de caracterizar la estructura de cada uno de los ecosistemas que cada estudiante tiene asignado y que visitaremos en Sierra Nevada. Concretamente usaremos un descriptor que estudiamos en los primeros días de clase: diagramas rango-edad o pirámides poblacionales. Son esquemas que nos dan idea de cuándos individuos de qué tamaño o edad hay en una población determinada. Como vimos en teoría, esos diagramas nos ayudan a entender también cómo funciona la población con relación a la reproducción. Y esto es importante para estimar o inferir posibles problemas que afecten a la población. Una población de una especie cualquiera en la que no hay regeneración tendrá una pirámide poblacional con muy pocos individuos jóvenes. Esto pone en peligro su supervivencia en el corto y medio plazo.

Pero esto sirve para poblaciones, no para ecosistemas. O al menos no sabemos si sirve porque no hemos estudiado aún los ecosistemas. Así que, asumiremos algo importante: la estructura de un sistema complejo (un ecosistema) se parece mucho a la estructura de los elementos que lo constituyen (una serie de poblaciones de seres vivos en nuestro caso). Así que, estudiaremos la estructura de un ecosistema a partir de la estructura de las poblaciones que lo forman. Pero pondremos el foco en aquellas poblaciones que son más relevantes para la estructura. Por ejemplo, en un bosque nos referimos a las poblaciones de los árboles que dominan (y dan nombre) al bosque. En un pinar de repoblación, por ejemplo, son los pinos las especies dominantes. Caracterizaremos la estructura de edades de las poblaciones de pinos y asumiremos que dicha estructura se parece a la del ecosistema. Esto es una asunción importante, pero con el conocimiento que tenemos de ecología, es razonable.

La siguiente figura muestra, de manera resumida, los distintos ecosistemas con los que trabajaremos, así como una versión muy simplificada del flujo de trabajo que ejecutaremos o pondremos en práctica. 



![gradiente](https://raw.githubusercontent.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/refs/tags/2024-2025/imagenes/esquema_gradiente_alturas.png)




## Metodología docente propuesta
Esta práctica es, seguramente, la más compleja que tendremos durante la asignatura. Y lo es por tres razones:

+ Los objetivos docentes que nos planteamos son ambiciosos. Pero esto no es lo más complejo.
+ Vamos a tratar de cumplir nuestro objtetivo (generar un histograma para cada tipo de ecosistema) usando la "ingeniería inversa". Caracterizaremos un histograma e iremos dando pasos hacia atrás para tratar de aprender cómo se construye uno. Esto es habitual cuando uno se enfrenta a algo completamente nuevo. Aprenderemos esta técnica que será muy útil en vuestro desempeño profesional.
+ La última fuente de complejidad deriva de la forma en la que aprenderemos todo lo anterior. Yo, como profesor, no os daré instrucciones precisas sobre cómo proceder para satisfacer nuestro objetivo. Procederé como si fuera uno de vosotros. Simularé que no sé hacer el trabajo y, juntos, aprendremos a hacerlo. Es decir, avanzaremos en clase con la siguiente premisa: ¿qué haría yo (51 años) si tuviera el conocimiento de mis estudiantes y acceso a las mismas herramientas y datos que ellos?

Aunque sea complejo, esta aproximación docente tiene muchas ventajas:

- Estimula el razonamiento deductivo y el pensamiento crítico. Estas son habilidades básicas que tendréis que poner en práctica cada día cuando terminéis el grado. 
- La comprensión profunda de los procesos se alcanza antes si uno o una se enfrenta a los problemas desde su origen, simulando que es un caso real.
- Mejora en la transferibilidad a situaciones reales. Si aprendemos bien el método que propongo aquí, os resultará más fácil transferirlo a otras situaciones (por ejemplo, a vuestro TFG, para el que no falta tanto tiempo...).
- Mejora en la retención del conocimiento. Dicen que Confucio dijo algo así: *Me lo contaron y lo olvidé; lo vi y lo entendí; lo hice y lo aprendí*. Así que, según parece, nuestro cerebro retiene más eficazmente la información si pone en práctica el nuevo conocimiento adquirido. 

Para conseguir lo anterior nos apoyaremos en las herramientas IAs que conocimos en la práctica anterior. A partir de sus respuestas iremos elaborando un flujo de trabajo que nos permitirá crear nuestro histograma. Además, yo explicaré algunas cuestiones concretas. 



## Primera sesión de la práctica
En el primer día de esta práctica intentamos recopilar información sobre lo que necesitamos hacer sin ningún tipo de ayuda por parte del profesor. Me limito a comentar algunas de las ideas que surgen cuando los estudiantes buscan en internet, preguntan a las IAs y reflexionan por sí mismos y mismas.

A continuación se aporta algo de información sobre los conceptos más relevantes que salen a relucir:



### ¿Qué es un histograma?

Parecía obvio que teníamos que entender bien qué es un histograma. A pesar de haberlos estudiado en varias asignaturas (la última vez hace menos de un año en estadística...), no tenemos claro qué es. Así que, buscamos en internet.

Concluimos que es una gráfica que nos permite representar la frecuencia o número de veces que aparece un tipo de objeto concreto dentro de un conjunto muestral. Así, por ejemplo, si queremos saber cómo se distribuyen las alturas en una clase, medimos a cada estudiante y luego construimos el histograma. En el proceso de construcción, realizamos cierta agrupación en clases. Es decir, transformamos una variable continua (las alturas de los alumnos) en una discreta (los grupos que usamos para clasificarlos). Esto nos permite conocer si en la clase hay más alumnos altos o bajos, por ejemplo.

Para entender bien qué es un histograma, podéis ver este de aquí:



![tabla](https://raw.githubusercontent.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/refs/heads/main/imagenes/rug_plot.png)


En él se representan las barras del histograma, pero también los valores concretos de la medida que estamos caracterizando para cada uno de los elementos del grupo. Si estamos representando el tamaño de una serie de árboles, el eje X representa las clases de tamaño (a la izquierda los más bajos) y el eje Y representa cuántos árboles de cada clase hay. Las líneas coloreadas que hay en el eje X representan los valores de las medidas concretas de cada árbol. De esta forma vemos cómo se distribuyen los tamaños en la población. A esta gráfica se le llama "rug plot". El color de cada línea es aleatorio.



### Flujo de trabajo

Un flujo de trabajo es una secuencia de acciones ordenadas cuya ejecución tiene un objetivo determinado. Esta definición tan genérica se puede particularizar más en nuestro ámbito de trabajo: secuencia de acciones que realizamos sobre un conjunto de datos para satisfacer un objetivo dado. En nuestro caso, el objetivo es responder a la pregunta descrita en la sección anterior.

Es importante que aprendamos a crear flujos de trabajo porque nos ayudan en el proceso de captura y análisis de la información ambiental. En esta sesión construiremos un flujo de trabajo para generar una gráfica. Pero la idea es que esta herramienta esté presente (de forma implícita) en las demás prácticas de la asignatura.

En los siguientes enlaces tienes información sobre flujos de trabajo. Recomiendo su lectura:

+ [El papel de los flujos de trabajo en la reproducibilidad de la ciencia.](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/2024_2025/biblio/how_to_flow.pdf) Es un texto sencillo que describe la importancia de los flujos de trabajo en la creación de conocimiento científico.
+ [Ejemplos de flujos de trabajo.](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/2024_2025/biblio/workflow_reusable.pdf) Este texto es algo más elabrado y describe distintos tipos de flujos de trabajo. 

### Las tablas de datos
En nuestras pesquisas por internet, observamos que los datos que usaremos para generar el histograma se almacenan en tablas. Es una oportunidad estupenda para definir esta "entidad". Una tabla es un objeto (casi siempre digital) que nos permite caracterizar (= describir con detalle) elementos del mismo tipo. Por ejemplo, si queremos ordenar nuestra colección de libros o de CDs (¿sigue habiendo CDs?), almacenaremos la información en una tabla. Las tablas constan de filas y columnas. Las columnas representan los descriptores o características que usamos para describir los objetos (ej. título del libro, número de páginas, género del libro, etc.). Las filas son los elementos caracterizados. Es decir, en cada fila hay uno de los objetos descritos.

Las tablas son los elementos fundamentales que usamos para almacenar información. Cada tabla puede almacenar millones de filas y de campos. Además, las tablas pueden relacionarse entre sí. Pero de eso hablaremos en otra ocasión.

Dejo aquí uno de los garabatos que pintamos en la pizarra para describir una tabla. Por si es útil.

![tabla](https://raw.githubusercontent.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/refs/heads/main/imagenes/tabla.png)

### ¿De dónde sacamos los datos?

Algunos estudiantes se muestran rápidamente preocupados por los datos que usaremos para generar nuestro histograma. Se lanzan a buscar datos en internet sobre cocodrilos y otras especies :)

La respuesta corta a la pregunta es que yo os daré esos datos. Más abajo tenéis los correspondientes a vuestro ecosistema.

La respuesta larga es que esos datos proceden de inventarios florísticos y forestales. 

Un inventario forestal es un proceso sistemático de recopilación y análisis de datos sobre los recursos forestales de una determinada área. Este inventario incluye información sobre la cantidad, calidad, distribución y estado de los árboles y otras especies vegetales leñosas. Los datos obtenidos permiten conocer la estructura del bosque (como la densidad, el diámetro y la altura de los árboles) y su funcionamiento, ya que facilitan la evaluación de aspectos como la regeneración, la productividad y la dinámica de los ecosistemas forestales. En la mayoría de los países se realizan inventarios forestales con cierta periodicidad. En España disponemos del [Inventario Forestal Nacional](https://www.miteco.gob.es/es/biodiversidad/temas/inventarios-nacionales/inventario-forestal-nacional.html) en el que se repite la captura de datos de cada punto con una periodicidad de unos 10 años. Por otro lado, un inventario florístico consiste en la identificación y registro de todas las especies de plantas presentes en un área específica, abarcando tanto especies leñosas como herbáceas. Este tipo de inventario proporciona información detallada sobre la composición y diversidad vegetal, lo que permite analizar la estructura de la comunidad vegetal y comprender el funcionamiento del ecosistema, incluyendo las relaciones ecológicas y los procesos que mantienen la biodiversidad. Ambos inventarios son herramientas fundamentales para entender cómo se organizan y funcionan los ecosistemas.




## Segunda sesión de la práctica

Yo he preparado las tablas necesarias para generar histogramas en todos los ecosistemas para los que los necesitamos. Estas tablas son las siguientes:

+ [alturas_pinus.zip](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/2024-2025/geoinfo/alturas_pinus.zip). Este archivo contiene los datos altura (en metros) de miles de pinos medidos en Sierra Nevada por el IFN. Esta tabla se usará para los pinares de repoblación. La tabla contiene los siguientes campos:
  + Especie: indica la especie del individuo cuyo tamaño se indica en el siguiente campo. Se incluyen valores de varias especies de pino presentes en Sierra Nevada. Los estudiantes de este grupo tendrán que decidir si hacen un histograma agregado para todas las especies o uno para cada especie. En este segundo caso tendrán que modificar ligeramente el código de R para filtrar por especie en la tabla. ChatGPT y yo estaremos encantados de ayudar en esto :)
  + Altura: se muestra la altura en metros del árbol medido.
+ [alturas_encinas.zip](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/2024-2025/geoinfo/alturas_encinas.zip). Este archivo contiene los datos altura (en metros) de miles de encinas medidas en los encinares de Sierra Nevada por el IFN. Esta tabla se usará para los encinares. La tabla contiene los siguientes campos:
  + Especie: indica la especie del individuo cuyo tamaño se indica en el siguiente campo. En todos los casos la especie es *Quercus ilex*.
  + Altura: se muestra la altura en metros del árbol medido.
+ [Area_enebros.zip](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/2024-2025/geoinfo/area_enebros.zip). Esta tabla contiene información del tamaño de cientos de enbros medidos en Sierra Nevada. En este caso, el tamaño de los individuos no se mide por su altura, sino por la superficie ocupada por el enebro. Esto se debe a que los enebros son especies que se extienden por el territorio en horizontal. Los datos han sido inferidos (usando ChatGPT) a partir de [este](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/refs/heads/2024_2025/biblio/estructura_edades_enebro.pdf) artículo científico. La tabla tiene los siguientes campos:
  + Especie: en todos los casos la especie es *Juniperus*, que es el género al que pertenece el enebro que vive en las partes altas de Sierra Nevada.
  + Tamaño_m2: se indica en metros cuadrados eel tamaño de los enebros medidos.
+ [Alturas_Populus.zip](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/2024-2025/geoinfo/Alturas_Populus.zip). En este caso esta tabla contiene información de alturas de árboles del género *Populus*. Son los chopos y álamos tan habituales en los bosques de ribera. Estos datos se usarán para generar el histograma de los bosques de ribera. Tiene los siguientes campos:
  + Especie: en este caso todos los registros tienen el valor de *Populus*.
  + Altura_m: indica la altura en metros de cada árbol.
+ [Tamaños_festuca.zip](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/2024-2025/geoinfo/tamanios_festuca.zip):  Esta tabla, generada artificialmente, se usará para generar el histograma de los pastizales alpinos. Tiene un único campo (tamaño_m) que muestra el tamaño en horizontal de las plantas de la especie *Festuca indigesta*, que es una de las dominantes de los pastizales alpinos de Sierra Nevada.
+ Diametros_carex_nigra.zip: Esta tabla también está generada artificialmente. Se usará para generar el histograma de los borreguiles. La especie *Carex nigra* es una de las más frecuentes en este tipo de formaciones vegetales.

### Creación del histograma y visualización de resultados

*Contextualización*

En esta fase final de la práctica (al fin), vamos a preguntar a ChatGPT cómo se construye un histograma usando R. Pero antes de eso, os cuento por aquí algunas cosas generales de este lenguaje de programación.

R es uno de los lenguajes de programación más usados en el ámbito científico. Tiene funciones para realizar análisis estadísticos, dibujar distintos tipos de gráficas, procesar información georreferenciada y muchas otras cosas más. Como cualquier lenguaje de programación, R se parece mucho a un idioma. Tiene sus normas (sintaxis), sus tipos de "palabras" (funciones, parámetros, etc.) y también tiene una forma particular de almacenar tipos de datos. En esta sección nos familiarizaremos un poco con algunos elementos de R. Iremos aprendiendo poco a poco usando algunas de sus funciones.

Como en casi todos los lenguajes de programación, en R se suele trabajar usando la consola. Es esa pantalla negra que se usa frecuentemente en las películas de hackers en la que se escriben órdenes para que el ordenador trabaje. Este entorno de trabajo es un poco árido, por lo que se han desarrollado otros entornos que facilitan el trabajo porque aportan ventanas para visualizar los datos creados o importados, para ver los gráficos o para desplegar un programa (script) completo e ir ejecutándolo paso a paso (o a la vez). En nuestro caso usaremos una aplicación llamada RStudio. Es un entorno de desarrollo muy utilizado en R. Pero tenemos un problema: RStudio no está instalado en los ordenadores de la UCO. Por eso usaremos dos entornos de trabajo:

+ Los alumnos que trabajen en los ordenadores de la UCO tendrán que usar directamente R en modo consola. Para trabajar con el script que crearemos usarán la aplicación Notepad+ que mostrará las líneas de código que vamos a ir obteniendo de ChatGPT. A la derecha (en Notepad+) iremos creando el programa y a la izquierda iremos copiando y pegando las líneas para ir ejecutándolo paso a paso.  Su pantalla deberá de tener un aspecto parecido a esto:

![R_UCO](https://raw.githubusercontent.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/refs/tags/2024-2025/imagenes/entorno_UCO.png)



- Los estudiantes que usen su ordenador podrán trabajar con RStudio, que tiene una interfaz como se muestra en la imagen posterior. En el cuadrante superior izquierdo iremos creando el programa que se irá ejecutando línea a línea en el terminal que hay en el cuadrante inferior izquierdo. Conforme vayamos creando datos y tablas, se mostrarán en el cuadrante de arriba a la derecha. Abajo a la derecha se mostrará finalmente el histograma. Para instalar R y RStudio hay que seguir las instrucciones que se indican en [esta](https://posit.co/download/rstudio-desktop/) página. Primero hay que instalar R (opción 1: install R) y luego RStudio (2: Install RSstudio)

![RStudio](https://raw.githubusercontent.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/refs/tags/2024-2025/imagenes/entorno_RStudio.png)



*Pregunta*

Ya estamos dispuestos a preguntar a ChatGPT cómo se generaría un histograma usando R. Ahí va la primera pregunta:

> Dime cómo puedo generar un histograma en R partiendo de una tabla en la que haya dos campos. Uno indica la especie y otro la altura. La tabla tiene solo valores de una especie. La altura se expresa en metros. 

*Respuesta*

ChatGPT nos devuelve un código completo en el que empieza a hablar del concepto de paquete. Un paquete es un conjunto de funciones que no están en el "core" de R y que se instalan a posteriori para cumplir tareas específicas. Por ejemplo, en nuestro caso usaremos un paquete llamado `ggplot2` . Este paquete sirve para generar gráficas de tipos muy diferentes.

Los paquetes han de ser instalados por primera vez. Para ello se usa la función `install.packages`, cuya sintaxis obliga a poner a continuación el nombre del paquete entre comillas y paréntesis. La línea de código que instala este paquete sería:

```{R}
install.packages("ggplot2")
```

ChatGPT también nos sugiere usar otro paquete (`dplyr`), pero en realidad no nos hace falta, así que no lo usaremos.

Después de instalar los paquetes es necesario cargarlos en memoria. Esta segunda operación se debe de hacer siempre que se use el paquete en cada sesión. Es decir, tienes que ejecutar esta línea de código cada vez que abras R para generar histogramas. Sin embargo, la instalación se realiza solo una vez. La función que se usa para cargar paquetes se llama *library*. Su sintaxis se muestra a continuación.

```{R}
library(ggplot2)
```



*Pregunta*

En la primera pregunta, ChatGPT olvida tener en cuenta la carpeta en la que vamos a trabajar. Cuando usamos lenguajes de programación, es necesario identificar claramente en qué carpeta trabajamos. Así que le preguntamos a la IA cómo se establece el directorio de trabajo. Esto nos ayuda a tener los datos bien organizados. Le diremos a R que use una carpeta siempre y que busque todos los datos allí. También guardará en esa carpeta el resultado de nuestro trabajo. 

*Respuesta*

A continuación se muestra la sintaxis del comando que permite establecer el directorio de trabajo (*setwd*)

```{R}
setwd("/tu/ruta")
```

Sustituye lo que hay entre comillas por tu ruta. Para acceder a la ruta, usa tu explorador de archivos, ponte sobre la barra de navegación, botón derecho y copiar ruta en modo texto. Ten en cuenta que en windows, cuando copies la ruta de la carpeta, pondrá las barras hacia la izquierda. Tienes que cambiarlas a mano y ponerlas hacia la derecha. 



*Pregunta*

Una vez resuelto el asunto del directorio de trabajo, retomamos el hilo que muestra ChatGPT antes de preguntar por esto

*Respuesta*

Ahora, usamos `ggplot2` para crear el histograma. Podemos ajustar el tamaño de las barras (bins) según necesites para una mejor visualización. Observa que, en el código de abajo, el tamaño de las barras es de 1 m. Tendrás que cambiar esto en el caso de que las especies medidas sean mucho más pequeñas o mucho más grandes:

```R
ggplot(datos, aes(x = Altura)) +
  geom_histogram(binwidth = 1, fill = "blue", color = "black") +
  ggtitle("Distribución de Alturas de la Especie") +
  xlab("Altura (metros)") +
  ylab("Frecuencia")
```

En este código:
- `aes(x = Altura)`: Define `Altura` como la variable para el eje x.
- `geom_histogram()`: Crea el histograma con 20 barras (ajusta el número con `bins` según el rango y dispersión de tus datos).
- `fill` y `color`: Colorean las barras y sus bordes.
- `ggtitle()`, `xlab()`, y `ylab()`: Añaden título y etiquetas a los ejes.

Simplemente ejecuta el código en R para ver el histograma. Si no estás usando RStudio y quieres guardar el gráfico en un archivo, puedes usar `ggsave()`:

```R
ggsave("histograma_alturas.png", plot = última_plot(), width = 10, height = 8, dpi = 300)
```

Este código guarda el último gráfico realizado en un archivo PNG con una resolución de 300 dpi.

Si estás usando RStudio, puedes exportar la gráfica directamente dándole al botón exportar de dicho programa. 


*Aprendizajes*
+ Hemos aprendido algunas normas del lenguaje R: establecer el directorio de trabajo, importar una tabla en formato csv, entender la mecánica de la función de `ggpplot2`que genera histogramas, etc.
+ Para facilitar vuestro trabajo, he preparado el script (=programa) completo que tenéis que ejecutar para generar el histograma. Solo tenéis que cambiar la ruta de acceso al archivo con los datos, el tamaño de la barra y los nombres de los archivos importados en función del ecosistema con el que estéis trabajando. Como algunos trabajáis con RStudio y otros no (gentileza de la UCO), os paso dos versiones diferentes del código adaptado a cada situación:
  + [Código si no usas RStudio.](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/2024-2025/geoinfo/crear_histograma_sin_RStudio.zip)
  + [Código si sí usas RStudio.](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/2024-2025/geoinfo/crear_histograma_con_RStudio.zip)
+ Además, a continuación puedes ver dos vídeos en los que yo hago todo el proceso paso a paso. Uno de ellos sin RStudio y otro con esta aplicación.



**Vídeo sin RSTudio**

<iframe width="560" height="415" src="https://www.youtube.com/embed/uPAXVwZpeQs?si=CyqbiCa8m6D_XMng" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>



**Vídeo con RStudio**

<iframe width="560" height="415" src="https://www.youtube.com/embed/tbUROSWrhdo?si=ZLuOJytT_9utx4So" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>



### Interpretación de los resultados

Dar pistas sobre cómo interpretar los resultados. Quizás pensar en dar estructura a esto. interpretarlo en función de la longevidad de la especie, por ejemplo. hay ya un hilo en chatgpt sobre esto que puede servir

Una vez que hayamos generado los histogramas, es importante interpretarlos. De hecho, es lo más importante. Es lo que perseguimos, en realidad. Se trata de tratar de aprender algo sobre la estructura y funcionamiento del ecosistema en cuestión a partir del histograma de alturas de las especies que lo dominan. Para interpretar el histograma, sugiero dar los siguientes pasos:

- En primer lugar es útil analizar asépticamente la gráfica. De esta manera podemos ver si hay pocos o muchos organismos pequeños (=jóvenes), de tamaño intermedio o grandes. Puede que la gráfica tenga forma de campana de Gauss (distribución normal) o de J inclinada, por poner dos ejemplos. Esta observación de la gráfica nos dará información sobre la abundancia relativa de individuos jóvenes y maduros y senescentes.
- Analizar los resultados teniendo en cuenta la longevidad y las características de la especie analizada. Si tenemos una especie muy longeva (ej. *Juniperus communis*), el número reducido de juveniles es poco importante. Esto se debe a que, aunque haya pocos jóvenes en este momento, los adultos viven muchos años y pueden reproducirse durante más tiempo.
- Escribir un breve párrafo combinando la descripción "aséptica" anterior y su interpretación a la luz de las características de la especie analizada.










****

[Aquí](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/archive/refs/tags/2024-2025.zip) puedes descargar un archivo .zip que contiene este guión en formato html y todo el material que incluye.

****

Haz click [aquí](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/releases) para ver cómo ha cambiado este guión en los distintos cursos académicos.

****

 <p xmlns:cc="http://creativecommons.org/ns#" >El contenido de este repositorio se puede utilizar bajo la siguiente licencia:  <a  href="https://creativecommons.org/licenses/by-nc-sa/4.0/?ref=chooser-v1"  target="_blank" rel="license noopener noreferrer"  style="display:inline-block;">CC BY-NC-SA 4.0<img  style="height:22px!important;margin-left:3px;vertical-align:text-bottom;"   src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"  alt=""><img  style="height:22px!important;margin-left:3px;vertical-align:text-bottom;"   src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"  alt=""><img  style="height:22px!important;margin-left:3px;vertical-align:text-bottom;"   src="https://mirrors.creativecommons.org/presskit/icons/nc.svg?ref=chooser-v1"  alt=""><img  style="height:22px!important;margin-left:3px;vertical-align:text-bottom;"   src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1"  alt=""></a></p> 

<p>Esta licencia no aplica a enlaces a artículos, libros o imágenes no originales. Estos productos tienen su licencia correspondiente.</p>
