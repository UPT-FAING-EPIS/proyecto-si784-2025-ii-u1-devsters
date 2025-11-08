Instrucciones rápidas para usar Terraform en este directorio

Requisitos previos
- Tener instalado terraform (v1.x o superior).
- Tener credenciales válidas de GCP para el proyecto deseado (service account con permisos necesarios o ADC).

Autenticación recomendada (elige una):
1) GOOGLE_CREDENTIALS (recomendado para CI):
   - Exporta la variable de entorno con el JSON de la llave del service account:
     - PowerShell (Windows):
       $env:GOOGLE_CREDENTIALS = Get-Content C:\path\to\key.json -Raw
     - Linux/macOS:
       export GOOGLE_CREDENTIALS="$(cat /path/to/key.json)"

2) Application Default Credentials (local dev):
   gcloud auth application-default login

3) Archivo de credenciales (menos recomendado):
   - No guardes la llave en el repo. Si la usas, pasa la ruta con la variable `credentials_file` y ajusta el provider.

Pasos básicos (PowerShell):

# inicializar el directorio de Terraform
terraform init

# validar la configuración
terraform validate

# ver un plan (se pedirá autenticación si no está configurada)
terraform plan -var "project_id=TU_PROJECT_ID"

# aplicar (revisar el plan antes de aplicar)
terraform apply -var "project_id=TU_PROJECT_ID"

Notas
- El archivo `variables.tf` contiene las variables necesarias: `project_id`, `region`, `firestore_location`.
- No se incluyeron credenciales en el repo. Configura autenticación como se indica arriba.
- Si quieres usar un backend remoto (ej. GCS) para el estado, puedo agregar un `backend.tf` con la configuración requerida.
