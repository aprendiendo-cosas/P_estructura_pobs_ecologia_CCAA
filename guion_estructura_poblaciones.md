# Analizando la estructura de las poblaciones más importantes de los ecosistema de Sierra Nevada

> + **_Tipo de material_**: <span style="display: inline-block; font-size: 12px; color: white; background-color: #4caf50; border-radius: 5px; padding: 5px; font-weight: bold;"> Prácticas</span> 
> + **_Versión_**: 2024-2025
> + **_Asignatura (grado)_**: Ecología (CCAA)
> + **_Autor_**: Curro Bonet-García (fjbonet@uco.es)
> + **_Duración_**: Tres sesiones de 1.5 horas cada una. Algunas horas más en casa. 

![portada](https://raw.githubusercontent.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/refs/tags/2023_2024/imagenes/portada.jpg)




## Objetivos 







## Contextualización ecológica del problema

- En esta práctica aprenderemos a caracterizar la estructura de un ecosistema. Concretamente usaremos un descriptor que estudiamos en los primeros días de clase: diagramas rango-edad o pirámides poblacionales. Son esquemas que nos dan idea de cuándos individuos de qué tamaño o edad hay en una población determinada. 
- Pero esto sirve para poblaciones, no para ecosistemas. O al menos no sabemos si sirve porque no hemos estudiado aún los ecosistemas. Así que, asumiremos algo importante: la estructura de un sistema complejo (un ecosistema) se parece mucho a la estructura de los elementos que lo constituyen (una serie de poblaciones de seres vivos en nuestro caso). Así que, estudiaremos la estructura de un ecosistema a partir de la estructura de las poblaciones que lo forman. Pero pondremos el foco en aquellas poblaciones que son más relevantes para la estructura. Por ejemplo, en un bosque nos referimos a las poblaciones de los árboles que dominan (y dan nombre) al bosque. 
- Es decir, trataremos de generar una gráfica que muestre la distribución de edades (o tamaños) de las especies dominantes de cada tipo de ecosistema. 
- Para eso conviene entender un poco cómo se distribuyen los ecosistemas en Sierra Nevada. Mostramos mapa de distirbución y mapa de gradiente altitudinal. PONER AQUÍ LA IMAGEN DE LA PIZARRA


## Metodología propuesta
- Vamos a hacer un ejercicio de ingeniería inversa: a partir del resultado vamos a ver cómo llegar hasta él. Por qué hacemos esto así?
  - Estimula el razonamiento deductivo y el pensamiento crítico
  - La comprensión profunda de los procesos
  - Mejora en la transferibilidad a situaciones reales. vamos a aprender de la misma forma en la que enfrentamos problemas nuevos en un ámbito distinto al docente: profesional.
  - Mejora en la retención del conocimiento.
  - Aprendizaje colaborativo

- Además, de nuevo, nos apoyaremos en las herramientas IA para ir generando conocimiento nuevo. Actuaremos como lo haría yo (el profesor) si estuviera en el lugar de los estudiantes.
- En el proceso aprenderemos varios conceptos importantes:
  - Flujo de trabajo: secuencia de acciones ordenadas que nos permiten conseguir un objetivo concreto. introducción a draw.io (diagrams)
  - Base de datos relacional.
  - Fuentes de datos para caracterizar los ecosistemas.



## Planteamiento de un flujo de trabajo para abordar el problema

¿qué tipo de gráfica es esta matemáticamente hablando? 

- ¿cómo obtenemos estos datos?
- ¿se toman los datos en campo con este nivel de agregación? -> concepto de inventario forestal
- Concepto de tabla e introducción a las bases de datos relacionales
- Nuestro primer flujo de trabajo

- Cada grupo reflexiona para identificar la o las especies para las que generará el histograma de frecuencias
- Esbozan un flujo de trabajo con los siguientes elementos (no les di estas características)
  - Conjuntos de datos a utilizar.
  - Métodos de análisis.
  - Posibles problemas a solventar

- Puesta en común del flujo de trabajo
## Ejecución del flujo de trabajo
Tipos de ecosistemas vs fuente de datos:

- Pinares de repoblación-> inventarios

- Encinares -> inventarios

- Bosques de ribera -> datos lidar? Preguntar a Cristina por una capa de altura de la vegetación.

- Pastizales de alta montaña -> no procede la estructura de edades. ¿promedio de la biomasa como proxy de la estructura?

- Piornales y enebrales -> ¿algo de Adaptamed o fotointerpretación?








## Discusión de resultados obtenidos



## Hilo argumental

- ya os conté que esta forma de impartir las prácticas (con un proyecto final y poniendo el foco en los grupos), era nueva para mí y que no tenía garantías de su éxito.
- Hoy estoy en crisis con esta forma de impartir las clases. Por varias razones:
  - No os veo motivados (tampoco en teoría). No expresáis dudas, solo respondéis mis preguntas (a duras penas). No expresáis emociones sobre lo que os cuento. 
  - Tengo la sensación de que no trabajáis fuera de clase. La participación en los Teams sigue siendo inexistente. 
  - Creo que no habéis conectado (aún) con esta forma de aprender. Una en la que yo soy alguien que, desde su experiencia, os acompaña.
  - Pero sobre todo, me siento desorientado porque no os comunicáis conmigo. 
  - Dicho todo esto os vuelvo a asegurar que mi mayor empeño es ayudaros a aprender. Y es un empeño egoísta. Vosotros gestionaréis el mundo en el que vivirán mis hijos y mis nietos.
  - Tenía pensado dedicar la clase de hoy a trabajar con datos y con R. Luego pensé que sería bueno contaros cómo he hecho yo el histograma que tenemos que construir. Pero luego, después de reflexionar sobre lo anterior, pensé en hacer un intento más (quizás el último) de hacer las cosas con esta filosofía que quiero inculcar en clase (reflexión, metacognición, indagación, etc.). Así que, en la clase de hoy avanzaremos en nuestro trabajo con la premisa de ¿qué haría yo (50 años) si estuviera en vuestro lugar?

- revisamos el flujograma que ha hecho cada grupo. 10'
- los compañeros preguntan. 5'
- yo acompaño preguntando si con este flujograma podrían generar el histograma que necesitamos. 2'
- TAmbién pregunto cómo han hecho el flujograma. En qué se han basado para crear los esquemas que han creado. 
- Ahora les cuento cómo lo haría yo si estuviera en su lugar y no supiera lo que sé. 
- Preguntamos a chatgpt o a perplexity. Posibles preguntas:
  - Soy un estudiante de ciencias ambientales en la asignatura de ecología. Necesito generar un histograma que muestre las clases de edades de los encinares de una zona concreta del territorio (Sierra Nevada, España).  ¿podrías ayudarme a generar un flujo de trabajo que me permita hacer lo que necesito? En el flujo de trabajo muestra las posibles fuentes de datos (Reales) que podría utilizar, así como los procedimientos de agregación necesarios para hacer la gráfica.
  - Vale, háblame un poco más del IFN. No sé nada de él. Por favor, indícame qué tipos de datos se toman y en qué medida estos pueden ser útiles para generar un histograma con las edades o tamaños de la encina en Sierra Nevada
  - ¿dónde puedo encontrar esos datos?
  - ¿podrías decirme qué estructura de datos tiene el IFN y que me permita generar el histograma que necesito?
  - Tengo que generar un histograma para los siguientes tipos de ecosistemas.  - Encinares - Pinares de repoblación. - Bosques de ribera. - Piornales y enebrales de alta montaña. - Pastizales de alta montaña ¿me servirá el IFN para todos esos tipos de ecosistemas?

- Ahora cambiamos de tercio. Vamos a buscar literatura científica sobre nuestros ecosistemas.
- Y ahora, por último, vamos a indagar con chatgpt sobre la forma que podrían tener nuestros histogramas.
- Y ahora vemos un mapa con las parcelas...




****

[Aquí](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/archive/refs/tags/2024_2025.zip) puedes descargar un archivo .zip que contiene este guión en formato html y todo el material que incluye.

****

Haz click [aquí](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/releases) para ver cómo ha cambiado este guión en los distintos cursos académicos.

****

 <p xmlns:cc="http://creativecommons.org/ns#" >El contenido de este repositorio se puede utilizar bajo la siguiente licencia:  <a  href="https://creativecommons.org/licenses/by-nc-sa/4.0/?ref=chooser-v1"  target="_blank" rel="license noopener noreferrer"  style="display:inline-block;">CC BY-NC-SA 4.0<img  style="height:22px!important;margin-left:3px;vertical-align:text-bottom;"   src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"  alt=""><img  style="height:22px!important;margin-left:3px;vertical-align:text-bottom;"   src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"  alt=""><img  style="height:22px!important;margin-left:3px;vertical-align:text-bottom;"   src="https://mirrors.creativecommons.org/presskit/icons/nc.svg?ref=chooser-v1"  alt=""><img  style="height:22px!important;margin-left:3px;vertical-align:text-bottom;"   src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1"  alt=""></a></p> 

<p>Esta licencia no aplica a enlaces a artículos, libros o imágenes no originales. Estos productos tienen su licencia correspondiente.</p>

