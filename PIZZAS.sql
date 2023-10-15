-- Seleciona o ID da pizza, sabor da pizza e nome do pizzaiolo responsável pela pizza
SELECT PIZZA.ID AS PizzaID, PIZZA.sabor AS SaborPizza, PIZZAIOLO.nome AS NomePizzaiolo
FROM PIZZA
JOIN PIZZA_PIZZAIOLO ON PIZZA.ID = PIZZA_PIZZAIOLO.pizza_id
JOIN PIZZAIOLO ON PIZZA_PIZZAIOLO.pizzaiolo_id = PIZZAIOLO.ID;


-- Seleciona o sabor da pizza e o nome do ingrediente utilizado na pizza
SELECT PIZZA.sabor AS SaborPizza, INGREDIENTES.nome AS Ingrediente
FROM PIZZA
JOIN INGREDIENTES_PIZZA ON PIZZA.ID = INGREDIENTES_PIZZA.pizza_id
JOIN INGREDIENTES ON INGREDIENTES_PIZZA.ingrediente_id = INGREDIENTES.ID;

SELECT INGREDIENTES.nome AS Ingrediente, PIZZA.sabor AS SaborPizza
FROM INGREDIENTES
JOIN INGREDIENTES_PIZZA ON INGREDIENTES.ID = INGREDIENTES_PIZZA.ingrediente_id
JOIN PIZZA ON INGREDIENTES_PIZZA.pizza_id = PIZZA.ID;

 
UPDATE pizza
SET sabor = 'Vegetariana'
WHERE sabor = 'Vegetariana com Shimeji';

 select * from pizza;
 
 
 -- Seleciona o sabor da pizza, nome do pizzaiolo e instruções de preparo da pizza
SELECT PIZZA.sabor AS saborPizza, PIZZAIOLO.nome AS NomePizzaiolo, RECEITA.instrucoes AS Instrucoes
FROM PIZZA
JOIN PIZZA_PIZZAIOLO ON PIZZA.ID = PIZZA_PIZZAIOLO.pizza_id
JOIN PIZZAIOLO ON PIZZA_PIZZAIOLO.pizzaiolo_id = PIZZAIOLO.ID
JOIN RECEITA ON PIZZA.ID = RECEITA.ID;


