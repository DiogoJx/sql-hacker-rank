# Portuguese Description

# Desafio SQL - Cidades com Nomes Mais Curto e Mais Longo

## Estrutura da Tabela

A tabela `Station` é descrita da seguinte forma:

| Campo  | Tipo       |
|--------|------------|
| ID     | NUMBER     |
| CITY   | VARCHAR2(21) |
| STATE  | VARCHAR2(2) |
| LAT_N  | NUMBER     |
| LONG_W | NUMBER     |

## Consulta SQL

Para resolver o desafio, você pode utilizar duas consultas separadas para encontrar a cidade com o menor número de caracteres e a cidade com o maior número de caracteres.

# Englesh Description 

Query the two cities in station with the shortest and longest City names,
as well as their respective lenghts ( number of character in the name).
if there is more than one smallest or largest city.

choose the on the comes first when ordered alphabetically.

The station table is described as follows:

Station 

Field Type 

ID NUMBER 
CITY  VARCHAR2 (21)
STATE VARCHAR2 (2)
LAT_N NUMBER 
LONG_W NUMBER

Sample Input 

For example, City has four entries DEF, ABC, PQRS and WXY,

SOLVE OUT PUT 

ABC 3
PQRS 4

Explanation
When ordered alphabetically the CITY names are listed as ABC DEF PQRS and WXY  with lenghts 3,3,4 and 3. The logest name is PQRS. but there are 3 options for shortest named city. Choose ABC, because it comes first alphabetically

NOTE 

You can write two separate queries to get desired output. It need not be a single query


