# Base de Dados Pizzaria (Modelo Lógico)
## Descrição
O código SQL fornecido cria e gerencia um banco de dados para uma pizzaria. Ele inclui tabelas para armazenar informações sobre pizzas, pizzaiolos e ingredientes. As pizzas são definidas com seus sabores, preços, descrições e tamanhos. Os pizzaiolos têm seus nomes e salários registrados. Os ingredientes também são armazenados em uma tabela separada.

Além disso, há tabelas intermediárias para relacionar pizzas com seus ingredientes e pizzaiolos responsáveis pela produção. Foram realizadas consultas para unir essas tabelas e extrair informações relevantes, como os sabores das pizzas, os ingredientes utilizados e os pizzaiolos responsáveis por cada pizza.

O código também inclui instruções para atualizar dados na tabela, como a modificação do nome de uma pizza.

###  Relatório:

##  1 Crie um relatório com todas as pizzas e os pizzaiolos aptos a produzi-las;

    -- Seleciona o ID da pizza, sabor da pizza e nome do pizzaiolo responsável pela pizza
    SELECT PIZZA.ID AS PizzaID, PIZZA.sabor AS SaborPizza, PIZZAIOLO.nome AS NomePizzaiolo
    FROM PIZZA
    JOIN PIZZA_PIZZAIOLO ON PIZZA.ID = PIZZA_PIZZAIOLO.pizza_id
    JOIN PIZZAIOLO ON PIZZA_PIZZAIOLO.pizzaiolo_id = PIZZAIOLO.ID;



![Seleciona o ID da pizza, sabor da pizza e nome do pizzaiolo responsável pela pizza](https://github.com/bancos-de-dados/Base-de-Dados-Pizzaria-Modelo-L-gico-/assets/127689567/8a71f193-6044-47ea-a33d-b00e76c349b1)

##  2 Crie um relatório com todas as pizzas e seus ingredientes;

    -- Seleciona o sabor da pizza e o nome do ingrediente utilizado na pizza
    SELECT PIZZA.sabor AS SaborPizza, INGREDIENTES.nome AS Ingrediente
    FROM PIZZA
    JOIN INGREDIENTES_PIZZA ON PIZZA.ID = INGREDIENTES_PIZZA.pizza_id
    JOIN INGREDIENTES ON INGREDIENTES_PIZZA.ingrediente_id = INGREDIENTES.ID;

    
![Seleciona o sabor da pizza e o nome do ingrediente utilizado na pizza](https://github.com/bancos-de-dados/Base-de-Dados-Pizzaria-Modelo-L-gico-/assets/127689567/5597c5f2-680f-4495-9339-5abcc5b129b6)


##  3 Crie um relatório com todos os ingredientes e as pizzas onde são utilizados;

    SELECT INGREDIENTES.nome AS Ingrediente, PIZZA.sabor AS SaborPizza
    FROM INGREDIENTES
    JOIN INGREDIENTES_PIZZA ON INGREDIENTES.ID = INGREDIENTES_PIZZA.ingrediente_id
    JOIN PIZZA ON INGREDIENTES_PIZZA.pizza_id = PIZZA.ID;

    ![Relatório com todos os ingredientes e as pizzas onde são utilizados](https://github.com/bancos-de-dados/Base-de-Dados-Pizzaria-Modelo-L-gico-/assets/127689567/ec1ec8fc-6663-4cde-a21b-886b50b32c91)


![Relatório com todos os ingredientes e as pizzas onde são utilizados](https://github.com/bancos-de-dados/Base-de-Dados-Pizzaria-Modelo-L-gico-/assets/127689567/2dcf4d7c-0fc5-4291-ac11-cb80fe75bcee)


##  4 Crie um relatório com os sabores de todas as pizzas, o nome dos pizzaiolos que as fazem e as instruções para produzi-las;

    -- Seleciona o sabor da pizza, nome do pizzaiolo e instruções de preparo da pizza
    SELECT PIZZA.sabor AS saborPizza, PIZZAIOLO.nome AS NomePizzaiolo, RECEITA.instrucoes AS Instrucoes
    FROM PIZZA
    JOIN PIZZA_PIZZAIOLO ON PIZZA.ID = PIZZA_PIZZAIOLO.pizza_id
    JOIN PIZZAIOLO ON PIZZA_PIZZAIOLO.pizzaiolo_id = PIZZAIOLO.ID
    JOIN RECEITA ON PIZZA.ID = RECEITA.ID;

 ![Seleciona o sabor da pizza, nome do pizzaiolo e instruções de preparo da pizza](https://github.com/bancos-de-dados/Base-de-Dados-Pizzaria-Modelo-L-gico-/assets/127689567/bd8896b1-995c-4081-a1a2-e435c112f0ea)


## Obrigado!

![pizza](https://github.com/bancos-de-dados/Base-de-Dados-Pizzaria-Modelo-L-gico-/assets/127689567/1f6160e7-338f-4f5c-a203-46aec7b41074)


## Última atualização 15/10/23
