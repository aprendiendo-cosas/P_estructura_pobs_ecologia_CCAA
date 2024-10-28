# Analizando la estructura de las poblaciones más importantes de los ecosistema de Sierra Nevada

> + **_Tipo de material_**: <span style="display: inline-block; font-size: 12px; color: white; background-color: #4caf50; border-radius: 5px; padding: 5px; font-weight: bold;"> Prácticas</span> 
> + **_Versión_**: 2024-2025
> + **_Asignatura (grado)_**: Ecología (CCAA)
> + **_Autor_**: Curro Bonet-García (fjbonet@uco.es)
> + **_Duración_**: Tres o cuatro sesiones de 1.5 horas cada una. Algunas horas más en casa. 

![portada](https://raw.githubusercontent.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/refs/heads/main/imagenes/portada.png)




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
  + Aprender (y utilizar por primera vez) qué es un flujo de trabajo.
  + Mejorar las competencias de los estudiantes para manejar datos y ordenadores.



## Contextualización ecológica del problema

Para lograr los anteriores objetivos de aprendizaje plantearemos un problema a resolver. Se trata de caracterizar la estructura de cada uno de los ecosistemas que cada grupo tiene asignado y que visitaremos en Sierra Nevada. Concretamente usaremos un descriptor que estudiamos en los primeros días de clase: diagramas rango-edad o pirámides poblacionales. Son esquemas que nos dan idea de cuándos individuos de qué tamaño o edad hay en una población determinada. Como vimos en teoría, esos diagramas nos ayudan a entender también cómo funciona la población con relación a la reproducción. Y esto es importante para estimar o inferir posibles problemas que afecten a la población. Una población de una especie cualquiera en la que no hay regeneración tendrá una pirámide poblacional con muy pocos individuos jóvenes. Esto pone en peligro su supervivencia en el corto y medio plazo.

Pero esto sirve para poblaciones, no para ecosistemas. O al menos no sabemos si sirve porque no hemos estudiado aún los ecosistemas. Así que, asumiremos algo importante: la estructura de un sistema complejo (un ecosistema) se parece mucho a la estructura de los elementos que lo constituyen (una serie de poblaciones de seres vivos en nuestro caso). Así que, estudiaremos la estructura de un ecosistema a partir de la estructura de las poblaciones que lo forman. Pero pondremos el foco en aquellas poblaciones que son más relevantes para la estructura. Por ejemplo, en un bosque nos referimos a las poblaciones de los árboles que dominan (y dan nombre) al bosque. En un pinar de repoblación, por ejemplo, son los pinos las especies dominantes. Caracterizaremos la estructura de edades de las poblaciones de pinos y asumiremos que dicha estructura se parece a la del ecosistema. Esto es una asunción importante, pero con el conocimiento que tenemos de ecología, es razonable.

Para conseguir nuestro objetivo necesitamos datos. Esos datos se toman en campo mediante distintos métodos. Aprenderemos a extraer datos del [Inventario Forestal Nacional](https://www.miteco.gob.es/es/biodiversidad/temas/inventarios-nacionales/inventario-forestal-nacional.html) y de otras fuentes de datos diferentes. También aprenderemos a procesar esos datos y a generar una gráfica para cada ecosistema con dichos datos. Por último, intepretaremos los resultados obtenidos y trataremos de sacar conclusiones sobre el estado de las poblaciones de las distintas especies analizadas. La siguiente figura muestra, de manera resumida, los distintos ecosistemas con los que trabajaremos, así como una versión muy simplificada del flujo de trabajo que ejecutaremos o pondremos en práctica. 



![gradiente](https://raw.githubusercontent.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/refs/heads/main/imagenes/esquema_gradiente_alturas.png)




## Metodología docente propuesta
Esta práctica es, seguramente, la más compleja que tendremos durante la asignatura. Y lo es por tres razones:

+ Los objetivos docentes que nos planteamos son ambiciosos. Pero esto no es lo más complejo.
+ Vamos a tratar de cumplir nuestro objtetivo (generar un histograma para cada tipo de ecosistema) usando la "ingeniería inversa". Caracterizaremos un histograma e iremos dando pasos hacia atrás para tratar de aprender cómo se construye uno. Esto es habitual cuando uno se enfrenta a algo completamente nuevo. Aprenderemos esta técnica que será muy útil en vuestro desempeño profesional.
+ La última fuente de complejidad deriva de la forma en la que aprenderemos todo lo anterior. Yo, como profesor, no os daré instrucciones precisas sobre cómo proceder para satisfacer nuestro objetivo. Procederé como si fuera uno de vosotros. Simularé que no sé hacer el trabajo y, juntos, aprendremos a hacerlo. Es decir, avanzaremos en clase con la siguiente premisa: ¿qué haría yo (50 años) si tuviera el conocimiento de mis estudiantes y acceso a las mismas herramientas y datos que ellos?

Aunque sea complejo, esta aproximación docente tiene muchas ventajas:

- Estimula el razonamiento deductivo y el pensamiento crítico. Estas son habilidades básicas que tendréis que poner en práctica cada día cuando terminéis el grado. 
- La comprensión profunda de los procesos se alcanza antes si uno o una se enfrenta a los problemas desde su origen, simulando que es un caso real.
- Mejora en la transferibilidad a situaciones reales. Si aprendemos bien el método que propongo aquí, os resultará más fácil transferirlo a otras situaciones (por ejemplo, a vuestro TFG, para el que no falta tanto tiempo...).
- Mejora en la retención del conocimiento. Dicen que Confucio dijo algo así: *Me lo contaron y lo olvidé; lo vi y lo entendí; lo hice y lo aprendí*. Así que, según parece, nuestro cerebro retiene más eficazmente la información si pone en práctica el nuevo conocimiento adquirido. 

Para conseguir lo anterior nos apoyaremos en ChatGPT. Trataremos de establecer una conversación con esta IA. A partir de sus respuestas iremos elaborando un flujo de trabajo que nos permitirá crear nuestro histograma. Además, yo explicaré algunas cuestiones concretas que vayan saliendo de la repuesta de la IA. Se trata, en definitiva, de ir usando esta herramienta como una especie de profesor que va dándonos hilos de los que tirar. En [este](https://chatgpt.com/share/67177e0b-8d98-8009-ae7f-b83ea2a20f27) enlace se puede encontrar la conversación que mantenemos con ChatGPT. Se irá actualizando de forma automática. En las siguientes secciones comentamos con cierto detalle los aspectos que vamos viendo relevantes en la respuesta de ChatGPT.



## Flujos de trabajo

Un flujo de trabajo es una secuencia de acciones ordenadas cuya ejecución tiene un objetivo determinado. Esta definición tan genérica se puede particularizar más en nuestro ámbito de trabajo: secuencia de acciones que realizamos sobre un conjunto de datos para satisfacer un objetivo dado. En nuestro caso, el objetivo es responder a la pregunta descrita en la sección anterior.

Es importante que aprendamos a crear flujos de trabajo porque nos ayudan en el proceso de captura y análisis de la información ambiental. En esta sesión construiremos un flujo de trabajo para generar una gráfica. Pero la idea es que esta herramienta esté presente (de forma implícita) en las demás prácticas de la asignatura.

En los siguientes enlaces tienes información sobre flujos de trabajo. Recomiendo su lectura:

+ [El papel de los flujos de trabajo en la reproducibilidad de la ciencia.](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/main/biblio/how_to_flow.pdf) Es un texto sencillo que describe la importancia de los flujos de trabajo en la creación de conocimiento científico.
+ [Ejemplos de flujos de trabajo.](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/main/biblio/workflow_reusable.pdf) Este texto es algo más elabrado y describe distintos tipos de flujos de trabajo. 

Antes de empezar el ejercicio de preguntar a ChatGPT los estudiantes elaboraron una primera propuesta de flujo de trabajo. A pesar de su desconocimiento sobre los datos a utilizar, todos los grupos identificaron los pasos clave para crear un flujo de trabajo:

- Identificación de fuentes de datos relevantes.
- Procesamiento de la información generada en campo.
- Aplicación de algoritmos para generar el histograma.
- Discusión de los resultados mostrados en la gráfica.

A continuación se muestran algunos de esos flujos de trabajo creados por los estudiantes:


<iframe frameborder="0" style="width:100%;height:202px;" src="https://viewer.diagrams.net/?tags=%7B%7D&lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&title=flujo%20de%20trabajo%20ecologia%20(1).drawio#R%3Cmxfile%3E%3Cdiagram%20name%3D%22P%C3%A1gina-1%22%20id%3D%22Qn_8EMFkDG7PZ_AU8Ppi%22%3E7Zxdc5s4FIZ%2FjS93hm%2Fsy8RJ25ludzKTi529VODEaCsQFcKO8%2BtXGGFAiiN3Nq1lmxscDuLrHD280mucmb%2FMXz4zVGbfaApk5jnpy8y%2Fm3meG%2FiB%2BGgi2zYyD2VgxXAqG%2FWBR%2FwKMujIaI1TqEYNOaWE43IcTGhRQMJHMcQY3YybPVMyPmuJVqAFHhNE9OjfOOWZvAsv7uNfAK%2By7sxutGi35KhrLO%2BkylBKN4OQfz%2Fzl4xS3v6VvyyBNMnr8tLu9%2BnA1v2FMSj4MTv8KLz87uGfh%2Fir821TfP9rySn5w5dXu0aklncsr5ZvuxRAKjIiVynjGV3RApH7PnrLaF2k0JzHEWt9mz8pLUXQFcF%2FgfOtLC%2BqORWhjOdEbq04o99hSQllu3P68Xx%2Bc%2BOLLc%2B04IN4EAWL8K6JY0IG8Vtvubi5FXE9KzJRFa1ZAu%2BlQpaUI7YC%2Fl7DeduwycvgFDLrn4HmwNlWNGBAEMfrcU9CskOu9u36mok%2FZNl%2BpoSxVkJcrKHieIUSTAtxULFSp5hqlR3XbZNhDo8l2mVpI3D%2B7TVaA%2BPw8m5O5VY%2F9Ntd5GPF7yjb9JC6XSwbABo5v6gMgauV4WpJmh9JUuDYRdJcK2EKHFiOC8REnD6J3OM1rRo9A7EgqDnkGLYI5Q04xVNV7pM4RC6j%2BVNdmXE7VJafL%2FC4T30AfGGswOfq8M3fYG%2F%2By9jzJ%2FYUpMzseVax1133oIQD3AxQnS9KsWudjoUTSwoiZpYCu1jy3texnWxBVUKC4SoEa%2BHbJlj6mP1qIQuOhSyyC7JAKyEUSUMYVBckUK6jDvZOr1CTZ6EyYYbHLs%2Biu%2B5BCQlNEMGvbwiUA0WzaA4qRIxhTtlbXsYF6JQrlMouoQonV0NFyMhaaJerEeiuRsfaUY7FGeMUqOO%2Bk2tXODkVKiZmnuxyKkLdqRjNrl5FJTqDMK9BpBouVK0i1YQ%2FuVpN3oUKjZkuu7yL7roHJRS3nwBRmNKROmOQYnXYd3qdmgwKFRAzSXYZFKFuUKTwjAu8m2G1X2Ihvvv8UUO7ZJDvAgwSWmLS6NkV2IOeo7rwJxeyyeJQqTLjZ5fFEeoWRyKEDImRIq44TsQJvU9rxDB6IjD%2BRvmgNX%2BxMzXPte59jmhyPlSyjAhGdjkfoe58DIStU79rEDjftjc2oskHUaEx02WXDxK94YMcRdQZcxRa97pGNFkeXSriYy2PyC7Lo%2BN6OFIkqMLPYpB4ZToVdeaqNTo1%2BSAqNWa87PJBIt0H4WLOhS5Yp3zHUzg6vU5NjobKhxkkuxyNSHc0GOzf2Vgx1AjWbPdTLLGsm0XJqIjn6CLVyndj29RKn%2FDuy3K5D7t9Pq152MWTd6QObo0Pu%2FjDvSO56wPF4qL7MWbsK90lVLpBe09yt74n6EdaRIYjtTetHWnXp%2FZ39D%2B62cEZuLOfQKTHTB3O9meAXqxOGE7P%2FuRsqf3TzP6HO1sHiJ2biD0f9nXToAICSfNK39A1kO9MoC1lbf5gjYoEmwcER4%2FQ7HogLJzfNiYTq%2F2v99u69v8Dwb%2F%2FDw%3D%3D%3C%2Fdiagram%3E%3C%2Fmxfile%3E"></iframe>



![portada](https://raw.githubusercontent.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/refs/heads/main/imagenes/ejemplo_flujograma.jpg)






****

[Aquí](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/archive/refs/tags/2024_2025.zip) puedes descargar un archivo .zip que contiene este guión en formato html y todo el material que incluye.

****

Haz click [aquí](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/releases) para ver cómo ha cambiado este guión en los distintos cursos académicos.

****

 <p xmlns:cc="http://creativecommons.org/ns#" >El contenido de este repositorio se puede utilizar bajo la siguiente licencia:  <a  href="https://creativecommons.org/licenses/by-nc-sa/4.0/?ref=chooser-v1"  target="_blank" rel="license noopener noreferrer"  style="display:inline-block;">CC BY-NC-SA 4.0<img  style="height:22px!important;margin-left:3px;vertical-align:text-bottom;"   src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"  alt=""><img  style="height:22px!important;margin-left:3px;vertical-align:text-bottom;"   src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"  alt=""><img  style="height:22px!important;margin-left:3px;vertical-align:text-bottom;"   src="https://mirrors.creativecommons.org/presskit/icons/nc.svg?ref=chooser-v1"  alt=""><img  style="height:22px!important;margin-left:3px;vertical-align:text-bottom;"   src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1"  alt=""></a></p> 

<p>Esta licencia no aplica a enlaces a artículos, libros o imágenes no originales. Estos productos tienen su licencia correspondiente.</p>

