Algoritmo TransformacionesImagen2D
	
    Definir filas, columnas, i, j, opcion Como Entero
    Dimension imagen[20,20], resultado[20,20]
	
    Escribir "TRANSFORMACIONES DE IMAGENES 2D"
    Escribir Sin Saltar "Ingrese numero de filas: "
    Leer filas
    Escribir Sin Saltar "Ingrese numero de columnas: "
    Leer columnas
	
    Escribir "Ingrese los valores de la matriz:"
    Para i <- 1 Hasta filas Hacer
        Para j <- 1 Hasta columnas Hacer
            Escribir Sin Saltar "Posicion [",i,",",j,"]: "
            Leer imagen[i,j]
        FinPara
    FinPara
	
    Repetir
        Limpiar Pantalla
        Escribir "=== IMAGEN ORIGINAL ==="
        Para i <- 1 Hasta filas Hacer
            Para j <- 1 Hasta columnas Hacer
                Escribir Sin Saltar imagen[i,j], " "
            FinPara
            Escribir ""
        FinPara
		
        Escribir ""
        Escribir "1. Rotar 90 grados (derecha)"
        Escribir "2. Flip horizontal"
        Escribir "3. Flip vertical"
        Escribir "4. Transponer"
        Escribir "5. Salir"
        Escribir Sin Saltar "Elige una opcion: "
        Leer opcion
		
        Segun opcion Hacer
            1: // Rotar 90° derecha
                Para i <- 1 Hasta columnas Hacer
                    Para j <- 1 Hasta filas Hacer
                        resultado[i,j] <- imagen[filas+1-j,i]
                    FinPara
                FinPara
                Escribir "=== ROTADA 90 GRADOS ==="
                Para i <- 1 Hasta columnas Hacer
                    Para j <- 1 Hasta filas Hacer
                        Escribir Sin Saltar resultado[i,j], " "
                    FinPara
                    Escribir ""
                FinPara
				
            2: // Flip horizontal
                Para i <- 1 Hasta filas Hacer
                    Para j <- 1 Hasta columnas Hacer
                        resultado[i,j] <- imagen[filas+1-i,j]
                    FinPara
                FinPara
                Escribir "=== FLIP HORIZONTAL ==="
                Para i <- 1 Hasta filas Hacer
                    Para j <- 1 Hasta columnas Hacer
                        Escribir Sin Saltar resultado[i,j], " "
                    FinPara
                    Escribir ""
                FinPara
				
            3: // Flip vertical
                Para i <- 1 Hasta filas Hacer
                    Para j <- 1 Hasta columnas Hacer
                        resultado[i,j] <- imagen[i,columnas+1-j]
                    FinPara
                FinPara
                Escribir "=== FLIP VERTICAL ==="
                Para i <- 1 Hasta filas Hacer
                    Para j <- 1 Hasta columnas Hacer
                        Escribir Sin Saltar resultado[i,j], " "
                    FinPara
                    Escribir ""
                FinPara
				
            4: // Transponer
                Para i <- 1 Hasta filas Hacer
                    Para j <- 1 Hasta columnas Hacer
                        resultado[j,i] <- imagen[i,j]
                    FinPara
                FinPara
                Escribir "=== TRANSPUESTA ==="
                Para i <- 1 Hasta columnas Hacer
                    Para j <- 1 Hasta filas Hacer
                        Escribir Sin Saltar resultado[i,j], " "
                    FinPara
                    Escribir ""
                FinPara
				
            5:
                Escribir "¡Gracias por usar el programa!"
            De Otro Modo:
                Escribir "Opcion invalida"
        FinSegun
		
        Si opcion <> 5 Entonces
            Escribir ""
            Escribir "Presiona ENTER para continuar..."
            Leer temp
        FinSi
		
    Hasta Que opcion = 5
	
FinAlgoritmo