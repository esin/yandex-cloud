## yandex-container

yandex-container - Образ для запуска bash скриптов без дополнительного веб-сервера внутри контейнера

Достаточно добавить необходимые команды в середину скрипта и после выполнения их, веб-сервер отправить необходимую информацию для оркестратора Serverless Containers

Позволяет получить тип HTTP запроса, путь и параметры. Они будут находиться в параметрах окружения:
```bash
$HTTP_REQUEST_METHOD
$HTTP_REQUEST_PATH
$HTTP_REQUEST_PARAMS
```
