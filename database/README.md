# Warehouse database

Дамп PostgreSQL содержит структуру и тестовые данные для информационно-справочной системы оптового склада.

## Восстановление

Создайте пустую базу данных и выполните:

```powershell
psql -U postgres -d warehouse -f .\warehouse.sql
```

Дамп создан с помощью PostgreSQL 17.6.

