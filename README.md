# 🎮 Minecraft Server --- Raspberry Pi 5

Servidor de Minecraft optimizado para correr en una Raspberry Pi 5, con
manejo mediante Git, scripts automatizados y despliegue limpio.\
Este repositorio contiene **configuraciones, scripts y documentación**,
pero **no** incluye mundos, logs ni binarios pesados.

## 🚀 Características principales

-   ✔ Servidor **PaperMC**, ideal para rendimiento en ARM64\
-   ✔ Scripts para instalar, iniciar, detener, actualizar y respaldar el
    servidor\
-   ✔ Configuraciones versionadas y organizadas\
-   ✔ Servicio *systemd* opcional para arranque automático\
-   ✔ Estructura limpia y escalable\
-   ✔ Compatible con Git y despliegues rápidos en la Raspberry Pi

## 📁 Estructura del repositorio

    minecraft-rbpi-server/
    │
    ├── server/
    │   ├── server.properties
    │   ├── whitelist.json
    │   ├── ops.json
    │   ├── banned-players.json
    │   ├── banned-ips.json
    │   └── plugins/
    │
    ├── scripts/
    │   ├── install.sh
    │   ├── start.sh
    │   ├── stop.sh
    │   ├── restart.sh
    │   ├── update.sh
    │   └── backup-world.sh
    │
    ├── systemd/
    │   └── minecraft.service
    │
    ├── docs/
    │   ├── setup.md
    │   ├── mantenimiento.md
    │   └── configuraciones-avanzadas.md
    │
    ├── .gitignore
    └── README.md

## ⚙️ Requisitos

-   Raspberry Pi 5\
-   Raspberry Pi OS 64-bit\
-   Java 17+\
-   Conexión a internet\
-   Git instalado

## 🛠️ Instalación

``` bash
git clone https://github.com/tuusuario/minecraft-rbpi-server.git
cd minecraft-rbpi-server/scripts
chmod +x install.sh
./install.sh
```

## ▶️ Uso básico

``` bash
./scripts/start.sh
./scripts/stop.sh
./scripts/restart.sh
./scripts/update.sh
./scripts/backup-world.sh
```

## 🔧 Arranque automático

``` bash
sudo cp systemd/minecraft.service /etc/systemd/system/
sudo systemctl enable minecraft
sudo systemctl start minecraft
```

## 🧠 Buenas prácticas

-   No subir el mundo ni logs\
-   Mantener scripts y configs limpios\
-   Hacer git pull antes de reiniciar\
-   Documentar cambios en docs/

## 🏰 Notas del Administrador

Este repositorio está diseñado para un servidor estable, rápido y fácil
de restaurar.
