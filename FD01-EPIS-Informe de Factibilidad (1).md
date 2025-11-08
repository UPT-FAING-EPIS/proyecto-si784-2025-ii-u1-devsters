![](Aspose.Words.4eab529d-b355-4921-9f17-d0aac40a9e70.001.png)		![](Aspose.Words.4eab529d-b355-4921-9f17-d0aac40a9e70.002.png)

![C:\Users\EPIS\Documents\upt.png](Aspose.Words.4eab529d-b355-4921-9f17-d0aac40a9e70.003.png)

**UNIVERSIDAD PRIVADA DE TACNA**

**FACULTAD DE INGENIERÍA**

**Escuela Profesional de Ingeniería de Sistemas**


` `**Proyecto *Implementación de Sistema de Voluntariado UPT***

Curso: *Calidad y Pruebas de Software*


Docente: *Ing. Mag. Patrick Jose Cuadros Quiroga*

Integrantes:

***Est. Victor Williams, Cruz Mamani	(2022073903)***

***Est. Diego Fernando, Castillo Mamani	(2022073895)***

***Est. Joan Cristian, Medina Quispe	(2022073903)***



**Tacna – Perú**

***2025-II***













**Sistema *de Voluntariado UPT***

<a name="_heading=h.9xgsiiivrvb6"></a>**Informe de Factibilidad**

**Versión *1.0***















|CONTROL DE VERSIONES||||||
| :-: | :- | :- | :- | :- | :- |
|Versión|Hecha por|Revisada por|Aprobada por|Fecha|Motivo|
|1\.0|VCM|JMQ|PCQ|10/10/2025|Versión Original|


**ÍNDICE GENERAL**

