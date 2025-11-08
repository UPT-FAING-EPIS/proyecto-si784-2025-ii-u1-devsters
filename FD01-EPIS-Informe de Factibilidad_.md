Logo de Mi Empresa		![](Aspose.Words.aba879c8-6b49-4650-a23e-193d434a7555.001.png)

![C:\Users\EPIS\Documents\upt.png](Aspose.Words.aba879c8-6b49-4650-a23e-193d434a7555.002.png)

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
|1\.0|MPV|ELV|ARV|10/10/2020|Versión Original|


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
*La implementación del Sistema de Voluntariado UPT en la EPIS busca optimizar la gestión de iniciativas de responsabilidad social universitaria mediante una plataforma digital que centralice el registro, la organización y el control de campañas. El sistema permitirá la inscripción de estudiantes con cupos limitados y listas de espera, el control de asistencia mediante códigos QR y respaldo manual, así como la generación y validación de certificados digitales para los participantes.*

*Este proyecto se desarrollará bajo un enfoque de **automatización de infraestructura con Terraform**, lo cual facilitará la estandarización de servidores, bases de datos y redes necesarias para su funcionamiento. De esta manera, se garantizará la escalabilidad, confiabilidad y reducción de costos operativos, alineando la solución con las tendencias de infraestructura como código (IaC).*

## <a name="_heading=h.lgdl8qx0iaf3"></a>1.4 Objetivos
`       `1.4.1 Objetivo general

Implementar un sistema digital de voluntariado estudiantil en la EPIS que permita gestionar de manera eficiente las actividades de voluntariado mediante el uso de  tecnologías innovadoras, garantizando accesibilidad, transparencia y escalabilidad.

`        `1.4.2 Objetivos Específicos

1. *Desarrollar un portal web que permita a los estudiantes inscribirse en campañas de voluntariado, considerando cupos y listas de espera.*\

1. *Implementar un módulo de control de asistencia basado en códigos QR y con respaldo manual para garantizar fiabilidad.*\

1. *Generar certificados digitales verificables que respalden la participación de los estudiantes en actividades de voluntariado.*\

1. *Configurar la infraestructura tecnológica del sistema mediante **Terraform**, asegurando automatización, eficiencia y reducción de costos en los recursos de TI.*\

1. *Posicionar a la EPIS como referente en el uso de herramientas tecnológicas aplicadas a la responsabilidad social universitaria.*


1. # <a name="_heading=h.x5qougapy9by"></a>Riesgos

- <a name="_heading=h.lig8ou6az4zf"></a>*Posible resistencia de los usuarios a adoptar una nueva plataforma digital.*
- *Falta de conectividad a internet en algunas campañas de voluntariado.*
- *Riesgo de fallos en la infraestructura si no se cuenta con una configuración adecuada.*
- *Riesgo económico por costos adicionales de servidores en caso de sobrecarga.*
- *Posibles incidentes de seguridad relacionados con datos personales de los estudiantes.*




1. # <a name="_heading=h.y99qxoin3ssu"></a>Análisis de la Situación actual
   1. ## <a name="_heading=h.grb7nl5i498s"></a>Planteamiento del problema
      *Actualmente, la gestión de actividades de voluntariado en la EPIS se realiza de manera manual o descentralizada, lo que dificulta el control de la asistencia, la organización de campañas y la emisión de certificados. Esto genera retrasos, duplicidad de información y poca trazabilidad.*
   1. ## <a name="_heading=h.ascfukeo6oli"></a>Consideraciones de hardware y software
- ***Hardware existente**: servidores institucionales, PCs de laboratorio y equipos personales de los estudiantes.*\

- ***Software disponible**: sistema de gestión académica, correo institucional y plataformas en la nube.*\

- ***Tecnología propuesta**: Terraform para la automatización de la infraestructura, servidor en la nube para la plataforma web, base de datos MySQL y sistema de validación de certificados digitales.*

