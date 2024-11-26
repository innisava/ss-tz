<h1>Party Parrot App</h1>

<img src='media/images/party-parrot.gif' alt='parrot' height="200" width="200">
<br>
<br>

## Manual Installation

### Description

____


Sample Python application on Django with PostgreSQL database.

### Requirements

____


- django 4.0.1
- Pillow 9.0.0
- psycopg2-binary 2.9.3
- django-prometheus 2.2.0

### Deployment

____


- clone the repository:
  ```shell
  git clone https://github.com/innisava/ss-tz.git
  cd ss-tz
- install Python 3.8
- install libs 
```shell
      pip3 install -r requirements.txt
```

* Set environment export for variables:
```yaml
      DJANGO_DB_HOST: db
      DJANGO_DB_NAME: app
      DJANGO_DB_USER: worker
      DJANGO_DB_PASS: worker
      DJANGO_DB_PORT: "5432"
      DJANGO_DEBUG: "False"
```


* migrate database:
```shell
python3 manage.py migrate
```

* start application:
```shell
python3 manage.py runserver 0.0.0.0:8000
```

***The application will be accessible at:***
- <http://localhost:8000>
- Or at the IP address of your Docker host, e.g., <http://192.168.100.102:8000>.

***

## Docker Installation (Automated Deployment)

### Description

____


This is a test Django application containerized with a PostgreSQL database and served using the uWSGI server. Docker and Docker Compose are used for deployment.

### Requirements

____


- Docker (20.x or later)
- Docker Compose (v2.x or later)

### Deployment

____


- One-liner command:
  ```shell
  git clone https://github.com/innisava/ss-tz.git && cd ss-tz && echo -e "\nuwsgi" >> requirements.txt && docker compose up --build -d
  ```
- Or step-by-step:
  1. Clone the repository:
     ```shell
     git clone https://github.com/innisava/ss-tz.git
     cd dss-tz
     ```
  2. Add uWSGI to the dependencies:
     ```shell
     echo -e "\nuwsgi" >> requirements.txt
     ```
  3. Build and start the application:
     ```shell
     docker-compose up --build -d
     ```
***The application will be accessible at:***
- <http://localhost:8000>
- Or at the IP address of your Docker host, e.g., <http://192.168.100.102:8000>.