# Analizando la estructura de las poblaciones más importantes de los ecosistema de Sierra Nevada

> + **_Tipo de material_**: <span style="display: inline-block; font-size: 12px; color: white; background-color: #4caf50; border-radius: 5px; padding: 5px; font-weight: bold;"> Prácticas</span> 
> + **_Versión_**: 2024-2025
> + **_Asignatura (grado)_**: Ecología (CCAA)
> + **_Autor_**: Curro Bonet-García (fjbonet@uco.es)
> + **_Duración_**: Cuatro sesiones de 1.5 horas cada una. Algunas horas más en casa. 

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

Para conseguir lo anterior nos apoyaremos en ChatGPT. Trataremos de establecer una conversación con esta IA. A partir de sus respuestas iremos elaborando un flujo de trabajo que nos permitirá crear nuestro histograma. Además, yo explicaré algunas cuestiones concretas que vayan saliendo de la repuesta de la IA. Se trata, en definitiva, de ir usando esta herramienta como una especie de profesor que va dándonos hilos de los que tirar. En [este](https://chatgpt.com/share/671f7083-8938-8009-9104-6a49fc3ef5eb) enlace se puede encontrar la conversación que mantenemos con ChatGPT. Se irá actualizando de forma automática. En las siguientes secciones comentamos con cierto detalle los aspectos que vamos viendo relevantes en la respuesta de ChatGPT.



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


<iframe frameborder="0" style="width:100%;height:302px;" src="https://viewer.diagrams.net/?tags=%7B%7D&lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&title=flujo%20de%20trabajo%20ecologia%20(1).drawio#R%3Cmxfile%3E%3Cdiagram%20name%3D%22P%C3%A1gina-1%22%20id%3D%22Qn_8EMFkDG7PZ_AU8Ppi%22%3E7Zxdc5s4FIZ%2FjS93hm%2Fsy8RJ25ludzKTi529VODEaCsQFcKO8%2BtXGGFAiiN3Nq1lmxscDuLrHD280mucmb%2FMXz4zVGbfaApk5jnpy8y%2Fm3meG%2FiB%2BGgi2zYyD2VgxXAqG%2FWBR%2FwKMujIaI1TqEYNOaWE43IcTGhRQMJHMcQY3YybPVMyPmuJVqAFHhNE9OjfOOWZvAsv7uNfAK%2By7sxutGi35KhrLO%2BkylBKN4OQfz%2Fzl4xS3v6VvyyBNMnr8tLu9%2BnA1v2FMSj4MTv8KLz87uGfh%2Fir821TfP9rySn5w5dXu0aklncsr5ZvuxRAKjIiVynjGV3RApH7PnrLaF2k0JzHEWt9mz8pLUXQFcF%2FgfOtLC%2BqORWhjOdEbq04o99hSQllu3P68Xx%2Bc%2BOLLc%2B04IN4EAWL8K6JY0IG8Vtvubi5FXE9KzJRFa1ZAu%2BlQpaUI7YC%2Fl7DeduwycvgFDLrn4HmwNlWNGBAEMfrcU9CskOu9u36mok%2FZNl%2BpoSxVkJcrKHieIUSTAtxULFSp5hqlR3XbZNhDo8l2mVpI3D%2B7TVaA%2BPw8m5O5VY%2F9Ntd5GPF7yjb9JC6XSwbABo5v6gMgauV4WpJmh9JUuDYRdJcK2EKHFiOC8REnD6J3OM1rRo9A7EgqDnkGLYI5Q04xVNV7pM4RC6j%2BVNdmXE7VJafL%2FC4T30AfGGswOfq8M3fYG%2F%2By9jzJ%2FYUpMzseVax1133oIQD3AxQnS9KsWudjoUTSwoiZpYCu1jy3texnWxBVUKC4SoEa%2BHbJlj6mP1qIQuOhSyyC7JAKyEUSUMYVBckUK6jDvZOr1CTZ6EyYYbHLs%2Biu%2B5BCQlNEMGvbwiUA0WzaA4qRIxhTtlbXsYF6JQrlMouoQonV0NFyMhaaJerEeiuRsfaUY7FGeMUqOO%2Bk2tXODkVKiZmnuxyKkLdqRjNrl5FJTqDMK9BpBouVK0i1YQ%2FuVpN3oUKjZkuu7yL7roHJRS3nwBRmNKROmOQYnXYd3qdmgwKFRAzSXYZFKFuUKTwjAu8m2G1X2Ihvvv8UUO7ZJDvAgwSWmLS6NkV2IOeo7rwJxeyyeJQqTLjZ5fFEeoWRyKEDImRIq44TsQJvU9rxDB6IjD%2BRvmgNX%2BxMzXPte59jmhyPlSyjAhGdjkfoe58DIStU79rEDjftjc2oskHUaEx02WXDxK94YMcRdQZcxRa97pGNFkeXSriYy2PyC7Lo%2BN6OFIkqMLPYpB4ZToVdeaqNTo1%2BSAqNWa87PJBIt0H4WLOhS5Yp3zHUzg6vU5NjobKhxkkuxyNSHc0GOzf2Vgx1AjWbPdTLLGsm0XJqIjn6CLVyndj29RKn%2FDuy3K5D7t9Pq152MWTd6QObo0Pu%2FjDvSO56wPF4qL7MWbsK90lVLpBe09yt74n6EdaRIYjtTetHWnXp%2FZ39D%2B62cEZuLOfQKTHTB3O9meAXqxOGE7P%2FuRsqf3TzP6HO1sHiJ2biD0f9nXToAICSfNK39A1kO9MoC1lbf5gjYoEmwcER4%2FQ7HogLJzfNiYTq%2F2v99u69v8Dwb%2F%2FDw%3D%3D%3C%2Fdiagram%3E%3C%2Fmxfile%3E"></iframe>



![flujograma1](https://raw.githubusercontent.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/refs/heads/main/imagenes/ejemplo_flujograma.png)


<iframe frameborder="0" style="width:100%;height:289px;" src="https://viewer.diagrams.net/?tags=%7B%7D&lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&title=Diagrama%20ecologia%201.drawio#R%3Cmxfile%3E%3Cdiagram%20id%3D%22C5RBs43oDa-KdzZeNtuy%22%20name%3D%22Page-1%22%3E7VptV%2BI6EP41nKMf8PSF14%2BloLIXQQWvd%2FdbaEPJGhq2DQj76%2B%2BkSSl9WV5U1N17PUdpJtNJMs%2FkmUmwZNqz1VWA5tMb5mJaMjR3VTLbJcPQK2YFPoRkLSWNqhJ4AXGVUiIYkp9YCTUlXRAXhylFzhjlZJ4WOsz3scNTMhQE7DmtNmE0PeoceTgnGDqI5qWPxOVTtQqjnsivMfGm8ch6rSl7ZihWVisJp8hlz1sis1My7YAxLp9mKxtT4bzYL4%2Fd9SPtPdWuvtyFP9BD669R%2F%2B%2ByNHZ5zCubJQTY529r2pCml4gulL%2FUWvk6dmDAFr6LhRGtZLamfEbhUYfH75jztQIcLTgDEQv4lHnMR7TH2FzpTZjPlZou2th3LQEstMeUOU9SdEkoVWNAS%2Bk3oBXygD1tsBMGNkAIZYrGmLaQ8%2BRFE7UZZQF0%2BczHwpQLwaDWkkyuk0hbB%2FpWYRCyReDgHXqmCnEUeHiXvZrUE%2FPbilOF3BVmM8yDNSgEmCJOlulgRmpPeBs99Sr4Fa23FOaM%2BDzcsnwrBKCgtvdml6rNrZuZGDpOHx7kDOLW1lISURSXR8SomYvRW2s46n6zep0hyNsd%2BGP1RhZ83Az68GmbpaZu7QhkEUTPU8LxcI4iNJ%2BB%2B9LBvR204L2WR1EYqpDbE5HHRdQSBxyvdsZA3FtNO7%2Bhms8JrekxV023KK2i%2FTpqtpA7HpjqfvLYv%2F9%2Ba3p5Y%2FKoHUge9QPJQwVOWbswUpFjKuSOI5eEDWIVNpmEMNGtODqWgMwMoUCQ7ySgPfqnIaBaLs7vO%2Fbgttuz7kHc7V8O7m8suxvxjtnP886UzcaLcD%2FnpAJPhPUlmhEqVnqN6RJz4qACZkKUeD40HIhBHBRHNAxJfA9ataQ1inZQufKOjKXXD6Ss5qkoq56DsjO87dhdkUNu7zvtwU23b%2FVHnT8ueZhGBopm9f2yh9Zr9qxvd5OGdce65evvd%2BhxtVnCruyRULkjXEictJ%2FTueM41%2B0lzy3HVAv8EsteyqEKl0olS2gZf8ukod7awYyVZgbgWsaQzCo5Qy8gyUI4DzhJ%2FA%2Fny%2BE03hnOfNF9aT30oaiuUfBYyyVLePR4hJMUCdJL4V37sWBxRzmM6FDU6LoxX8nXVH9s6Cy2BAnKL7Q03tRhZUcWYsJg4I3PjCrQGaxU2344j4xrGdWK7Adijj4rmlKLpjlRGVcow7hoJphdjX7FmAcTMrQh8sNspzRmBQRR%2BRiCUjnEAZlI88DTvKxytbBO8YQXumGvP%2FOvfEFjGBbKD6uNQzn8TwY7TT1HPbq3ILDppIQS3xGaciQIEDlYegIglkikxUeiQ3zChVOK5n2%2BZ6hfTywVf69J1afKtzk6NvKlT7OAh7Lb%2FM3SbSW%2FoXuD%2B6INfbYkjGKOosnDTGZozqLI0VwR%2FSHBUGLDg4%2BXyEXnvzMqm%2Brmo1A55Ah9wqy5fdIsnN%2Bh11Tvk13NevOi2kgjGJ9lj02wBbZMLWPrxDk2f660B%2F121%2B4O%2BtHNlt3r3gjubuijrm0NVYrpjbqjh7ZsdEb259xopg7erTeTnzRo9QMPHyfbd%2Flz4H%2BxWq02MknKTPbEsfupZmZsZQ%2BOJ95MjU%2FOpM1PjbxRfwXy2TNPga0Tg9%2FMgT%2ByWj1Rfn6F36t7yaKXwKL5oKCUzEP8cVSZ3ThGtXJRb2rJj5HjynphYFxUjBOxZXyI%2FSP8q%2Bv55FPs0Nd70%2FRvwrslbY16leDbYuxrVx1UcPF1ZrMZLBwFUbk9jmptL5DHtglxUHiec6s4Tqb9l7sHFi6Cl6mlOmbEdeVXLhhO42gcmRJMpy7pwW61Vaq2ha0FZ6G6wNzcWWa%2B%2B5gQSl%2F1dcjhEFbjemFzednI1w9FGJqnwjB%2F22UDfo5wfHQMD4Xn1WGbsznzAjSRPUgKXTzLCzF3ckB%2F0K7JXt1DbXwRp5n3qNoKvf7mpyVwWrD%2BRzQuqnHz63Zfe5VqrV9dG%2ByKpk9SG2S%2F5M%2FheWhhsHnxV5ehL64KoJn8341UT%2F57yez8Cw%3D%3D%3C%2Fdiagram%3E%3C%2Fmxfile%3E"></iframe>


![flujograma1](https://raw.githubusercontent.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/refs/heads/main/imagenes/ejemplo_flujograma_2.png)



## Resumen de aprendizajes que adquirimos en la conversación con ChatGPT

Como hemos dicho más arriba, en esta práctica aplicamos la técnica de la ingeniería inversa para "aprender a aprender". El elemento clave de este proceso será una conversación con ChatGPT. De ahí iremos sacando ideas interesantes (o hilos de los que tirar) cuya aplicación nos permitirá aprender a enfrentarnos a situaciones novedosas y complejas como la que nos ocupa ahora. 

Lo primero que preguntamos a ChatGPT en [esta](https://chatgpt.com/share/672ba3ed-0144-8009-85d1-b0bea4ac3a81) conversación es lo siguiente:

> Soy un estudiante de segundo de ciencias ambientales en una asignatura llamada ecología. Necesito generar un histograma que muestre la distribución de edades o tamaños en poblaciones de encinas en un territorio concreto (Sierra Nevada, España). Nunca he hecho esto antes y no sé cómo hacerlo. El profesor me pide que elabore un flujo de trabajo para obtener el resultado anterior. ¿puedes ayudarme proponiendo ese flujo de trabajo?
>
> En el flujo de trabajo muestra las posibles fuentes de datos (Reales) que podría utilizar, así como los procedimientos de agregación necesarios para hacer la gráfica.



En su respuesta, la IA nos propone varios pasos en el flujo de trabajo. Usamos dichos pasos o fases para nombrar las siguientes secciones. En ellas iré poniendo las ideas principales que vayan surgiendo en la conversación con la IA. Todos los apartados siguientes se estructuran de la misma forma:

+ *Contextualización*.  Un par de frases explicitando cómo ChatGPT nos ha traído a este apartado.
+ *Pregunta* que formulamos con relación a cada apartado.
+ *Respuesta*. Extracto de las respuesta más relevantes combinadas con otras búsquedas específicas que hacemos en internet. Este apartado y el anterior se repetirán tantas veces como preguntemos a ChatGPT en cada apartado.
+ *Aprendizajes*. Resumen de los principales aprendizajes que obtenemos.



### Recopilación de datos

+ *Contextualización*

La recopilación de información es, posiblemente, lo más complejo de abordar en un problema como el que nos planteamos. Los datos suelen estar mal documentados y no siempre están disponibles en internet. Por eso resulta difícil acceder a ellos si no tienes mucha experiencia. Creo que esta parte del flujo de trabajo es la única que no podríais completar por vuestra cuenta. 

Teniendo en cuenta lo anterior, ChatGPT menciona cuatro posibles fuentes de datos. A priori, la que parece más detallada es el llamado Inventario Forestal Nacional. Así que, trabajaremos unos minutos con esta fuente de datos y conversaremos con ChatGPT.

+ *Pregunta*

¿Cuál es la fuente de la que has sacado la información sobre el inventario forestal nacional (IFN)? ¿Cómo se accede a esa información?

+ *Respuesta*

Esta es la típica pregunta que ChatGPT no sabe contestar bien. Da respuestas ambiguas que no nos ayudan mucho. Esto se debe a que la información del IFN no está bien descrita en la web del ministerio. Está en formatos a los que ChatGPT no puede acceder. 

+ *Pregunta*

Cambiamos la estrategia y preguntamos por la estructura de dicho formato y por las variables que se miden en él.

* *Respuesta*

Ahora sí que obtenemos una respuesta completa y útil. ChatGPT detalla una serie de variables de interés para caracterizar la estructura de distintos ecosistemas forestales. Esto nos da una idea bastante buena de las variables que podríamos usar para generar la tabla a partir de la cual obtener el histograma que buscamos. 

+ *Pregunta*

Cambiamos un poco de tema y preguntamos a ChatGPT sobre la utilidad del IFN para ecosistemas no forestales.

¿Sirve el IFN para sistemas no forestales? Concretamente preguntamos por la utilidad de esta fuente de datos en ecosistemas como los pastizales alpinos o los enebrales dominados por *Juniperus*. 

+ *Respuesta*

La respuesta nos indica claramente que los inventarios forestales no son útiles para ecosistemas no forestales (obviamente). Además, y esto es muy interesante, ChatGPT aporta información valiosa sobre otros métodos que sí podrían ser útiles para caracterizar ecosistemas no forestales: transectos, muestreos por puntos, etc. También aporta información relevante sobre las variables que podrían medirse para caracterizar estos tipos de ecosistemas.

Teniendo en cuenta esta respuesta, tengo que confesar que los datos que usaremos para ecosistemas no forestales son datos falsos creados a partir de bibliografía y de trabajos científicos. Cuando construyamos el histograma con ellos obtendremos resultados parecidos a los que obtendríamos con datos reales. 

* *Pregunta*

Volvemos a preguntar sobre el IFN. En este caso preguntamos a ChatGPT sobre el procedimiento que podríamos seguir para obtener la tabla de conteos de individuos que necesitamos para elaborar un histograma a partir de los datos del IFN.

+ *Respuesta*

La respuesta que da ChatGPT en este caso es un buen ejemplo de respuesta ambigua poco útil. La IA muestra una serie de pasos generales que se pueden aplicar a casi cualquier conjunto de datos. Este tipo de respuestas nos deben hacer pensar que la IA no dispone de información real sobre la estructura de la información que necesitamos. Para reconfirmar esta sospecha volvemos a preguntar específicamente si ChatGPT tiene acceso a la estructura de la base de datos del IFN. La IA confiesa que no tiene acceso a esa información. Pero sí nos devuelve una lista de tablas que podrían formar parte del IFN. También describe los campos principales de dichas tablas. 

+ *Pregunta*

Esta pregunta no es obvia para los estudiantes. Las demás tampoco las han formulado ellos en realidad, pero podrían haberlo hecho. Esta, por el contrario, requiere conocer bien cómo se organizan los datos en una base de datos relacional. Le preguntamos a la IA sobre las herramientas que se usan para gestionar estos datos.

+ *Respuesta*

La respuesta de ChatGPT es clara: debemos usar SIG, lenguajes de programación (R y o Python) y bases de datos relacionales. 

*Aprendizajes*

+ Los inventarios forestales son herramientas muy valiosas para caracterizar la estructura de los bosques. [Este](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/refs/heads/main/biblio/Capitulo_16.pdf) capítulo de libro describe muy bien su estructura y utilidades. 
+ Es importante hacer preguntas concretas a las IAs.
+ Estas herramientas no son buenas (por ahora) para buscar contenidos en la web. Por eso, cuando preguntamos por una fuente de información, suelen dar respuestas genéricas poco útiles.
+ Es importante identificar las respuestas que son poco elaboradas. Cuando una IA incorpora palabras como "posiblemente" o dice que no tiene información sobre algo, normalmente el resto de su respuesta es como "marcarse un triple". Es decir, está probando suerte para ver si su respuesta nos resulta atractiva. 
+ Las bases de datos relacionales son herramientas fundamentales para almacenar información de todo tipo. Una base de datos consta de tablas (que, como recordamos son objetos digitales que nos permiten caracterizar elementos del mismo tipo) que se relacionan entre sí a través de un campo común. La tabla que describe ChatGPT de parcelas, por ejemplo, se relaciona con la de árboles a través del código de la parcela en la que está cada árbol. 

### Procesamiento de datos

*Contextualización*

Después de la charla anterior con ChatGPT concluimos que usaremos los datos del IFN, pero no tenemos tiempo ni conocimientos suficientes para procesar los datos en bruto (almacenados en varias tablas diferentes) y generar una tabla sencilla que contenga los datos que necesitamos para el inventario. Esta tabla deberá de tener tantas filas como árboles (hierba o arbustos) hayan sido medidos. Y también tendrá un campo que mostrará la especie del árbol en cuestión. Deberá de tener una estructura parecido a esto:

| Especie      | Tamanio |
| ------------ | ------- |
| Quercus ilex | 2,3     |
| Quercus ilex | 5,34    |
| Quercus ilex | 1,3     |

Yo he preparado las tablas necesarias para generar histogramas en todos los ecosistemas para los que los necesitamos. Estas tablas son las siguientes:

+ [alturas_pinus.zip](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/refs/heads/main/geoinfo/alturas_pinus.zip). Este archivo contiene los datos altura (en metros) de miles de pinos medidos en Sierra Nevada por el IFN. Esta tabla se usará para los pinares de repoblación. La tabla contiene los siguientes campos:
  + Especie: indica la especie del individuo cuyo tamaño se indica en el siguiente campo. Se incluyen valores de varias especies de pino presentes en Sierra Nevada. Los estudiantes de este grupo tendrán que decidir si hacen un histograma agregado para todas las especies o uno para cada especie. En este segundo caso tendrán que modificar ligeramente el código de R para filtrar por especie en la tabla. ChatGPT y yo estaremos encantados de ayudar en esto :)
  + Altura: se muestra la altura en metros del árbol medido.
+ [alturas_encinas.zip](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/refs/heads/main/geoinfo/alturas_encinas.zip). Este archivo contiene los datos altura (en metros) de miles de encinas medidas en los encinares de Sierra Nevada por el IFN. Esta tabla se usará para los encinares. La tabla contiene los siguientes campos:
  + Especie: indica la especie del individuo cuyo tamaño se indica en el siguiente campo. En todos los casos la especie es *Quercus ilex*.
  + Altura: se muestra la altura en metros del árbol medido.
+ [Area_enebros.zip](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/refs/heads/main/geoinfo/area_enebros.zip). Esta tabla contiene información del tamaño de cientos de enbros medidos en Sierra Nevada. En este caso, el tamaño de los individuos no se mide por su altura, sino por la superficie ocupada por el enebro. Esto se debe a que los enebros son especies que se extienden por el territorio en horizontal. Los datos han sido inferidos (usando ChatGPT) a partir de [este](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/refs/heads/main/biblio/estructura_edades_enebro.pdf) artículo científico. La tabla tiene los siguientes campos:
  + Especie: en todos los casos la especie es *Juniperus*, que es el género al que pertenece el enebro que vive en las partes altas de Sierra Nevada.
  + Tamaño_m2: se indica en metros cuadrados eel tamaño de los enebros medidos.
+ [Alturas_Populus.zip](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/refs/heads/main/geoinfo/Alturas_Populus.zip). En este caso esta tabla contiene información de alturas de árboles del género *Populus*. Son los chopos y álamos tan habituales en los bosques de ribera. Estos datos se usarán para generar el histograma de los bosques de ribera. Tiene los siguientes campos:
  + Especie: en este caso todos los registros tienen el valor de *Populus*.
  + Altura_m: indica la altura en metros de cada árbol.
+ [Tamaños_festuca.zip](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/raw/refs/heads/main/geoinfo/tamanios_festuca.zip):  Esta tabla, generada artificialmente, se usará para generar el histograma de los pastizales alpinos. Tiene un único campo (tamaño_m) que muestra el tamaño en horizontal de las plantas de la especie *Festuca indigesta*, que es una de las dominantes de los pastizales alpinos de Sierra Nevada.



### Creación del histograma y visualización de resultados

*Contextualización*

En esta fase final de la práctica (al fin), vamos a preguntar a ChatGPT cómo se construye un histograma usando R. Pero antes de eso, os cuento por aquí algunas cosas generales de este lenguaje de programación.

R es uno de los lenguajes de programación más usados en el ámbito científico. Tiene funciones para realizar análisis estadísticos, dibujar distintos tipos de gráficas, procesar información georreferenciada y muchas otras cosas más. Como cualquier lenguaje de programación, R se parece mucho a un idioma. Tiene sus normas (sintaxis), sus tipos de "palabras" (funciones, parámetros, etc.) y también tiene una forma particular de almacenar tipos de datos. En esta sección nos familiarizaremos un poco con algunos elementos de R. Iremos aprendiendo poco a poco usando algunas de sus funciones.

Como en casi todos los lenguajes de programación, en R se suele trabajar usando la consola. Es esa pantalla negra que se usa frecuentemente en las películas de hackers en la que se escriben órdenes para que el ordenador trabaje. Este entorno de trabajo es un poco árido, por lo que se han desarrollado otros entornos que facilitan el trabajo porque aportan ventanas para visualizar los datos creados o importados, para ver los gráficos o para desplegar un programa (script) completo e ir ejecutándolo paso a paso (o a la vez). En nuestro caso usaremos una aplicación llamada RStudio. Es un entorno de desarrollo muy utilizado en R. Pero tenemos un problema: RStudio no está instalado en los ordenadores de la UCO. Por eso usaremos dos entornos de trabajo:

+ Los alumnos que trabajen en los ordenadores de la UCO tendrán que usar directamente R en modo consola. Para trabajar con el script que crearemos usarán la aplicación Notepad+ que mostrará las líneas de código que vamos a ir obteniendo de ChatGPT. A la derecha (en Notepad+) iremos creando el programa y a la izquierda iremos copiando y pegando las líneas para ir ejecutándolo paso a paso.  Su pantalla deberá de tener un aspecto parecido a esto:

![R_UCO](https://raw.githubusercontent.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/refs/heads/main/imagenes/entorno_UCO.png)



- Los estudiantes que usen su ordenador podrán trabajar con RStudio, que tiene una interfaz como se muestra en la imagen posterior. En el cuadrante superior izquierdo iremos creando el programa que se irá ejecutando línea a línea en el terminal que hay en el cuadrante inferior izquierdo. Conforme vayamos creando datos y tablas, se mostrarán en el cuadrante de arriba a la derecha. Abajo a la derecha se mostrará finalmente el histograma. Para instalar R y RStudio hay que seguir las instrucciones que se indican en [esta](https://posit.co/download/rstudio-desktop/) página. Primero hay que instalar R (opción 1: install R) y luego RStudio (2: Install RSstudio)

![RStudio](https://raw.githubusercontent.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/refs/heads/main/imagenes/entorno_RStudio.png)



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
+ Para facilitar vuestro trabajo, dejo aquí el script (=programa) completo que tenéis que ejecutar para generar el histograma. Solo tenéis que cambiar la ruta de acceso al archivo con los datos, el tamaño de la barra y los nombres de los archivos importados en función del ecosistema con el que estéis trabajando. 




### Interpretación de los resultados

*Contextualización*



*Pregunta*



*Respuesta*



*Aprendizajes*







## Cronología de la práctica

La metodología de ingeniería inversa que hemos usado ha hecho que sea difícil planificar a priori la temporalidad de los conceptos estudiados. Por eso en esta sección se describe cómo discurrió la práctica y cuánto tiempo duró cada sección.


+ Primera sesión:
  + Planteamiento de objetivos.
  + Contextualización ecológica.
  + Breve introducción al concepto de tabla.
  + Breve introducción al concepto de flujo de trabajo.
  + Los estudiantes generan una primera versión de un flujo de trabajo.
+ Segunda sesión:
  + Trabajo para mejorar la comunicación entre profesor y estudiantes. Esto está un poco al margen del objetivo concreto de esta práctica, pero fue relevante y necesario hacerlo en este momento.
  + Iniciamos la conversación con ChagGPT para construir nuestro histograma.
+ Tercera sesión
  + Enlazamos una serie de preguntas a ChatGPT sobre la estructura de datos del IFN.
  + Hablamos un poco de bases de datos relacionales.
  + Los estudiantes descargan las tablas de datos que usaremos para generar los histogramas.
+ Cuarta sesión
  + Generamos el código para hacer el histograma usando ChatGPT
+ Quinta sesión (virtual y en casa). Esta última versión será realizada por los estudiantes de manera individual o grupal en casa o donde quieran. La idea es que ejecutéis el código de R adaptado a vuestros conjuntos de datos y que compartáis los resultados por Teams. También es importante que interpretéis dichos resultados según lo indicado en el apartado anterior llamado "interpretación de los resultados".











****

[Aquí](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/archive/refs/tags/2024_2025.zip) puedes descargar un archivo .zip que contiene este guión en formato html y todo el material que incluye.

****

Haz click [aquí](https://github.com/aprendiendo-cosas/P_estructura_pobs_ecologia_CCAA/releases) para ver cómo ha cambiado este guión en los distintos cursos académicos.

****

 <p xmlns:cc="http://creativecommons.org/ns#" >El contenido de este repositorio se puede utilizar bajo la siguiente licencia:  <a  href="https://creativecommons.org/licenses/by-nc-sa/4.0/?ref=chooser-v1"  target="_blank" rel="license noopener noreferrer"  style="display:inline-block;">CC BY-NC-SA 4.0<img  style="height:22px!important;margin-left:3px;vertical-align:text-bottom;"   src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"  alt=""><img  style="height:22px!important;margin-left:3px;vertical-align:text-bottom;"   src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"  alt=""><img  style="height:22px!important;margin-left:3px;vertical-align:text-bottom;"   src="https://mirrors.creativecommons.org/presskit/icons/nc.svg?ref=chooser-v1"  alt=""><img  style="height:22px!important;margin-left:3px;vertical-align:text-bottom;"   src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1"  alt=""></a></p> 

<p>Esta licencia no aplica a enlaces a artículos, libros o imágenes no originales. Estos productos tienen su licencia correspondiente.</p>
