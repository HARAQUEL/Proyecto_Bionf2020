### Raquel Hernández Austria, Mayo 2020
### Resumen y discusión de mi proyecto de Bioinformática


En este proyecto se llevó a cabo un ejercicio para trabajar con datos obtenidos con secuenciación de alto rendimiento; en este caso, con la técnica de representación reducida del genoma: secuenciación de DNA asociado a sitios de restricción (Restriction site associated 
DNA sequencing: RADseq). Los **objetivos** fueron: 1) Descargar los datos de internet, 2) Analizar la calidad de los datos con **FastQC** (un software que evalúa el control de calidad de datos obtenidos con secuenciaicón de alto rendimiento), 3) Limpiar y demultiplexear los datos con `process_radtags` de **Stacks**, y 4) Graficar el número de lecturas obtenidas en cada muestra en **RStudio**. 

Para cumplir con los objetivos se creó un script por cada objetivo, es decir, en cuatro scripts en total (se encuentran el directorio `bin`de este repositorio). La ejecución de los scripts se realizó en el clúster de la CONABIO así como en el de la Universidad de Chile, y en mi computadora. 

Los datos (también se explican en el directorio `data` de este repositorio) usados corresponden a un conjunto de datos de la especie de pez *Gasterosteus aculeatus* que fueron publicados originalmente por Catchen et al. (2013). Este conjunto de datos comprende 78 muestras de cuatro poblaciones a lo largo de la costa de Oregón (EE. UU.), de las cuales dos son oceánicas (Cushman Slough: cs, y South Jetty: sj), y dos son de agua dulce (Winchester Creek: wc y Pony Creek Reservoir : pcr). La biblioteca RAD-seq se preparó utilizando barcodes y se secuenció en una plataforma HiSeq 2000 con una longitud de lectura de 101 pb. Se secuenciaron cuatro lanes; en este proyecto únicamente se analizaron los datos de la lane 1.  

Los **resultados** del reporte de control de calidad hecho con FastQC por cada unas de las secuencias con extensión fq.gz de la lane 1 mostraron que tuvieron buena calidad; la mayoría tuvo más de 3 millones de secuencias con una longitud de secuencia de 101 pb (Fig. 1). únicamente una tuvo un valor por debajo de las anteriores (566575; Fig. 2).  

![](https://github.com/HARAQUEL/Proyecto_Bionf2020/blob/master/Figures/sequence_length_distribution_3.png)

**Figure 1**. Ejemplo del archivo lane1_NoIndex_L001_R1_001.fq.gz con 101 pares de bases y más de 3888416 secuencias totales.


![](https://github.com/HARAQUEL/Proyecto_Bionf2020/blob/master/Figures/sequence_length_distribution_5.png)

**Figure 2**. Ejemplo del archivo Lane1_NoIndex_L001_R1_010.fq.gz con 101 pares de bases pero y con 566575 secuencias totales. 



El número de lecturas por tipo de barcode fue alto; en total se retuvieron 28867508 de 35603570 (Tabla 1). 


**Tabla 1**. Número total de reads generados por muestras y cantidad de retenidos.

|Barcode      |Filename     |Total reads  |Retained     |
|-------------|-------------|-------------|-------------|
|CTCGCC       |sj_1819.35   |1346898      |1197918      |
|GACTCT       |sj_1819.31   |26185        |448          |
|GAGAGA       |sj_1819.32   |1061822      |930454       |
|GATCGT       |sj_1819.33   |1306694      |1155042      |
|GCAGAT       |sj_1819.34   |982500       |862997       |
|GCCGTA       |sj_1819.36   |1180712      |1047858      |
|GCGACC       |sj_1819.37   |977166       |873186       |
|GCGCTG       |sj_1819.38   |1540755      |1362947      |
|GCTCAA       |sj_1819.39   |1807653      |1607218      |
|GGACTT       |sj_1819.40   |1171425      |1038874      |
|GGCAAG       |sj_1819.41   |1238785      |1096461      |
|TCTCGG       |sj_1483.01   |928677       |824731       |
|TCTTCT       |sj_1483.02   |811515       |709555       |
|TGAACC       |sj_1483.03   |678885       |582383       |
|TGACAA       |sj_1483.04   |817723       |697396       |
|TGCCCG       |sj_1483.05   |18454        |339          |
|TGCTTA       |sj_1483.06   |915320       |804307       |
|TGGGGA       |sj_1484.01   |1927490      |1712170      |
|TTATGA       |sj_1484.02   |1865717      |1663233      |
|TTCCGT       |sj_1484.03   |2240673      |1997769      |
|TTCTAG       |sj_1484.04   |2022176      |1815177      |
|TTGAGC       |sj_1484.05   |1701985      |1528899      |
|TTTAAT       |sj_1484.06   |2480028      |2199430      |
|TTTGTC       |sj_1484.07   |3526590      |3158716      |
|             |Suma         |35603570     |28867508     |



Hubo dos muestras ('sj_1483.05' y 'sj_1819.31') que casi no tuvieron lecturas (solo 339 y 448, respectivamente; Tabla 1, Fig. 3), probablemente porque no se multiplexaron correctamente durante la construcción de la biblioteca (Rochette & Catchen, 2017).

![](https://github.com/HARAQUEL/Proyecto_Bionf2020/blob/master/Figures/Rplot_1.png)

**Figura 3**. Número de lecturas por muestra de la lane 1. Plot obtenido con ggplot2 en RStudio.

De manera general se concluye que los datos de la lane 1 mostraron buenos controles de calidad y que la limpieza y el demultiplexeo se realizó de manera satisfactoria. Con este proyecto se tiene la base para realizar otros análisis como el ensamblado de novo y posteriormente realizar análisis de genética de poblaciones con **Stacks**. Así también, sirve de referencia para revisar el control de calidad y la limpieza de otros datos que pudieran generase con RADseq. 

**Literatura citada**

Catchen, J., S. Bassham, T. Wilson, M. Currey, C.O'Brien, Q. Yeates & W.A. Cresko. 2013. The population structure and recent colonization history of Oregon threespine stickleback determined using restriction-site associated DNA-sequencing. Molecular Ecology 22, 2864–2883.
Rochette, N.C. & J.M. Catchen. 2017. Deriving genotypes from RAD-seq short-read data using Stacks. Nature Protocols 12, 2640–2659.
