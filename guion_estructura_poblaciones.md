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

Deducir y diseñar de manera colaborativa en la pizarra un esquema lógico (flujo de trabajo) que nos permita evaluar la estructura de las poblaciones de especies relevantes de nuestros ecosistemas.



**Importante: Contesta a [estas](https://script.google.com/macros/s/AKfycbyeUEBHQLcYgpZZv4Ntyz5Di7YGdtX07O24QrBXn2E0kYc9ogWEkMPU3wogCjOPsPzhdA/exec) preguntas antes de terminar la sesión**. Son muy útiles para que el profesor pueda guiar vuestro aprendizaje. 

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



### Datos de partida

Empezamos la sesión descargando las tablas de datos que usaremos para generar el histograma. Yo he preparado las tablas necesarias en todos los ecosistemas para los que los necesitamos. Estas tablas son las siguientes:

+ **Pinares de repoblación:** [alturas_pinus.zip](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/2025_2026/geoinfo/alturas_pinus.zip). Este archivo contiene los datos altura (en metros) de miles de pinos medidos en Sierra Nevada por el IFN. Esta tabla se usará para los pinares de repoblación. La tabla contiene los siguientes campos:
  + Especie: indica la especie del individuo cuyo tamaño se indica en el siguiente campo. Se incluyen valores de varias especies de pino presentes en Sierra Nevada. Los estudiantes de este grupo tendrán que decidir si hacen un histograma agregado para todas las especies o uno para cada especie. En este segundo caso tendrán que modificar ligeramente el código de R para filtrar por especie en la tabla. ChatGPT y yo estaremos encantados de ayudar en esto :)
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
+ **Matorrales de media montaña:** [alturas_romero.zip](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/2025_2026/geoinfo/alturas_romero.zip). Esta tabla contiene información sobre las alturas de ejemplares de *Rosmarinus oficinales*, una especie típica de los matorrales de media montaña. Tiene un campo con el nombre de la especie y otro con el tamaño de cada individuo en metros. 
+ **Pastizales de alta montaña: **[Tamaños_festuca.zip](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/2025_2026/geoinfo/tamanios_festuca.zip):  Esta tabla, generada artificialmente, se usará para generar el histograma de los pastizales alpinos. Tiene un único campo (tamaño_m) que muestra el tamaño en horizontal de las plantas de la especie *Festuca indigesta*, que es una de las dominantes de los pastizales alpinos de Sierra Nevada.
+ **Borreguiles: **[Diametros_carex_nigra.zip](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/2025_2026/geoinfo/diametros_carex_nigra.zip): Esta tabla también está generada artificialmente. Se usará para generar el histograma de los borreguiles. La especie *Carex nigra* es una de las más frecuentes en este tipo de formaciones vegetales.





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
