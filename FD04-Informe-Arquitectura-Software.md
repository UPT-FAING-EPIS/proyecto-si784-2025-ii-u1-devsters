# 📐 Informe de Arquitectura de Software
## Sistema de Voluntariado - Universidad Privada de Tacna (UPT)

---

### 🏛️ Encabezado del Documento

**Institución:** Universidad Privada de Tacna  
**Facultad:** Facultad de Ingeniería  
**Escuela:** Ingeniería de Sistemas  

**Curso:** Calidad y Pruebas de Software  
**Docente:** Ing. Mag. Patrick Jose Cuadros Quiroga  

**Proyecto:** Implementación de Sistema de Voluntariado UPT  
**Versión del Documento:** 1.0  
**Fecha:** Noviembre de 2025  

**Integrantes:**
- Víctor Williams Cruz Mamani — (2022073903)
- Diego Fernando Castillo Mamani — (2022073895)  
- Joan Cristian Medina Quispe — (2022073903)

**Ubicación:** Tacna – Perú, 2025

---

## 📋 Tabla de Contenidos

1. [Introducción](#introducción)
2. [Objetivos Arquitectónicos](#objetivos-arquitectónicos)
3. [Descripción General del Sistema](#descripción-general-del-sistema)
4. [Restricciones de Arquitectura](#restricciones-de-arquitectura)
5. [Patrones Arquitectónicos](#patrones-arquitectónicos)
6. [Vistas Arquitectónicas](#vistas-arquitectónicas)
7. [Componentes del Sistema](#componentes-del-sistema)
8. [Tecnologías y Herramientas](#tecnologías-y-herramientas)
9. [Decisiones Arquitectónicas](#decisiones-arquitectónicas)
10. [Calidad de Atributos](#calidad-de-atributos)
11. [Despliegue y Configuración](#despliegue-y-configuración)
12. [Seguridad](#seguridad)
13. [Bibliografía](#bibliografía)

---

## 1. Introducción

### Propósito

Este documento describe la arquitectura de software del **Sistema de Voluntariado UPT**, desarrollado como parte de la implementación de soluciones informáticas para la gestión de actividades de Responsabilidad Social Universitaria (RSU).

### Audiencia

Este documento está dirigido a:
- **Arquitectos de Software:** Para entender las decisiones y estructura general
- **Desarrolladores:** Para guiar la implementación
- **Docentes y Evaluadores:** Para validar el cumplimiento de estándares
- **Stakeholders:** Para comprender las capacidades técnicas del sistema

### Alcance

La arquitectura cubre todos los componentes del Sistema de Voluntariado UPT, incluyendo:
- Módulo de autenticación y usuarios
- Gestión de campañas de voluntariado
- Control de asistencia mediante códigos QR
- Generación de reportes y certificados digitales

---

## 2. Objetivos Arquitectónicos

### Objetivos Principales

1. **Escalabilidad:** Capacidad de crecer para soportar múltiples campañas y usuarios simultáneos
2. **Mantenibilidad:** Código limpio, documentado y fácil de modificar
3. **Seguridad:** Protección de datos sensibles de estudiantes e institucionales
4. **Confiabilidad:** Sistema robusto con recuperación ante fallos
5. **Usabilidad:** Interfaz intuitiva para diferentes tipos de usuarios
6. **Interoperabilidad:** Integración con sistemas institucionales existentes

### Objetivos de Negocio

- Automatizar procesos manuales de voluntariado
- Reducir tiempos de procesamiento
- Mejorar la transparencia en asignación de horas de voluntariado
- Facilitar la generación de reportes para análisis institucional

---

## 3. Descripción General del Sistema

### Contexto Operativo

El Sistema de Voluntariado UPT opera dentro del ecosistema académico de la Universidad Privada de Tacna, interactuando con:

- **Estudiantes:** Acceden al portal para inscribirse en campañas
- **Coordinadores RSU:** Gestionan campañas y verifican asistencia
- **Administradores:** Realizan configuraciones y gestión de usuarios
- **Sistema de Información Institucional:** Posible integración para sincronización de datos

### Usuarios y Roles

#### 1. Administrador del Sistema
- Gestión de usuarios (crear, editar, eliminar)
- Configuración del sistema
- Visualización de reportes generales

#### 2. Coordinador de RSU
- Crear y editar campañas de voluntariado
- Registrar asistencia mediante QR
- Descargar certificados
- Generar reportes de participación

#### 3. Estudiante
- Visualizar campañas disponibles
- Inscribirse en campañas
- Visualizar perfil y certificados obtenidos
- Consultar historial de participación

---

## 4. Restricciones de Arquitectura

### Restricciones Técnicas

1. **Plataforma:** Aplicación web basada en Java EE
2. **Servidor de Aplicaciones:** Apache Tomcat 10
3. **Base de Datos:** MySQL / MariaDB
4. **Navegadores Soportados:** Chrome, Firefox, Edge, Safari (versiones recientes)

### Restricciones de Negocio

1. **Disponibilidad:** Sistema debe estar disponible durante horarios académicos
2. **Tiempo de Respuesta:** Respuestas menores a 2 segundos para operaciones estándar
3. **Capacidad:** Soportar hasta 10,000 usuarios concurrentes
4. **Cumplimiento:** Adherencia a normas de privacidad y protección de datos

### Restricciones Organizacionales

1. **Presupuesto:** Limitado a herramientas de código abierto donde sea posible
2. **Recursos Humanos:** Equipo de 3 desarrolladores
3. **Tiempo de Implementación:** Ciclo académico de un semestre

---

## 5. Patrones Arquitectónicos

### Patrón Principal: Modelo-Vista-Controlador (MVC)

El sistema implementa el patrón MVC para separación de responsabilidades:

```
┌─────────────────────────────────────────────────┐
│            VISTA (Presentación)                 │
│  ├─ JSP (Java Server Pages)                    │
│  ├─ HTML5                                       │
│  ├─ CSS3 (Bootstrap 5.3)                       │
│  └─ JavaScript Vanilla                          │
└────────────────────┬────────────────────────────┘
                     │
                     │ Solicitudes HTTP
                     ↓
┌─────────────────────────────────────────────────┐
│         CONTROLADOR (Lógica de Control)         │
│  ├─ Servlets (HttpServlet)                     │
│  ├─ Enrutamiento de Requests                   │
│  ├─ Validación de Entrada                      │
│  └─ Gestión de Sesiones                        │
└────────────────────┬────────────────────────────┘
                     │
                     │ Llamadas a Métodos
                     ↓
┌─────────────────────────────────────────────────┐
│          MODELO (Lógica de Negocio)             │
│  ├─ Entidades (Entity Classes)                 │
│  ├─ Clases de Negocio (Business Logic)         │
│  ├─ Acceso a Datos (DAO Pattern)               │
│  └─ Conexión a Base de Datos                   │
└─────────────────────────────────────────────────┘
```

### Patrones Adicionales

#### 1. **Data Access Object (DAO)**
- Encapsula la lógica de acceso a datos
- Facilita cambios en la base de datos
- Mejora testabilidad

#### 2. **Business Delegate**
- Abstrae la lógica de negocio
- Centraliza validaciones
- Simplifica mantenimiento

#### 3. **Entity**
- Represenatación de objetos de negocio
- Mapeo con tablas de base de datos
- Serialización/Deserialización

---

## 6. Vistas Arquitectónicas

### 6.1. Vista Lógica

```
┌────────────────────────────────────────────────────────┐
│         CAPA DE PRESENTACIÓN (Web)                     │
├────────────────────────────────────────────────────────┤
│ • index.jsp                                            │
│ • administrador/                                       │
│   - menu_admin.jsp                                     │
│   - gestionar_usuarios.jsp                             │
│   - configuracion_sistema.jsp                          │
│   - reportes.jsp                                       │
│ • coordinador/                                         │
│   - menu_coordinador.jsp                               │
│   - crear_campana.jsp                                  │
│   - control_asistencia.jsp                             │
│   - escanear_qr.jsp                                    │
│   - certificados.jsp                                   │
│ • estudiantes/                                         │
│   - menu_estudiante.jsp                                │
│   - campañas.jsp                                       │
│   - inscripciones.jsp                                  │
│   - perfil.jsp                                         │
│   - certificados.jsp                                   │
└────────────────────────────────────────────────────────┘
                        ↕
┌────────────────────────────────────────────────────────┐
│    CAPA DE CONTROLADOR (Servlets)                      │
├────────────────────────────────────────────────────────┤
│ • UsuarioServlet                                       │
│ • CampanaServlet                                       │
│ • AsistenciaServlet                                    │
│ • QRCodeServlet                                        │
│ • CertificadoServlet                                   │
│ • InscripcionServlet                                   │
│ • ReporteAsistenciaServlet                             │
│ • ReporteGeneralServlet                                │
│ • GestionUsuarioServlet                                │
└────────────────────────────────────────────────────────┘
                        ↕
┌────────────────────────────────────────────────────────┐
│      CAPA DE NEGOCIO (Business Logic)                  │
├────────────────────────────────────────────────────────┤
│ • UsuarioNegocio                                       │
│ • CoordinadorNegocio                                   │
│ • EstudianteNegocio                                    │
│ • Validaciones                                         │
│ • Cálculos                                             │
└────────────────────────────────────────────────────────┘
                        ↕
┌────────────────────────────────────────────────────────┐
│    CAPA DE PERSISTENCIA (Entidades y DAO)              │
├────────────────────────────────────────────────────────┤
│ • Usuario                                              │
│ • Campana                                              │
│ • Asistencia                                           │
│ • Inscripcion                                          │
│ • ConexionDB (Connection Pool)                         │
└────────────────────────────────────────────────────────┘
                        ↕
┌────────────────────────────────────────────────────────┐
│         BASE DE DATOS (MySQL/MariaDB)                  │
├────────────────────────────────────────────────────────┤
│ • Tablas de datos                                      │
│ • Índices                                              │
│ • Procedimientos almacenados (opcional)                │
└────────────────────────────────────────────────────────┘
```

### 6.2. Vista Física/Despliegue

```
┌─────────────────────────────────────────────────────────┐
│                 CLIENTE (Navegador Web)                 │
│  ├─ HTTP/HTTPS                                         │
│  └─ Session Cookies                                    │
└─────────────────────┬───────────────────────────────────┘
                      │
                      │ TCP/IP - Puerto 8080
                      ↓
┌─────────────────────────────────────────────────────────┐
│          SERVIDOR DE APLICACIONES                       │
│          (Apache Tomcat 10)                             │
├─────────────────────────────────────────────────────────┤
│ ├─ Contenedor Web                                      │
│ ├─ Context: voluntariado-upt                           │
│ ├─ Manager de Sesiones                                │
│ └─ Gestor de Recursos                                  │
└─────────────────────┬───────────────────────────────────┘
                      │
                      │ JDBC - Puerto 3306
                      ↓
┌─────────────────────────────────────────────────────────┐
│           SERVIDOR DE BASE DE DATOS                     │
│           (MySQL / MariaDB)                             │
├─────────────────────────────────────────────────────────┤
│ ├─ Base de Datos: voluntariado_upt                     │
│ ├─ Tablas                                               │
│ ├─ Índices                                              │
│ └─ Logs                                                 │
└─────────────────────────────────────────────────────────┘
```

### 6.3. Vista de Procesos

#### Flujo de Autenticación

```
Usuario
  │
  ├─→ Ingresa credenciales
  │
  └─→ [LoginServlet]
       │
       ├─→ Valida entrada
       │
       ├─→ Consulta [UsuarioNegocio]
       │
       ├─→ Verifica contraseña
       │
       ├─→ Crea sesión
       │
       └─→ Redirige a dashboard
```

#### Flujo de Registro de Asistencia

```
Coordinador
  │
  ├─→ Accede a "Control de Asistencia"
  │
  ├─→ Escanea código QR
  │
  ├─→ [QRCodeServlet]
       │
       ├─→ Decodifica QR
       │
       ├─→ [AsistenciaServlet]
            │
            ├─→ Valida asistencia
            │
            ├─→ [AsistenciaNegocio]
            │
            ├─→ Registra en BD
            │
            └─→ Confirma operación
```

---

## 7. Componentes del Sistema

### 7.1. Componentes Principales

#### **Módulo de Autenticación**
- **Responsabilidad:** Gestionar credenciales y sesiones
- **Clases Principales:**
  - `UsuarioServlet`: Controlador de login/logout
  - `UsuarioNegocio`: Validación de credenciales
  - `Usuario`: Entidad de usuario

#### **Módulo de Gestión de Campañas**
- **Responsabilidad:** CRUD de campañas de voluntariado
- **Clases Principales:**
  - `CampanaServlet`: Controlador de campañas
  - `CoordinadorNegocio`: Lógica de negocio
  - `Campana`: Entidad campaña

#### **Módulo de Asistencia**
- **Responsabilidad:** Registro de asistencia con QR
- **Clases Principales:**
  - `QRCodeServlet`: Generación y lectura QR
  - `AsistenciaServlet`: Controlador de asistencia
  - `Asistencia`: Entidad asistencia

#### **Módulo de Certificados**
- **Responsabilidad:** Generación y descarga de certificados PDF
- **Clases Principales:**
  - `CertificadoServlet`: Controlador de certificados
  - `DescargarCertificadoServlet`: Descarga en PDF
  - Librería iText para generación

#### **Módulo de Reportes**
- **Responsabilidad:** Análisis y generación de reportes
- **Clases Principales:**
  - `ReporteAsistenciaServlet`: Reportes de asistencia
  - `ReporteGeneralServlet`: Reportes generales
  - `ReporteParticipacionServlet`: Reportes de participación
  - Librería Chart.js para gráficos

#### **Módulo de Gestión de Usuarios**
- **Responsabilidad:** Administración de usuarios del sistema
- **Clases Principales:**
  - `GestionUsuarioServlet`: Controlador de gestión
  - `UsuarioNegocio`: Lógica de gestión

---

## 8. Tecnologías y Herramientas

### 8.1. Tecnologías Backend

| Componente | Tecnología | Versión | Propósito |
|-----------|-----------|---------|----------|
| **Lenguaje** | Java | 8+ | Desarrollo backend |
| **Framework** | Java EE / Jakarta EE | 8 | Servlets, JSP |
| **Servidor** | Apache Tomcat | 10 | Contenedor web |
| **Base de Datos** | MySQL / MariaDB | 10.4+ | Almacenamiento |
| **Pool Conexiones** | Apache Commons DBCP | - | Gestión conexiones |

### 8.2. Tecnologías Frontend

| Componente | Tecnología | Versión | Propósito |
|-----------|-----------|---------|----------|
| **Markup** | HTML5 | 5 | Estructura |
| **Estilos** | CSS3 | 3 | Diseño responsivo |
| **Framework CSS** | Bootstrap | 5.3 | Componentes UI |
| **JavaScript** | Vanilla JS | ES6+ | Interactividad |
| **Gráficos** | Chart.js | 3.x | Visualización reportes |

### 8.3. Librerías y Componentes Externos

| Librería | Propósito | Versión |
|----------|----------|---------|
| **ZXing** | Generación/lectura QR | 3.4.x |
| **iText** | Generación PDF | 5.x |
| **Chart.js** | Gráficos estadísticos | 3.x |
| **Gson** | Serialización JSON | 2.8.x |
| **Servlet API** | API de servlets | 4.0 |

### 8.4. Herramientas de Desarrollo

| Herramienta | Uso |
|-----------|-----|
| **Apache NetBeans** | IDE de desarrollo |
| **Git** | Control de versiones |
| **GitHub** | Repositorio remoto |
| **Maven / Ant** | Build automation |
| **JUnit** | Testing unitario |

---

## 9. Decisiones Arquitectónicas

### Decisión 1: Uso del Patrón MVC

**Contexto:** Necesidad de separar presentación, lógica de negocio y datos  
**Opción Elegida:** Patrón MVC  
**Justificación:**
- Facilita mantenimiento y escalabilidad
- Mejora testabilidad
- Permite trabajo paralelo de desarrolladores
- Estándar en aplicaciones web Java

### Decisión 2: Servlets en lugar de Frameworks Web

**Contexto:** Framework elegido para desarrollo  
**Opción Elegida:** Servlets básicos + JSP  
**Justificación:**
- Parte del currículo de la asignatura
- Mejor comprensión de mecanismos HTTP
- Menor curva de aprendizaje
- Suficiente para alcance del proyecto

### Decisión 3: Base de Datos Relacional

**Contexto:** Persistencia de datos  
**Opción Elegida:** MySQL / MariaDB  
**Justificación:**
- RDBMS confiable y ampliamente usado
- Fácil de configurar y mantener
- Disponible en infraestructura institucional
- Costo de licencia cero

### Decisión 4: Generación de Códigos QR

**Contexto:** Necesidad de verificación automática de asistencia  
**Opción Elegida:** Librería ZXing  
**Justificación:**
- Ampliamente usada y documentada
- Soporta múltiples formatos de código
- Licencia Apache 2.0 (libre)

### Decisión 5: Generación de Certificados en PDF

**Contexto:** Necesidad de emitir certificados digitales  
**Opción Elegida:** Librería iText  
**Justificación:**
- Permite crear PDFs dinámicos
- Fácil de integrar con Java
- Generación rápida
- Certificados descargables

---

## 10. Calidad de Atributos

### 10.1. Escalabilidad

**Meta:** Soportar 10,000 usuarios concurrentes

**Implementación:**
- Pool de conexiones configurables
- Uso de índices en tablas principales
- Caché de sesiones
- Posibilidad de replicación de BD

### 10.2. Rendimiento

**Meta:** Tiempo de respuesta < 2 segundos

**Implementación:**
- Optimización de queries SQL
- Índices en campos frecuentemente consultados
- Caché a nivel de aplicación
- Compresión GZIP en responses

### 10.3. Confiabilidad

**Meta:** 99.5% disponibilidad

**Implementación:**
- Manejo de excepciones robusto
- Logging detallado
- Recuperación ante fallos
- Backups automáticos de BD

### 10.4. Seguridad

**Meta:** Protección de datos sensibles

**Implementación:**
- Autenticación mediante usuario/contraseña
- Contraseñas hasheadas (SHA-256 o bcrypt)
- Validación de sesiones
- Sanitización de inputs (prevención SQL Injection)
- Control de acceso por rol (RBAC)

### 10.5. Mantenibilidad

**Meta:** Código limpio y documentado

**Implementación:**
- Convenciones de nombre claras
- Separación de responsabilidades
- Documentación inline
- Comentarios en código complejo
- JavaDoc para métodos públicos

---

## 11. Despliegue y Configuración

### 11.1. Requisitos del Sistema

**Servidor:**
- OS: Linux / Windows Server
- CPU: 2+ cores
- RAM: 4 GB mínimo
- Disco: 50 GB para datos

**Software:**
- Java Development Kit (JDK) 8+
- Apache Tomcat 10
- MySQL / MariaDB 10.4+

### 11.2. Proceso de Despliegue

```bash
# 1. Compilar proyecto
mvn clean build

# 2. Generar WAR
mvn package

# 3. Copiar a Tomcat
cp voluntariado-upt.war $TOMCAT_HOME/webapps/

# 4. Iniciar Tomcat
$TOMCAT_HOME/bin/startup.sh

# 5. Verificar en navegador
http://localhost:8080/voluntariado-upt
```

### 11.3. Configuración de Base de Datos

```sql
-- Crear base de datos
CREATE DATABASE voluntariado_upt
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- Crear usuario
CREATE USER 'voluntariado_user'@'localhost' 
IDENTIFIED BY 'contraseña_segura';

-- Asignar permisos
GRANT ALL PRIVILEGES ON voluntariado_upt.* 
TO 'voluntariado_user'@'localhost';

FLUSH PRIVILEGES;
```

---

## 12. Seguridad

### 12.1. Autenticación

- **Método:** Usuario y contraseña
- **Almacenamiento:** Hash SHA-256 + salt
- **Expiración Sesión:** 30 minutos de inactividad

### 12.2. Autorización

| Rol | Permisos |
|-----|----------|
| **Administrador** | Gestión usuarios, Configuración, Reportes |
| **Coordinador** | Crear campañas, Registrar asistencia, Descargar certificados |
| **Estudiante** | Inscribirse, Consultar campañas, Ver certificados |

### 12.3. Protecciones contra Ataques

- **SQL Injection:** Prepared Statements
- **XSS:** Escaping de HTML
- **CSRF:** Tokens de sesión
- **HTTPS:** Conexión segura (recomendado en producción)

### 12.4. Privacidad de Datos

- Cumplimiento con GDPR/LGPD en la medida aplicable
- Logs auditables de acceso
- Respaldos seguros
- Política de retención de datos

---

## 13. Bibliografía

### Estándares y Normas

1. IEEE Std 830-1998 – Software Requirements Specifications
2. ISO/IEC 12207:2017 – Software Life Cycle Processes
3. ISO/IEC 25010:2011 – Software Quality Model
4. ISO/IEC/IEEE 42010:2011 – Architecture Description
5. OWASP Top 10 (2023) – Web Application Security Guidelines

### Referencias Técnicas

6. Fowler, M. (2002). *Patterns of Enterprise Application Architecture*
7. Gamma, E., et al. (1994). *Design Patterns: Elements of Reusable Object-Oriented Software*
8. Sommerville, I. (2015). *Software Engineering* (10th Edition)
9. Oracle. (2023). *Java EE Documentation*
10. Apache Foundation. (2023). *Tomcat Documentation*

### Recursos Online

- Java SE Documentation: https://docs.oracle.com/javase/
- Apache Tomcat: https://tomcat.apache.org/
- MySQL Documentation: https://dev.mysql.com/doc/
- Bootstrap Framework: https://getbootstrap.com/
- ZXing QR Code Library: https://github.com/zxing/zxing
- iText PDF Library: https://itextpdf.com/

---

## Notas Finales

Este informe de arquitectura proporciona una guía completa para la implementación del Sistema de Voluntariado UPT. Las decisiones arquitectónicas adoptadas buscan equilibrar entre simplicidad, escalabilidad y mantenibilidad, dentro de las restricciones técnicas y organizacionales del proyecto.

La arquitectura es flexible y permite futuras mejoras, como:
- Migración a microservicios
- Implementación de API REST
- Integración con sistemas externos
- Aplicación móvil nativa

---

**Versión:** 1.0  
**Última Actualización:** Noviembre 2025  
**Estado:** Aprobado  

> *"Una buena arquitectura es el cimiento de un software de calidad y sostenible en el tiempo."*
