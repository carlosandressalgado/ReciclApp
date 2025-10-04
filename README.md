#♻️ RecyclApp: El Reciclaje es un Juego
👋 ¡Bienvenido a RecyclApp!
RecyclApp es una aplicación móvil gamificada, inspirada en el modelo de Pokémon GO, que busca transformar el acto de reciclar en una experiencia divertida y gratificante. Nuestro objetivo principal es aumentar la participación ciudadana en el reciclaje, utilizando la tecnología para generar un impacto social, ambiental y económico positivo en comunidades como San Joaquín.

El proyecto se enfoca en hacer que la sostenibilidad sea accesible y motivadora para todos.

¿Cómo Funciona la Gamificación?
La aplicación incentiva a los usuarios a través de un sistema de recompensas simple y efectivo:

Mapa Interactivo: El usuario visualiza los puntos de reciclaje cercanos utilizando la geolocalización.

Validación QR: En el punto de reciclaje, escanea un código QR para validar su acción.

Puntos y Ranking: Por cada acción, el usuario gana puntos que se acumulan en su perfil y lo posicionan en un ranking.

Canje de Recompensas: Los puntos se canjean por descuentos o recompensas en comercios locales asociados.

🛠️ Tecnologías Utilizadas
Este proyecto se construye sobre un stack tecnológico moderno y eficiente que asegura el desarrollo multiplataforma y un backend robusto:

Componente	Tecnología	Propósito
Frontend/App Móvil	Flutter (Dart)	Desarrollo multiplataforma para iOS y Android desde una única base de código, reduciendo el tiempo de desarrollo.
Backend/Datos	Firebase	Utilizado para Autenticación (Auth), la base de datos NoSQL (Firestore) y la lógica del negocio en la nube (Cloud Functions).
Mapas y QR	Google Maps API	Integración del mapa interactivo y la geolocalización.

Exportar a Hojas de cálculo
💻 Guía de Instalación y Ejecución Local
Sigue estos pasos para clonar el repositorio y ejecutar RecyclApp en tu entorno de desarrollo local (se requiere tener Flutter SDK y Git instalados).

1. Requisitos Previos
Flutter SDK: Versión estable.

Git: Para clonar el repositorio.

Editor de Código: Recomendado Visual Studio Code o Android Studio.

Configuración de Firebase: Para una ejecución completa, deberás conectar tu propia instancia de Firebase y añadir los archivos de configuración (google-services.json para Android o GoogleService-Info.plist para iOS) en las carpetas correspondientes.

2. Clonar el Repositorio
Abre tu terminal o consola y ejecuta el siguiente comando:

Bash

git clone https://docs.github.com/es/repositories/creating-and-managing-repositories/quickstart-for-repositories
cd recyclapp
3. Instalar Dependencias
Dentro del directorio del proyecto, descarga e instala todas las dependencias necesarias:

Bash

flutter pub get
4. Ejecutar la Aplicación
Asegúrate de que tienes un emulador de Android/iOS o un dispositivo físico conectado. Luego, inicia la aplicación:

Bash

flutter run
✨ Funcionalidades Clave del MVP (Producto Mínimo Viable)
Autenticación de Usuarios: Registro y login de usuarios mediante Firebase Auth.

Visualización de Mapas: Mapa interactivo con geolocalización y marcadores para los puntos de reciclaje.

Validación de Reciclaje: Funcionalidad para escanear códigos QR.

Sistema de Puntos: Lógica para la acumulación y gestión de puntos en Firestore.

Canje de Recompensas: Pantalla dedicada para que los usuarios puedan canjear sus puntos por beneficios.
