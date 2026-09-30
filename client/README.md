# Warehouse client

JavaFX-клиент для информационно-справочной системы оптового склада.

## Технологии

- Java;
- JavaFX 21;
- Jackson;
- Java HTTP Client;
- Maven Wrapper.

## Запуск

Сначала запустите server, затем выполните:

```powershell
.\mvnw.cmd clean javafx:run
```

Клиент обращается к API по адресу `http://localhost:8080/api`.

