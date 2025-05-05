Algoritmo NotasEstudiantes
	dimension alumnos[10],edades[10],calificaciones[10]
	definir i, aprobados, desaprobados Como Entero
	definir suma, promedio, masAlta, masBaja Como Real
	
	suma <- 0
	aprobados <- 0
	desaprobados <- 0
	
	Para i <- 1 Hasta 10
		Escribir "nombre del estudiante ", i, ":"
		leer alumnos[i]
		
		Escribir "edad:"
		leer edades[i]
		
		Repetir
			Escribir "calificacion (0 a 20): "
			leer calificaciones[i]
		Hasta Que calificaciones[i] >= 0 y calificaciones[i] <= 20
		
		suma <- suma + calificaciones[i]
	FinPara
	
	promedio <- suma / 10
	masAlta <- calificaciones[1]
	masBaja <- calificaciones[1]
	
	
	Para i <- 1 hasta 10
		si calificaciones[i] >= 11 Entonces
			aprobados <- aprobados +1
		SiNo
			desaprobados <- desaprobados +1
		FinSi
		
		si calificaciones[i]> masAlta Entonces
			masAlta <- calificaciones[i]
		FinSi
		si calificaciones[i]< masBaja Entonces
			masBaja <- calificaciones[i]
		FinSi
	FinPara
	
	Escribir "promedio: ", promedio
	escribir "aprobados: ", aprobados
	Escribir "desaprobados: ",desaprobados
	Escribir "calificacion mas alta: ", masAlta
	Escribir "calificacion mas baja: ", masBaja
	
	
FinAlgoritmo
