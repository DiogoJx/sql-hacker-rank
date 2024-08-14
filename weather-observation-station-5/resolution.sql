(
    SELECT CITY, LENGTH(CITY) AS LENGTH
    FROM Station
    ORDER BY LENGTH(CITY), CITY
    LIMIT 1
)
UNION
(
    SELECT CITY, LENGTH(CITY) AS LENGTH
    FROM Station
    ORDER BY LENGTH(CITY) DESC, CITY
    LIMIT 1
);

/*

SELECT CITY, LENGTH(CITY) AS LENGTH: Seleciona a coluna CITY e calcula o comprimento do nome da cidade, rotulando-o como LENGTH.

FROM Station: Especifica a tabela Station como a fonte dos dados.

ORDER BY LENGTH(CITY), CITY:

LENGTH(CITY): Ordena os resultados pelo comprimento do nome da cidade em ordem crescente (do menor comprimento para o maior).
CITY: Se houver empates no comprimento (cidades com o mesmo número de caracteres), a ordenação é feita alfabeticamente (em ordem crescente).
LIMIT 1: Retorna apenas a primeira linha após a ordenação. Isso garante que você obtém a cidade com o nome mais curto. Se houver várias cidades com o mesmo comprimento, a primeira em ordem alfabética será escolhida.

*/