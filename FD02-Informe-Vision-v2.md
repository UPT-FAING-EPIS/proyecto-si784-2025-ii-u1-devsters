# Wiki del Proyecto Voluntariado UPT

## Documentación y Guías

### Guía de Instalación Rápida
1. Clonar el repositorio:
   ```bash
   git clone https://github.com/UPT-FAING-EPIS/proyecto-si784-2025-ii-u1-devsters.git
   ```
2. Configurar base de datos:
   - Importar `bd_voluntariado.sql`
   - Configurar `context.xml` con credenciales

3. Desplegar en Tomcat:
   - Copiar .war a webapps/
   - Iniciar servidor

### Estructura del Proyecto
```
proyecto/
├── src/
│   ├── conexion/
│   ├── entidad/
│   ├── negocio/
│   └── servlet/
├── web/
│   ├── administrador/
│   ├── coordinador/
│   └── estudiantes/
└── terraform/
    ├── main.tf
    └── variables.tf
```

### Guías por Rol
- **Estudiantes**: Registro, inscripción y certificados
- **Coordinadores**: Gestión de campañas y asistencia
- **Administradores**: Configuración y reportes

## Contribución
1. Fork del repositorio
2. Crear branch feature/nombre-funcion
3. Commit con mensaje descriptivo
4. Push y Pull Request

## Stack Tecnológico
- Frontend: JSP + Bootstrap 5
- Backend: Java Servlets + MySQL
- Infraestructura: Azure (F1) + Elastika
- CI/CD: GitHub Actions

# RoadMap de Versiones

## Versión 1.0 (MVP - Completada)
- Autenticación básica de usuarios
- CRUD de campañas de voluntariado
- Registro de inscripciones
- Control de asistencia manual
- Certificados básicos en PDF

## Versión 2.0 (Actual)
- Integración con Azure App Service F1
- Base de datos en Elastika (MariaDB)
- Control de asistencia por QR
- Reportes estadísticos
- Gestión de cupos y listas de espera
- Implementación de Terraform para infraestructura

## Versión 3.0 (En planes)