1. # <a name="_heading=h.ngbzecyqy49n"></a>Estudio de Factibilidad
   *{Describir los resultados que esperan alcanzar del estudio de factibilidad, las actividades que se realizaron para preparar la evaluación de factibilidad y por quién fue aprobado}*

   1. ## <a name="_heading=h.g7cdg2cnxc4s"></a>Factibilidad Técnica
      La universidad cuenta con conectividad estable y servidores que pueden ser escalados en la nube mediante Terraform. El uso de esta herramienta permite automatizar el despliegue de máquinas virtuales, balanceadores de carga y almacenamiento en la nube. Los estudiantes y docentes cuentan con competencias básicas en desarrollo de software y administración de sistemas, lo que permite un soporte técnico adecuado.

   1. ## <a name="_heading=h.e7l80s6qc2dq"></a>Factibilidad Económica

      *El costo principal del proyecto se centra en:*

- ***Servidores en la nube** (DigitalOcean/AWS/Elastika).*\

- ***Licencias y dominios web**.*\

- ***Personal de desarrollo** (3 meses).*\

- ***Capacitación básica en Terraform**.*\

|||
| :- | :- |
|||

*Se estima que los costos iniciales de infraestructura son menores en comparación con una implementación manual, ya que Terraform permite reutilizar plantillas y reducir tiempos de configuración.*

*Costeo del Proyecto: Consiste en estimar los costos de los recursos (Humanos, materiales o consumibles y/o máquinas) directos para completar las actividades del proyecto}.*

Definir los siguientes costos:

1. Costos Generales 

|***Concepto***|***Cantidad***|***Costo Unitario (S/.)***|***Subtotal (S/.)***|
| :-: | :-: | :-: | :-: |
|*Laptop/PC (uso del laboratorio)*|*2*|*0 (ya disponible)*|*0*|
|*Internet institucional*|*1*|*0 (ya disponible)*|*0*|
|*Papelería (hojas, plumones)*|*1 lote*|*50*|*50*|
|*Cartuchos de impresora*|*2*|*60*|*120*|
|*Dominio web (.com/.pe, anual)*|*1*|*120*|*120*|
|*Hosting inicial (3 meses)*|*1*|*200*|*200*|
|***Total Costos Generales***|||***490***|

1. Costos operativos durante el desarrollo 

|***Concepto***|***Cantidad***|***Costo Unitario (S/.)***|***Subtotal (S/.)***|
| :-: | :-: | :-: | :-: |
|*Energía eléctrica*|*3 meses*|*80*|*240*|
|*Agua y servicios*|*3 meses*|*20*|*60*|
|*Teléfono/Comunicación*|*3 meses*|*50*|*150*|
|***Total Operativo***|||***450***|


1. Costos del ambiente

