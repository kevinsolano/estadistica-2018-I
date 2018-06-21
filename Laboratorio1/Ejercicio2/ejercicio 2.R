# Solano Vergaray Kevin Fernando 20151389I
#laboratorio 1

#Pregunta 2
#(a) Construye y almacena una matriz 4 × 2 con sus valores ordenados por filas con los valores
# 4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6 y 6.5, en ese orden.
 #Usaremo para este caso la funcion "matrix" que nos ayuda a crear una matriz sinedo esta
 #"matrix(data=c(X1,X2,..,Xn),nrow = a, ncol = b ,byrow = TRUE)" siendo "data=c(X1,X2,..,Xn)"
 #los valor que tendra la matriz, "nrow=a" el numero de filas, "ncol=b" el numero de columnas
 #y "byrow = TRUE" la forma de oredenar para "TRUE" se ordenara por filas y para "TRUE" se ordenara
 # por columna

	a <- matrix(data=c(4.3,3.1,8.2,8.2,3.2,0.9,1.6,6.5),nrow = 4, ncol = 2,byrow = TRUE)

#(b) Confirma que las dimensiones de la matriz en (a) son 3 × 2 si se elimina una fila.
  #Usaremo para este caso la funcion "dim(X)" que nos ayudara a decir la dimencion de la matriz X
  # en este caso pondremos "dim(X[-a,-b])" , al colocar "-a" nos dice que eliminamos la fila "a" 
  #de la matriz X y "-b" elimina la columna "b" simepre que ponga,os un signo "-" adelante de un numero
  # entero pero esto no altera a la matriz X sigue teniendo sus valores determinados el cambio es solo 
  #para ese momento del calculo de la dimencion 

		dim(a[-3,])

#(c) Sobrescribe la segunda columna de la matriz en (a) con la misma columna ordenada de menor
#a mayor.
  # en la pregunta 1 ya vimos el operador "sort" que nos ayuda a ordenar los elemtos de un vector
  #ahora nos ayudara a odenar filas o columnas, si "sort(X[a,b])" para un valor entero de "a" y "b" 
  #solo lo borramos con eso solo ordenara la fila "a" pero si borramos "a" y le dalos un valor entero
  #a "b" entonces solo ordenara la columna "b"
  
       b <- sort(a[,2])
  # vemos que b es un vector de la segunda columna de a pero ordenado
       c <- a
 #tomamos un mtriz "c" que igualamos a "a" y despues replazamos la segunda columna 
 #con "b"
       c[,2] <- b

#(d) ¿Qué devuelve R si se elimina la cuarta fila y la primera columna de (c)?. Usa la función matrix
#para asegurarte que el resultado sea una matriz de una sola columna, en lugar de un vector.
  #primero nos creamos una matris borando la cuarta fila y la primera columna pero
       d<-c[-4,-1]
  #pero R lo lee como un vector asi que con "matrix" nos aseguramos que "d" sea un matriz
       
        d<- matrix(d,nrow = 3,ncol = 1)

#(e) Almacena los cuatro elementos inferiores de (c) como una nueva matriz 2 × 2.

#ahora de la misma forma que eliminamos una columna o fila haremos para este caso
# pero esta ves en una forma general V[c(-F1,-F2,..,-Fn),c(-C1,-C2,..,-C)]" con esto
# R tomara que eliminamos las n columna y las m filas ciendo FiyCj el numero de filas
#columnas que quiere eliminar de V siendo i=1,...,n ;j=1,..,m
        e <- c[c(-1,-2), ]

#(f) Sobrescribe, en este orden, los elementos de (c) en las posiciones (4, 2), (1, 2), (4, 1) y (1, 1)con
#-1/2 de los dos valores en la diagonal de (e).
   #ya sabemos como sobrescribir cobre un vector o matriz pero como dice que quiere la doagonal 
   # de la matriz del problema "e" en tonces usaremos diag(V) que R lo toma como un vector que
   # contiene los valores de la diagonal de "V" 
        
        c[c(4,1,4,1),c(2,2,1,1)] <- -1/2*diag(e)

#(g) para una matriz A verificar que A^-1 *A -I4 es una matriz de 4x4 de ceros

# primero definimos la matriz "g"
        g <- matrix(c(2,0,0,0,0,3,0,0,0,0,5,0,0,0,0,-1),nrow = 4, ncol = 4)
# si"solve(A)" es la una funcion que calcula la determinante de A seindo esta una matris de nxn
# y con "%*%" podemos multiplicar mtricilamente dos matrices y por ultimo con "diag(n)" 
# podemos generar matrises de orden nxn con eso ya podemos calcular lo que nos piden
        solve(g)%*%g - diag(4)
# nos generara una matriz de nula de orde 4x4
        



