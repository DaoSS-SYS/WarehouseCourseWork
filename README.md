# Warehouse

Учебная информационно-справочная система оптового склада. Проект объединяет базу данных PostgreSQL, REST API на Spring Boot и настольный JavaFX-клиент.

## Архитектура

```text
JavaFX client
      ↓ HTTP / JSON
Spring Boot REST API
      ↓ Spring Data JPA / Hibernate
PostgreSQL
```

## Структура репозитория

```text
Warehouse/
├── client/      # JavaFX-клиент
├── server/      # Spring Boot REST API
├── database/    # PostgreSQL schema and seed data
├── .gitignore
└── README.md
```

## Возможности

- управление категориями и товарами;
- управление контрагентами, сотрудниками и должностями;
- учёт поступлений, отгрузок и списаний;
- автоматический пересчёт складских остатков;
- фильтрация и сортировка складских операций;
- проверка бизнес-ограничений;
- просмотр статистики по остаткам.

## Технологии

### Server

- Java 21;
- Spring Boot 4;
- Spring Web;
- Spring Data JPA;
- Hibernate;
- PostgreSQL;
- Maven Wrapper.

### Client

- Java;
- JavaFX;
- Jackson;
- Java HTTP Client;
- Maven Wrapper.

## Локальный запуск

### 1. Подготовить PostgreSQL

Создайте базу данных `warehouse` и восстановите схему с тестовыми данными:

```powershell
createdb -U postgres warehouse
psql -U postgres -d warehouse -f .\database\warehouse.sql
```

Команды можно выполнить из корня репозитория. Если утилиты PostgreSQL не добавлены в `PATH`, используйте pgAdmin или полный путь к `createdb.exe` и `psql.exe`.

### 2. Настроить подключение

Перед запуском сервера задайте параметры своей локальной базы данных:

```powershell
$env:DB_URL = "jdbc:postgresql://localhost:5432/warehouse"
$env:DB_USERNAME = "postgres"
$env:DB_PASSWORD = "ваш_пароль"
```

Пароль не хранится в репозитории и действует только в текущем окне PowerShell.

### 3. Запустить server

```powershell
cd .\server
.\mvnw.cmd spring-boot:run
```

REST API будет доступен по адресу `http://localhost:8080/api`.

### 4. Запустить client

В новом окне PowerShell:

```powershell
cd .\client
.\mvnw.cmd clean javafx:run
```

Перед запуском клиента убедитесь, что server уже работает.

## Примечание

Проект разработан как курсовая работа. Авторизация в текущей версии является учебной и реализована локально в JavaFX-клиенте.

