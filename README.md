# BIG DATA - MODERN DATA STACK COM DOCKER

Ambiente para estudo dos principais framework de um ambiente moderno de dados utilizando docker.
 

## SOFTWARES NECESSÁRIOS
#### Para a criação e uso do ambiente vamos utilizar o git e o Docker 
   * Instalação do Docker Desktop no Windows [Docker Desktop](https://hub.docker.com/editions/community/docker-ce-desktop-windows) ou o docker no [Linux](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
   *  [Instalação do git](https://git-scm.com/book/pt-br/v2/Come%C3%A7ando-Instalando-o-Git)
   
## SETUP
   * OBS: A primeira vez que o ambiente for iniciado, todas as imagens serão baixadas para a maquina local. 
   * Para executar todo o ambiente, o servidor/host deve possuir pelo menos 16GB de memória.
   * É indicado subir apenas os containers para o worload que será utilizado/testado.


INICIANDO O AMBIENTE*

#### Em um terminal/DOS/PowerShell, realizar o clone do projeto no github.
          git clone https://github.com/fabiogjardim/datalab.git

#### Ao realizar o clone do repositório, o diretória mds será criado em sua máquina local.

   
## EXEMPLOS DE COMO INICIR O AMBIENTE

  *No Windows abrir PowerShell, do Linux um terminal e acessar o diretório mds*
  
### Para iniciar um ambiente com Data Lake e Spark

          docker-compose up -d minio spark-worker        

### Para iniciar um ambiente com Ingestão de dados com CDC no Postgres utilizando Kafka
 
         docker-compose up -d minio kafka-broker kafka-connect nifi postgres

## SOLUCIONANDO PROBLEMAS 

### Parar verificar os containers em execução
         docker ps 

### Parar um containers
         docker stop [nome do container]      

### Parar todos containers
         docker stop $(docker ps -a -q)
  
### Remover um container
         docker rm [nome do container]

### Remover todos containers
         docker rm $(docker ps -a -q)         

### Dados do containers
         docker container inspect [nome do container]

### Iniciar um container específico
         docker-compose up -d [nome do container]

### Iniciar todos os containers (CUIDADO, é muito pesado)
         docker-compose up -d 

### Acessar log do container
         docker container logs [nome do container] 

## Acesso WebUI dos Frameworks
 
* Minio *http://localhost:9051*
* Hadoop *http://localhost:9870*
* Kafka Control Center *http://localhost:9021*
* Kafka Proxy *http://localhost:8082*
* Nifi *http://localhost:49090*
* Airflow *http://localhost:58080*
* Presto *http://localhost:18080*
* Adminer *http://localhost:28080*
* Mongo Express *http://localhost:28081*
* Hive WebUI *http://localhost:10002*
* Elastic *http://localhost:9200*
* Cassandra Web *http://localhost:13000*
* Jupyter Spark *http://localhost:8889*
* Metabase *http://localhost:3000*
* Kibana *http://localhost:5601*
* Datahub *http://localhost:9002*


## Usuários e senhas

   ##### Minio
    Usuário: admin
    Senha: minioadmin

   ##### Metabase
    Usuário: user@datalab.com
    Senha: datalab 

   ##### Postgres
    Usuário: admin
    Senha: admin

   
## Imagens   

[Docker Hub](https://hub.docker.com/u/fjardim)

