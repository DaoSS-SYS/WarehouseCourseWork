# Warehouse server

Spring Boot REST API для информационно-справочной системы оптового склада.

## Технологии

- Java 21;
- Spring Boot 4;
- Spring Web;
- Spring Data JPA;
- Hibernate;
- PostgreSQL;
- Maven Wrapper.

## Настройка PostgreSQL

Параметры подключения передаются через переменные окружения:

```powershell
$env:DB_URL = "jdbc:postgresql://localhost:5432/warehouse"
$env:DB_USERNAME = "postgres"
$env:DB_PASSWORD = "ваш_пароль"
```

## Запуск

```powershell
.\mvnw.cmd spring-boot:run
```

По умолчанию API запускается на `http://localhost:8080/api`.

