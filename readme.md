# Nifi Data Enhancement

# Description

In this project I enhanced profile data with two public api's using NiFi, PostgreSQL and Docker, this pipeline can be used with data from untrusted sources and testing data quality.

I am using NiFi and 2 public api's to enhance address data based on brasilian postal code(CEP) and gender data based on first name.

I consumed data from a PostgreSQL profile table, this is the inicial state of the table:

![image](https://user-images.githubusercontent.com/84144559/172464615-f49199b1-8840-48fe-8413-958850c0701d.png)

The api's I used:

- CEP -> https://viacep.com.br/ws/${cep}/json || Example -> https://viacep.com.br/ws/77826570/json
- Gender -> https://servicodados.ibge.gov.br/api/v2/censos/nomes/${nome}?sexo=M || Example -> https://servicodados.ibge.gov.br/api/v2/censos/nomes/lucas?sexo=M

Link to download [Docker Compose](https://github.com/lucasjmorgado/DE-NiFi-CEP/blob/main/docker_compose.yml) file

Link to download [SQL Create table and insert data](https://github.com/lucasjmorgado/DE-NiFi-CEP/blob/main/create.sql)

PostgreSQL Connection
- Host 0.0.0.0
- Port 5432
- User postgres
- Password Postgres2020!
# NiFi Pipeline

Link to download [Nifi Template](https://github.com/lucasjmorgado/DE-NiFi-CEP/blob/main/data_enhance_final.xml)

![image](https://user-images.githubusercontent.com/84144559/172483504-75e18c1e-c4b8-45d6-8954-56349c25332c.png)

## CEP NiFi

![image](https://user-images.githubusercontent.com/84144559/172464940-74c3864b-f0d7-46d2-95af-d4b8cf29c764.png)

## Gender NiFi

![image](https://user-images.githubusercontent.com/84144559/172465093-c607f18e-ca38-4a15-8686-77e3a975642d.png)

# Output

The image bellow shows the gender column(sexo) and address columns(logradouro, bairro, localidade, uf) filled with data gathered from the api, only the columns numero and complemento are null because the api can't fill this information.

![image](https://user-images.githubusercontent.com/84144559/172466236-4460504d-6fab-4114-b73a-41d6957ab3e5.png)

### Reference

https://medium.com/data-hackers/construindo-um-pipeline-de-dados-com-nifi-kafka-e-s3-parte-1-2-d7e4a9aeb136



