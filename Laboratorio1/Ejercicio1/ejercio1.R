# Solano Vergaray Kevin Fernando 20151389I

#Pregunta 1

#(a) Crea y almacena una secuencia de valores del 5 al -11 que progesa en pasos 
   # de tamaño 0.3

	# usaremos el comando "seq" que sirve para generar secuencias regulares
	#el comando seq es "seq (from= a, to = b, by=c)", donde a esel primer numero de la secuencia
	# b es hasta donde puede llegar y c es la longitud que quieres que sea la serie

	    a <- seq(5,-11,by =-0.3)

	# vemos que comiensa desde 5 y termina en -11 siendo una sucesion decreciente de -0.3

#(b) Sobrescribe el objeto en (a) usando la misma secuencia con el orden invertido.

	#Ahora como es la secuencia invertida es una sucesion creciente de 0.3 que comienza 
	# de -11 a 5 

	    b <- seq(-11,5,by =0.3)

#(c) Repite el vector  > c(-1,3, -5,7, -9) dos veces, con cada elemento repetido 10 veces y almacena
   # el resultado. Visualiza el resultado ordenado de mayor a menor.

	#Usaremos un comando "rep" que repite el valores de "c" 
	#sea "rep(c=(X1,X2,...,Xn), times= a,each =b)" el comando siendo xi(i=1,..,n)los elementos del 
	#vector , a es las veces que se repitara el vector c y b es las veces q se repiten los elementos Xi

   	   c <- rep(c(-1,3,-5,7,-9), times= 2,each =10)

	#Ahora usaremos el comando "Sort" para ordenar de mayor a menor los elementos de "c"
	#sea "sort (c=(X1,X2,...,Xn), decreasing = TRUE)" como ya mencionado "c" es el vector y Xi sus 
	#elementos a ordenar, si "decreasing = TRUE" dice a la funcion que hornedar de mayor a menor pero
	#si ponemos en ves de "TRUE" ponemos  "FALSE" la funcion ordenara de manrea creciente

	   sort (c,decreasing = TRUE)


#(d) Crea y almacena un vector que contenga, en cualquier configuración, lo siguiente:
	#1)Una secuencia de enteros del 6 al 12 (inclusive).
	   #Del item (a) hemos visto "seq" como nos piden solo enteros entonces colocamos "by = 1"
	   # o lo omitimos y no colocamos nada ya que la funcion lo interpretara que el "by =1"

		 w <- seq (6,12)

	#2)Una repetición triple del valor 5.3.
	    #En este caso solo dice repetir tres veces asi que "times = 3" ya que tiene un elemento
	    # o tambien podemos poner "each =3" debido que es un vector de un solo elemento de cualquier
	    #forma el resultado sera el mismo 
		
	       x <-rep(5.3,times = 3)
          #Se coloco solo "time" pero al omitir "each",pero la funcion sobre entiende que su valor es 1
	    #lo mismo sera si solo colocamos "each=3" y omitimos "time"

	#3)El número -3.
	    #En este caso solo estamos determinando el valor de un vector
		y <-c(-3)
	
	#4)Una secuencia de nueve valores que comienza en 102 y termina en el número que es la
	#longitud total del vector creado en (c).
	   #En el item (a) vimos la funcion "seq" ahora si ponemos "length.out" en vez de "by" en  
	   #la funcion "seq (from= a, to = b, length.out=c)" ahora "c" es el valor de numeros que tiene que
	   #tener el vector que comienza de "a" hasta llegar a "b" teniendo una razon
		
		z<-seq(102, 100, length.out = 9)

	#5)Confirma que la longitud del vector creado en (d) es 20.
 	   #ahora usaremos "length(c(v1,V2,..,Vn))" que nos dice la longitud de un vector, pero como  
	   #hemos colocado "c(v1,V2,..,Vn)" que intermpreta la union de los vectores vi(i=1,..,n)

		 length(c(w,x,y,z))


