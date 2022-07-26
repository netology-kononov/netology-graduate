Дипломный практикум в YandexCloud.  
===  
1. Репозиторий со всеми Terraform манифестами и готовность продемонстрировать создание всех ресурсов с нуля.  
---  
https://github.com/netology-kononov/netology-graduate/tree/main/terraform  

2. Репозиторий со всеми Ansible ролями и готовность продемонстрировать установку всех сервисов с нуля.  
---  
https://github.com/netology-kononov/netology-graduate/tree/main/ansible  
Вся чувствительная информация зашифрована с помощью ansible-vault, пароль передан преподавателю в личном кабинете.  
Terraform и Ansible не интегрированы, для запуска Ansible необходимо указать входную точку - публичный IP-адрес vpc инфраструктуры.  
Публичный IP-адрес vpc инфраструктуры выводится в консоль Terraform по окончании выполнения сценария.  
В Ansible используемый публичный IP-адрес vpc инфраструктуры определен в ansible/host_vars/edge-01.yml переменная ansible_host.  
  
3. Скриншоты веб-интерфейсов всех сервисов работающих по HTTPS на вашем доменном имени.  
---  
- https://www.netology-stud.run.place (WordPress)  
![WordPress](img/WordPress.png)  
- https://gitlab.netology-stud.run.place (Gitlab)  
![Gitlab](img/Gitlab.png)  
- https://grafana.netology-stud.run.place (Grafana)  
![Grafana-Node](img/Grafana-Node.png)  
![Grafana-MySQLd](img/Grafana-MySQLd.png)  
- https://prometheus.netology-stud.run.place (Prometheus)  
![Prometheus](img/Prometheus.png)  
- https://alertmanager.netology-stud.run.place (Alert Manager)  
![AlertManager](img/AlertManager.png)  

5. Все репозитории рекомендуется хранить на одном из ресурсов (github.com или gitlab.com).  
---  
https://github.com/netology-kononov/netology-graduate  
