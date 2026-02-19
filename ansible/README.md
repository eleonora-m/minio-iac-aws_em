
## Структура проекта

ansible/
├── ansible.cfg          # Конфигурация Ansible
├── inventory.ini        # Список серверов
├── group_vars/
│   └── all.yml          # Переменные для всех серверов
├── roles/
│   ├── base_setup/      # Базовая настройка системы
└── playbooks/
    └── base_setup.yml   # Базовый плейбук с настройкой системы

## Перед запуском

1. Получи IP-адрес EC2 инстанса от Terraform
2. Обнови `inventory.ini` с реальным IP:
3. Убедись что SSH ключ на месте: `~/.ssh/aws_key.pem`

## Проверка подключения

```bash
ansible minio_servers -m ping
```
## Проверка синтаксиса

```bash
ansible-playbook playbooks/base_setup.yml --syntax-check
```

## Dry-run запуск (Без реальных изменений)

```bash
ansible-playbook playbooks/base_setup.yml --check
```

## Запуск

```bash
ansible-playbook playbooks/PLAY_BOOK_NAME.yml
```

## Тест идемпотентности

```bash
ansible-playbook playbooks/PLAY_BOOK_NAME.yml