[1. Descripción del Proyecto	4](#_heading=h.x4wahjoolsvd)

[1.1 Nombre del proyecto	4](#_heading=h.l2iibbwt0sgh)

[1.2 Duración del proyecto	4](#_heading=h.qkqe7kdy7vtk)

[1.3 Descripción	4](#_heading=h.uz8dazhynd45)

[1.4 Objetivos	4](#_heading=h.lgdl8qx0iaf3)

[2. Riesgos	5](#_heading=h.x5qougapy9by)

[3. Análisis de la Situación actual	6](#_heading=h.y99qxoin3ssu)

[3.1 Planteamiento del problema	6](#_heading=h.grb7nl5i498s)

[3.2 Consideraciones de hardware y software	6](#_heading=h.ascfukeo6oli)

[4. Estudio de Factibilidad	6](#_heading=h.ngbzecyqy49n)

[4.1 Factibilidad Técnica	6](#_heading=h.g7cdg2cnxc4s)

[4.2 Factibilidad Económica	6](#_heading=h.e7l80s6qc2dq)

[4.3 Factibilidad Operativa	9](#_heading=h.n43fsve2z5h)

[4.4 Factibilidad Legal	9](#_heading=h.smtc946ziiya)

[4.5 Factibilidad Social	9](#_heading=h.x0tp2reoxbz0)

[4.6 Factibilidad Ambiental	9](#_heading=h.65d2qzhjhwkr)

[5. Análisis Financiero	10](#_heading=h.29n6u5a831pd)

[5.1 Justificación de la Inversión	10](#_heading=h.yitn1nv4sv2y)

[6. Conclusiones	11](#_heading=h.qm454tcdjiu7)







**Informe de Factibilidad**

1. # <a name="_heading=h.x4wahjoolsvd"></a>Descripción del Proyecto
   1. ## <a name="_heading=h.l2iibbwt0sgh"></a>Nombre del proyecto
- Implementación de Sistema de Voluntariado UPT
  1. ## <a name="_heading=h.qkqe7kdy7vtk"></a>Duración del proyecto
- 3 meses
  1. ## <a name="_heading=h.uz8dazhynd45"></a>Descripción 
La implementación del Sistema de Voluntariado UPT en la EPIS busca optimizar la gestión de iniciativas de responsabilidad social universitaria mediante una plataforma digital que centralice el registro, la organización y el control de campañas. El sistema permitirá la inscripción de estudiantes con cupos limitados y listas de espera, el control de asistencia mediante códigos QR y respaldo manual, así como la generación y validación de certificados digitales para los participantes.

Este proyecto se desarrollará bajo un enfoque de **análisis de costos con Terraform**, lo cual facilitará el testeo de costos asociados para su funcionamiento. 
## <a name="_heading=h.lgdl8qx0iaf3"></a>1.4 Objetivos
`       `1.4.1 Objetivo general

Implementar un sistema digital de voluntariado estudiantil en la EPIS que permita gestionar de manera eficiente las actividades de voluntariado mediante el uso de  tecnologías innovadoras, garantizando accesibilidad, transparencia y escalabilidad.



`        `1.4.2 Objetivos Específicos

1. Desarrollar un portal web que permita a los estudiantes inscribirse en campañas de voluntariado, considerando cupos y listas de espera.
1. Implementar un módulo de control de asistencia basado en códigos QR y con respaldo manual para garantizar fiabilidad.
1. Generar certificados digitales verificables que respalden la participación de los estudiantes en actividades de voluntariado.
1. Configurar análisis de costos mediante **Terraform**, asegurando información de costos reales en el mercado respecto  los recursos de TI.
1. Posicionar a la EPIS como referente en el uso de herramientas tecnológicas aplicadas a la responsabilidad social universitaria.


1. # <a name="_heading=h.x5qougapy9by"></a>Riesgos

- <a name="_heading=h.lig8ou6az4zf"></a>Posible resistencia de los usuarios a adoptar una nueva plataforma digital.
- Falta de conectividad a internet en algunas campañas de voluntariado.
- Riesgo de fallos en la infraestructura si no se cuenta con una configuración adecuada.
- Riesgo económico por costos adicionales de servidores en caso de sobrecarga.
- Posibles incidentes de seguridad relacionados con datos personales de los estudiantes.


1. # <a name="_heading=h.y99qxoin3ssu"></a>Análisis de la Situación actual
   1. ## <a name="_heading=h.grb7nl5i498s"></a>Planteamiento del problema
      Actualmente, la gestión de actividades de voluntariado en la EPIS se realiza de manera manual o descentralizada, lo que dificulta el control de la asistencia, la organización de campañas y la emisión de certificados. Esto genera retrasos, duplicidad de información y poca trazabilidad.

   1. ## <a name="_heading=h.ascfukeo6oli"></a>Consideraciones de hardware y software
hardware:
|REQUISITOS MÍNIMOS DE HARDWARE||
| :-: | :- |
|Procesador|` `Intel Core i5 de 12.ª generación o AMD Ryzen 5 5600G (6 núcleos / 12 hilos)|
|Tarjeta Gráfica|GPU integrada (Intel UHD 770 o AMD Radeon Graphics)|
|RAM|16 GB DDR4|
|SSD NVMe PCIe Gen4|512 GB|

software:
|REQUISITOS MÍNIMOS DE SOFTWARE||
| :-: | :- |
|sistema operativo|windows 10 pro|
|servidor elastika( linux para Base de Datos)|S/. 20.00|
|azure para despliegue sistema|S/. 0.00|

- **Hardware existente**: servidores institucionales, PCs de laboratorio y equipos personales de los estudiantes.
- **Software disponible**: sistema de gestión académica, correo institucional y plataformas en la nube.
- **Tecnología propuesta**: Terraform para el análisis de costos de la tecnología a implementar.
1. # <a name="_heading=h.ngbzecyqy49n"></a>Estudio de Factibilidad


   1. ## <a name="_heading=h.g7cdg2cnxc4s"></a>Factibilidad Técnica
      La universidad cuenta con conectividad estable y servidores que pueden ser escalados en la nube mediante Terraform. El uso de esta herramienta permite automatizar el despliegue de máquinas virtuales, balanceadores de carga y almacenamiento en la nube. Los estudiantes y docentes cuentan con competencias básicas en desarrollo de software y administración de sistemas, lo que permite un soporte técnico adecuado.

      hardware y software que posee la Universidad:

|Equipos Tecnológicos actualizados |disponibles 24/7|
| :- | :- |
|Programas instalados|apoyan al desarrollo del software|
|internet|alta velocidad|

La factibilidad técnica evalúa los recursos, herramientas y tecnologías necesarias para implementar un sistema que permita optimizar el Voluntariado UPT.

Para ello, se presenta la siguiente propuesta para la viabilidad técnica:

- **Infraestructura Tecnológica**\

  - Servidores en la nube de Elastika(Linux) para alojar la Base de datos(MariaDB).
  - Servidor Azure para desplegar el sistema.

- **Recursos Humanos**\

  - Equipo de desarrollo de software con experiencia en aplicaciones escritorio y web.
  - Personal de soporte técnico encargado de mantenimiento preventivo y correctivo del sistema.
  - Capacitación a los gestores para el uso de la aplicación Web
- **Herramientas y Software**\


**GitHub Education Pack**

Como estudiante universitario, puedes acceder gratuitamente a beneficios como:

- GitHub Copilot Pro
- Dominios gratuitos (a través de partners)
- Créditos en servicios cloud (Azure, AWS, Google Cloud)
- Herramientas de desarrollo (JetBrains, DataCamp, etc.)
- Acceso solo con verificar tu cuenta con tu correo institucional (@upt.edu.pe).
- Dashboard administrativo web para registro y control de voluntariado UPT.
- **Viabilidad de Implementación**\

  - La Universidad ya cuenta con equipos tecnológicos(Computadoras) de última generación y la capacidad para implementar programas importantes que garantizan el desarrollo del sistema sin necesidad de grandes inversiones iniciales en hardware y software.
  - La infraestructura requerida puede escalarse progresivamente según la demanda (ejemplo: aumentar la capacidad del servidor cuando crezcan la cantidad de voluntarios).
  - La solución propuesta es compatible con la operación actual, permitiendo una transición gradual sin interrumpir el servicio.









1. ## <a name="_heading=h.e7l80s6qc2dq"></a>Factibilidad Económica

   *El costo principal del proyecto se centra en:*

- ***Servidores en la nube** (Elastika).*\


*Se estima que los costos iniciales de infraestructura son menores en comparación con una implementación manual, ya que Terraform permite reutilizar plantillas y reducir tiempos de configuración.*

Definir los siguientes costos:

1. Costos Generales 

|<p></p><p>***Concepto***</p>|<p></p><p>`    `***Cantidad***</p>|***Costo Unitario (S/.)***|<p>***Subtotal (S/.)*** </p><p>***3 meses***</p>|
| :-: | :-: | :- | :-: |
|*Laptop/PC (uso del laboratorio)*|*3*|*0.00*|*0.00*|
|*Servidor Azure*|*1*|*0.00*|*0.00*|
|*Servidor Elástika*|*1*|*20.00*|*60.00*|
|***Total Costos Generales***|***60.00***|||

1. Costos operativos durante el desarrollo 

|***Concepto***|***Costo Unitario (S/.) por mes***|***costo por 3 estudiantes(S/.) por mes***|***Subtotal (S/.)***|
| :- | :- | :- | :- |
|*Energía eléctrica*|*0.00*|*0.00*|*0.00*|
|*Agua y servicios*|*0.00*|*0.00*|*0.00*|
|*Internet institucional*|*0.00* |*0.00*|*0.00*|
|***Total Operativo***|***0.00***|||

1. Costos del ambiente

|***Concepto***|***Cantidad***|***Costo Unitario (S/.)***|***Subtotal (S/.)***|
| :-: | :- | :-: | :-: |
|*Servidor en la nube (Azure)*|*1*|*0.00*|*0.00*|
|*Almacenamiento adicional (backup)*|*1*|*0.00*|*0.00*|
|*Certificado SSL (Let's Encrypt)*|*1*|*0.00*|*0.00*|
|***Total Ambiente***|***0.00***|||


1. Costos de personal

|***Cargo***|***Cantidad***|***Salario Mensual (S/.)***|***Subtotal (S/.) x 3 meses***|
| :-: | :- | :- | :- |
|*Líder de Proyecto*|*1*|*0.00*|*0.00*|
|*Desarrollador Backend*|*1*|*0.00*|*0.00*|
|*Desarrollador Frontend*|*1*|*0.00*|*0.00*|
|***Total Personal***|***0.00***|||

1. Costos totales del desarrollo del sistema 

|***Categoría***|***costo x mes***|***Costo Total (S/.) x 3 meses***|
| :-: | :-: | :-: |
|*Costos Generales*|*20.00*|*60.00*|
|*Costos Operativos*|*0.00*|*0.00*|
|*Costos del Ambiente*|*0.00*|*0.00*|
|*Costos de Personal*|*0.00*|*0.00*|
|***Costo Total Final***|***20.00***|***60.00***|

1. ## <a name="_heading=h.n43fsve2z5h"></a>Factibilidad Operativa
   El sistema beneficiará a estudiantes, docentes y personal administrativo, quienes podrán gestionar campañas de manera más ágil. La EPIS cuenta con el personal y las capacidades necesarias para mantener la plataforma operativa a largo plazo.

Además, la infraestructura tecnológica existente en la universidad como las computadoras actualizadas, el soporte TI y la conectividad estable permite el desarrollo confiable de la aplicación sin requerir inversiones adicionales.

El equipo docente de la EPIS supervisará el proyecto como parte de las actividades de extensión universitaria y formación práctica, asegurando seguimiento académico y técnico.

La simplicidad del diseño de la interfaz y la documentación técnica generada durante el desarrollo facilitarán la capacitación de nuevos mantenedores (estudiantes de últimos ciclos), garantizando la continuidad del sistema más allá de la generación actual de desarrolladores.

Finalmente, este proyecto se alinea con las políticas institucionales de digitalización y responsabilidad social de la UPT, el sistema tiene un alto potencial de adopción formal por parte de las unidades operativas que gestionan voluntariado, lo que refuerza su utilidad real y su integración en los flujos de trabajo existentes.


1. ## <a name="_heading=h.smtc946ziiya"></a>Factibilidad Legal

   Como menciona la Ley de Protección de Datos Personales del Perú (Ley N.º 29733) que protege el derecho de las personas a controlar su información personal, estableciendo que deben tener conocimiento de los datos que se recopilan sobre ellas, así como el derecho a corregirlos, eliminarlos y oponerse a su uso. También obliga a las entidades públicas y privadas a adoptar medidas técnicas, administrativas y físicas para proteger estos datos, y define las infracciones y sanciones en caso de incumplimiento. El sistema cumplirá con ello, asegurando la confidencialidad de la información de los estudiantes.

|*Alineamiento con las políticas internas de la Universidad Privada de Tacna (UPT)*|El sistema se desarrollará en concordancia con el Reglamento de Seguridad de la Información y las políticas de tratamiento de datos de la Universidad Privada de Tacna (UPT), garantizando que su uso esté autorizado y supervisado por la EPIS. |
| :- | - |
|*Tratamiento limitado y con finalidad específica*|Los datos personales recolectados (nombre, código universitario, correo institucional, etc.) Se utilizarán exclusivamente para fines de gestión de campañas de voluntariado, sin fines comerciales ni transferencia a terceros, en estricto cumplimiento del principio de finalidad establecido en el Artículo 4 de la Ley N.º 29733.|
|<p><h4>*Derechos ARCO (Acceso, Rectificación, Cancelación y Oposición)*</h4></p><p></p>|La plataforma incluirá funcionalidades que permitan a los titulares de los datos ejercer sus derechos ARCO, tales como consultar sus datos registrados, solicitar correcciones o solicitar la eliminación de su información al finalizar su participación en campañas.|
|<h4>*No Uso de Datos Sensibles(raza étnica, religión, partido político)*</h4>|El sistema no recolectará datos sensibles (como origen étnico, salud, creencias religiosas o filiación política), salvo que sea estrictamente necesario y con autorización expresa y documentada, evitando así riesgos legales innecesarios.|
|<h4><a name="_heading=h.pu0njpf5kdx"></a>*Marco de Responsabilidad*</h4>|Los Estudiantes encargados del proyecto en coordinación de la EPIS, en coordinación con la Oficina de Responsabilidad Social o la unidad organizadora del voluntariado, actuará como encargada del tratamiento de los datos, bajo la supervisión de la UPT como responsable del tratamiento, en los términos definidos por la normativa peruana.|


1. ## <a name="_heading=h.x0tp2reoxbz0"></a>Factibilidad Social
El proyecto tiene un alto impacto social positivo, ya que no solo fomenta la cultura del voluntariado, sino que también facilita el acceso equitativo, transparente y oportuno a oportunidades de participación social para la escuela profesional de ingeniería de sistemas (EPIS).

Al centralizar y visibilizar las campañas de voluntariado en una única plataforma digital, se elimina la dispersión de información que suele limitar la participación de estudiantes de primeros ciclos o de ciclos más avanzados, promoviendo así la inclusión y la equidad en el compromiso social.

Además, el sistema fortalece los lazos entre la Universidad Privada de Tacna (UPT) y la escuela profesional de ingeniería de sistemas (EPIS), al facilitar la coordinación, seguimiento y reconocimiento formal de las acciones de voluntariado, lo que incrementa la confianza y la sostenibilidad de nuestra propuesta.

Desde una perspectiva formativa, el proyecto contribuye al desarrollo de competencias ciudadanas, éticas y de liderazgo en los estudiantes, alineándose con los perfiles de egreso de la UPT y con los principios de la educación superior comprometida con el entorno.

Finalmente, al sistematizar y dar visibilidad a las acciones de responsabilidad social, el sistema refuerza la identidad institucional de la UPT como una universidad comprometida con el desarrollo sostenible de la región de Tacna, en coherencia con su misión y visión institucional.



1. ## <a name="_heading=h.65d2qzhjhwkr"></a>Factibilidad Ambiental

El sistema digital contribuye a la reducción del uso de papel, tintas, fotocopias y otros materiales impresos tradicionalmente empleados en la gestión de campañas de voluntariado, lo que genera un impacto ambiental positivo al disminuir la demanda de recursos naturales, la generación de residuos sólidos y la huella de carbono asociada a la producción y transporte de insumos físicos.

Además, al centralizar la información en una plataforma en línea accesible desde dispositivos ya existentes (computadoras, laptops o teléfonos inteligentes), se evita la necesidad de imprimir formularios, listas de asistencia, informes de seguimiento o certificados en papel, promoviendo una cultura de trabajo digital y sostenible dentro de la comunidad universitaria.

El diseño del sistema prioriza la eficiencia en el consumo de recursos tecnológicos: al desarrollarse con tecnologías ligeras (Java,archivos.jsp, bases de datos (mariadb)) y alojarse en infraestructura institucional existente (sin requerir servidores dedicados ni centros de datos adicionales), se minimiza también el consumo energético indirecto.

En conjunto, el proyecto se alinea con los compromisos de la Universidad Privada de Tacna (UPT) en materia de desarrollo sostenible, digitalización responsable y Agenda 2030 (en particular con el Objetivo 12: Producción y consumo responsables), reforzando su viabilidad ambiental a corto y largo plazo. 


1. # <a name="_heading=h.29n6u5a831pd"></a>Análisis Financiero

   1. ## <a name="_heading=h.yitn1nv4sv2y"></a>Justificación de la Inversión

*5.1.1 Beneficios* del Proyecto

***Tangibles:***\


- *Reducción del uso de papel en un 70% (ahorro anual estimado de S/. 1,500).*\

- *Optimización en la gestión de campañas (ahorro de 20 horas/mes de trabajo administrativo ≈ S/. 600 mensuales).*\


***Intangibles:***\


- *Transparencia y confiabilidad en los certificados.*\

- *Mayor participación estudiantil en el voluntariado.*\

- *Posicionamiento institucional en el uso de tecnologías innovadoras.*

5\.1.2 Criterios de Inversión

![](Aspose.Words.4eab529d-b355-4921-9f17-d0aac40a9e70.004.png)

![](Aspose.Words.4eab529d-b355-4921-9f17-d0aac40a9e70.005.png)

![](Aspose.Words.4eab529d-b355-4921-9f17-d0aac40a9e70.006.png)

![](Aspose.Words.4eab529d-b355-4921-9f17-d0aac40a9e70.007.png)



*5.1.2.1 Relación Beneficio/Costo (B/C)*

*Beneficios proyectados ≈ S/. 3,835.82 anuales*

*Costos iniciales ≈ S/. 50.00*

*→ **B/C = 63.93 → Proyecto viable***

`                    `*5.1.2.2 Valor Actual Neto (VAN)*

*Con un horizonte de 3 años y tasa de descuento del 15%, el VAN proyectado es positivo  S/. 3,775.82*

*5.1.2.3 Tasa Interna de Retorno (TIR)*

El valor es muy superior al 15% de tasa de descuento siendo el valor en este caso del 2800%, lo que confirma que el rendimiento del proyecto es atractivo.
1. # <a name="_heading=h.qm454tcdjiu7"></a>Conclusiones
El proyecto es **técnicamente viable**, ya que la Universidad cuenta con la infraestructura tecnológica necesaria (servidores en la nube, conectividad estable, equipos actualizados) y con personal capacitado (estudiantes y docentes de la EPIS) para desarrollar, implementar y mantener el sistema. Además, se aprovechan herramientas como Terraform, GitHub Education Pack y servicios cloud gratuitos, lo que garantiza una implementación eficiente, escalable y compatible con las capacidades actuales.

El proyecto es **económicamente viable**, con un costo total estimado de solo S/. 60 durante los tres primeros meses, gracias al uso de recursos ya disponibles y a beneficios educativos gratuitos en la nube. Los beneficios proyectados (ahorros en papel y tiempo administrativo) superan ampliamente los costos iniciales, lo que se confirma mediante indicadores financieros positivos: una relación Beneficio/Costo de 63.93, un VAN positivo *S/. 3,775.82* y una TIR del 2800%

El sistema es **operativamente viable**, pues se integra de forma natural en los procesos existentes de la universidad, cuenta con apoyo institucional (docentes de la EPIS y unidades de voluntariado) y está diseñado para ser fácilmente adoptado y mantenido por futuras generaciones de estudiantes. La simplicidad del diseño y la documentación técnica aseguran sostenibilidad a largo plazo sin interrupciones en el servicio.

El sistema es **legalmente viable**, ya que el proyecto cumple plenamente con la normativa peruana en materia de protección de datos (Ley N.º 29733) y con las políticas internas de la UPT. Al limitar la recolección de datos al mínimo necesario, excluir información sensible, garantizar los derechos ARCO y definir claramente los roles de responsabilidad en el tratamiento de datos, se evitan riesgos legales y se asegura el respeto a la privacidad de los usuarios.

El sistema es **socialmente viable**, porque presenta un alto impacto social positivo, ya que promueve la equidad, transparencia y accesibilidad en la participación estudiantil en actividades de voluntariado. Además, fortalece la identidad institucional de la UPT como una universidad comprometida con la responsabilidad social y el desarrollo sostenible, alineándose con los valores formativos y la misión de la institución.

El proyecto es **ambientalmente sostenible**, al reducir significativamente el consumo de papel y otros recursos físicos mediante la digitalización de procesos. Su implementación en infraestructura existente y el uso de tecnologías eficientes minimizan el consumo energético, contribuyendo a la huella ecológica reducida y al cumplimiento de los principios de la Agenda 2030, especialmente el Objetivo 12 (Producción y Consumo Responsables).