|***Concepto***|***Cantidad***|***Costo Unitario (S/.)***|***Subtotal (S/.)***|
| :-: | :-: | :-: | :-: |
|*Servidor en la nube (AWS/Elastika, 2 vCPU, 4GB RAM, 80GB SSD)*|*1*|*280/mes*|*840*|
|*Almacenamiento adicional (backup)*|*1*|*100/mes*|*300*|
|*Certificado SSL (Let's Encrypt)*|*1*|*0 (gratuito)*|*0*|
|***Total Ambiente***|||***1,140***|


1. Costos de personal

|***Cargo***|***Cantidad***|***Salario Mensual (S/.)***|***Meses***|***Subtotal (S/.)***|
| :-: | :-: | :-: | :-: | :-: |
|*Líder de Proyecto*|*1*|*1,800*|*3*|*5,400*|
|*Desarrollador Backend*|*1*|*1,500*|*3*|*4,500*|
|*Desarrollador Frontend*|*1*|*1,200*|*3*|*3,600*|
|*Especialista en Infraestructura (Terraform/DevOps)*|*1*|*1,700*|*3*|*5,100*|
|***Total Personal***||||***18,600***|

1. Costos totales del desarrollo del sistema 

|***Categoría***|***Costo Total (S/.)***|
| :-: | :-: |
|*Costos Generales*|*490*|
|*Costos Operativos*|*450*|
|*Costos del Ambiente*|*1,140*|
|*Costos de Personal*|*18,600*|
|***Costo Total Final***|***20,680***|



1. ## <a name="_heading=h.n43fsve2z5h"></a>Factibilidad Operativa
   *El sistema beneficiará a estudiantes, docentes y personal administrativo, quienes podrán gestionar campañas de manera más ágil. La EPIS cuenta con el personal y las capacidades necesarias para mantener la plataforma operativa a largo plazo.*

1. ## <a name="_heading=h.smtc946ziiya"></a>Factibilidad Legal
   *El sistema cumplirá con la Ley de Protección de Datos Personales del Perú (Ley N.º 29733), asegurando la confidencialidad de la información de los estudiantes.*

1. ## <a name="_heading=h.x0tp2reoxbz0"></a>Factibilidad Social
   *El proyecto tiene un alto impacto positivo, ya que fomenta la cultura del voluntariado y fortalece la responsabilidad social universitaria.*

1. ## <a name="_heading=h.65d2qzhjhwkr"></a>Factibilidad Ambiental
   *El sistema digital contribuye a la reducción del uso de papel y materiales impresos, lo que genera un impacto ambiental positivo.*


1. # <a name="_heading=h.29n6u5a831pd"></a>Análisis Financiero
   *{El plan financiero se ocupa del análisis de ingresos y gastos asociados a cada proyecto, desde el punto de vista del instante temporal en que se producen. Su misión fundamental es detectar situaciones financieramente inadecuadas.*

   *Se tiene que estimar financieramente el resultado del proyecto.}*

   1. ## <a name="_heading=h.yitn1nv4sv2y"></a>Justificación de la Inversión

*5.1.1 Beneficios* del Proyecto

***Tangibles:***\


- *Reducción del uso de papel en un 70% (ahorro anual estimado de S/. 1,500).*\

- *Optimización en la gestión de campañas (ahorro de 20 horas/mes de trabajo administrativo ≈ S/. 600 mensuales).*\

- *Menor costo de configuración de servidores gracias a Terraform (reducción de 30% en horas de trabajo técnico).*\


***Intangibles:***\


- *Transparencia y confiabilidad en los certificados.*\

- *Mayor participación estudiantil en el voluntariado.*\

- *Posicionamiento institucional en el uso de tecnologías innovadoras.*


5\.1.2 Criterios de Inversión



*5.1.2.1 Relación Beneficio/Costo (B/C)*

*Beneficios proyectados ≈ S/. 28,000 anuales*

*Costos iniciales ≈ S/. 20,680*

*→ **B/C = 1.35 → Proyecto viable***

`                    `*5.1.2.2 Valor Actual Neto (VAN)*

*{Valor actual de los beneficios netos que genera el proyecto. Si el VAN es mayor que cero, se acepta el proyecto; si el VAN es igual a cero es indiferente aceptar o rechazar el proyecto y si el VAN es menor que cero se rechaza el proyecto}*

*Con un horizonte de 3 años y tasa de descuento del 10%, el VAN proyectado es positivo (≈ S/. 15,200).*

*5.1.2.3 Tasa Interna de Retorno (TIR)*

*{Es la tasa porcentual que indica la rentabilidad promedio anual que genera el capital invertido en el proyecto. Si la TIR es mayor que el costo de oportunidad se acepta el proyecto, si la TIR es igual al costo de oportunidad es indiferente aceptar o rechazar el proyecto, si la TIR es menor que el costo de oportunidad se rechaza el proyecto}*

*{Costo de oportunidad de capital (COK) es la tasa de interés que podría haber obtenido con el dinero invertido en el proyecto}*

*La TIR estimada es del 18%, mayor al costo de oportunidad del capital (10%).*

1. # <a name="_heading=h.qm454tcdjiu7"></a>Conclusiones
   *{Explicar los resultados del análisis de factibilidad que nos indican si el proyecto es viable y factible.}*


