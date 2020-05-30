### Raquel Hernández Austria, Mayo 2020
### Resumen y discusión de mi proyecto de Bioinformática


En este proyecto se llevó a cabo un ejercicio para trabajar con datos obtenidos con secuenciación de alto rendimiento; en este caso, con la técnica de representación reducida del genoma: secuenciación de DNA asociado a sitios de restricción (Restriction site associated 
DNA sequencing: RADseq). Los objetivos fueron: 1) Descargar los datos de internet, 2) Analizar la calidad de los datos con **FastQC** (un software que evalúa el control de calidad de datos obtenidos con secuenciaicón de alto rendimiento), 3) Limpiar y demultiplexear los datos con `process_radtags` de **Stacks**, y 4) Graficar el número de lecturas obtenidas en cada muestra en **RStudio**. 

Para cumplir con los objetivos se creó un script por cada objetivo, es decir, en cuatro scripts en total (se encuentran el directorio `bin`de este repositorio). La ejecución de los scripts se realizó en el clúster de la CONABIO así como en el de la Universidad de Chile, y en mi computadora. 

Los datos (también se explican en el directorio `data` de este repositorio) usados corresponden a un conjunto de datos de la especie de pez *Gasterosteus aculeatus* que fueron publicados originalmente por Catanchen et al. (2013). Este conjunto de datos comprende 78 muestras de cuatro poblaciones a lo largo de la costa de Oregón (EE. UU.), de las cuales dos son oceánicas (Cushman Slough: cs, y South Jetty: sj), y dos son de agua dulce (Winchester Creek: wc y Pony Creek Reservoir : pcr). La biblioteca RAD-seq se preparó utilizando barcodes y se secuenció en una plataforma HiSeq 2000 con una longitud de lectura de 101 pb. Se secuenciaron cuatro lanes; en ste proyecto únicamente se analizaron los datos de la lane 1.  



**Literatura citada**

Catanchen, J., S. Bassham, T. Wilson, M. Currey, C.O'Brien, Q. Yeates & W.A. Cresko. The population structure and recent colonization history of Oregon threespine stickleback determined using restriction-site associated DNA-sequencing. Molecular Ecology 22, 2864–2883.
