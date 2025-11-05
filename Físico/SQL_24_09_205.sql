CREATE DATABASE IF NOT EXISTS BD_ALUGUEL_PRODUTOS_23;
USE BD_ALUGUEL_PRODUTOS_23;

CREATE TABLE IF NOT EXISTS CLIENTE(
	CLIENTE_ID INTEGER auto_increment PRIMARY KEY,
    EMAIL VARCHAR(255) NOT NULL,
    CPF VARCHAR(14) NOT NULL,
    NOME VARCHAR(255) NOT NULL,
    TELEFONE VARCHAR(15) NOT NULL
);

CREATE TABLE IF NOT EXISTS PRODUTO(
	PRODUTO_ID INTEGER AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(255) NOT NULL,
    DESCRICAO VARCHAR(500) NOT NULL,
    PRECO DECIMAL NOT NULL,
    QTD_DISPONIVEL INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS ALUGUEL(
	ALUGUEL_ID INTEGER AUTO_INCREMENT PRIMARY KEY,
    DATA_ALUGUEL DATE NOT NULL,
    DATA_DEVOLUCAO DATE NOT NULL,
    VALOR_TOTAL DECIMAL NOT NULL,
    FK_CLIENTE_ID INTEGER NOT NULL,
    FK_PRODUTO_ID INTEGER NOT NULL,
    FOREIGN KEY (FK_CLIENTE_ID) REFERENCES CLIENTE(CLIENTE_ID) ON DELETE CASCADE,
    FOREIGN KEY (FK_PRODUTO_ID) REFERENCES PRODUTO(PRODUTO_ID) ON DELETE CASCADE
    
);

-- aqui vamo começar DML (manipular os dados;
-- INSERT -> INSERIR
INSERT INTO CLIENTE (EMAIL, TELEFONE, CPF, NOME)
VALUES ("email@email.com", "19999999999", "123456789", "leozin free fire");

-- tem que estar na mesma ordem que tu colocou :o

-- SELECT -- selecionar -> mostra a tabela :)

INSERT INTO CLIENTE (EMAIL,TELEFONE,CPF,NOME)
VALUES ("felipe.d.ribeiro@aluno.senai.br", "19 99437-0065", "123.456.789-10","Felipe Donizetti Ribeiro");

-- se faltar um campo ele nn roda, pq todos eles são not null.

INSERT INTO CLIENTE (NOME,EMAIL,TELEFONE, CPF)
VALUES ("Felipe", "Felipe@gmail.co", "1994989812", "22222222222");

SELECT * FROM CLIENTE;

-- INSERIR PRODUTOS

INSERT INTO PRODUTO (NOME,DESCRICAO,PRECO,QTD_DISPONIVEL)
VALUE ("Macbook M$", "Notebook Apple" , 4789.90 , 5);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUE ("Xbox Series X", "Melhor que o PS5", 4499.00, 30);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUE ("RTX 5090", "Sonho de consumo", 20000, 1);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUE ("Teclado Mecanico Aigo GD108", "Teclado zica", 219, 30);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUE ("AIRPODS PRO 2", "fone caro", 1899, 55);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUE ("Google Pixel Pro 8", "celular da google", 7999, 3);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUE ("Dell XPS 13", "Notebook premium",  9499, 25);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUE ("Logitech MX Master 3S", "mouse ergonômico",  649, 105);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUE ("GoPro Hero 12", "câmera esportiva",  3499, 45);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUE ("Echo Dot 5ª geração", "assistente virtual",  379, 19);

SELECT * FROM PRODUTO;

INSERT INTO ALUGUEL (
					DATA_ALUGUEL,
                    DATA_DEVOLUCAO,
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID
                    )
VALUES 				(
					"2025-09-24",
                    "2025-10-01",
                    7890,
                    3,
                    1
					);
INSERT INTO ALUGUEL (DATA_ALUGUEL,
					DATA_DEVOLUCAO,
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID
                    )
VALUES (
		"2025-09-27",
        "2025-10-14",
        1980,
        1,
        2
	);

INSERT INTO ALUGUEL (DATA_ALUGUEL,
					DATA_DEVOLUCAO,
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID
                    )
VALUES (
		"2025-07-17",
        "2025-11-19",
        4980,
        2,
        3
	);

INSERT INTO ALUGUEL (DATA_ALUGUEL,
					DATA_DEVOLUCAO,
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID
                    )
VALUES (
		"2025-08-27",
        "2025-09-14",
        280,
        3,
        4
	);

INSERT INTO ALUGUEL (DATA_ALUGUEL,
					DATA_DEVOLUCAO,
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID
                    )
VALUES (
		"2025-09-27",
        "2025-10-14",
        1980,
        4,
        5
	);

INSERT INTO ALUGUEL (DATA_ALUGUEL,
					DATA_DEVOLUCAO,
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID
                    )
VALUES (
		"2025-09-27",
        "2025-10-14",
        1980,
        5,
        6
	);

INSERT INTO ALUGUEL (DATA_ALUGUEL,
					DATA_DEVOLUCAO,
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID
                    )
VALUES (
		"2025-09-27",
        "2025-10-14",
        1980,
        6,
        7
	);

INSERT INTO ALUGUEL (DATA_ALUGUEL,
					DATA_DEVOLUCAO,
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID
                    )
VALUES (
		"2025-09-27",
        "2025-10-14",
        1980,
        7,
        8
	);

INSERT INTO ALUGUEL (DATA_ALUGUEL,
					DATA_DEVOLUCAO,
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID
                    )
VALUES (
		"2025-09-27",
        "2025-10-14",
        1980,
        8,
        9
	);
    
INSERT INTO ALUGUEL (DATA_ALUGUEL,
					DATA_DEVOLUCAO,
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID
                    )
VALUES (
		"2025-09-27",
        "2025-10-14",
        1980,
        9,
        10
	);
    
INSERT INTO ALUGUEL (DATA_ALUGUEL,
					DATA_DEVOLUCAO,
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID
                    )
VALUES (
		"2025-09-27",
        "2025-10-14",
        1980,
        10,
        11
	);
    
INSERT INTO ALUGUEL (DATA_ALUGUEL,
					DATA_DEVOLUCAO,
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID
                    )
VALUES (
		"2025-09-27",
        "2025-10-14",
        1980,
        11,
        12
	);
    
INSERT INTO ALUGUEL (DATA_ALUGUEL,
					DATA_DEVOLUCAO,
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID
                    )
VALUES (
		"2025-09-27",
        "2025-10-14",
        1980,
        12,
        13
	);
    
INSERT INTO ALUGUEL (DATA_ALUGUEL,
					DATA_DEVOLUCAO,
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID
                    )
VALUES (
		"2025-09-27",
        "2025-10-14",
        1980,
        13,
        14
	);

INSERT INTO ALUGUEL (DATA_ALUGUEL,
					DATA_DEVOLUCAO,
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID
                    )
VALUES (
		"2025-09-27",
        "2025-10-14",
        1980,
        14,
        15
	);
INSERT INTO ALUGUEL (DATA_ALUGUEL,
					DATA_DEVOLUCAO,
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID
                    )
VALUES (
		"2025-09-27",
        "2025-10-14",
        1980,
        15,
        16
	);

INSERT INTO ALUGUEL (DATA_ALUGUEL,
					DATA_DEVOLUCAO,
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID
                    )
VALUES (
		"2025-09-27",
        "2025-10-14",
        1980,
        16,
        17
	);
    
INSERT INTO ALUGUEL (DATA_ALUGUEL,
					DATA_DEVOLUCAO,
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID
                    )
VALUES (
		"2025-09-27",
        "2025-10-14",
        1980,
        17,
        18
	);
    
INSERT INTO ALUGUEL (DATA_ALUGUEL,
					DATA_DEVOLUCAO,
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID
                    )
VALUES (
		"2025-09-27",
        "2025-10-14",
        1980,
        18,
        19
	);
    
INSERT INTO ALUGUEL (DATA_ALUGUEL,
					DATA_DEVOLUCAO,
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID
                    )
VALUES (
		"2025-09-27",
        "2025-10-14",
        1980,
        19,
        20
	);
    
INSERT INTO ALUGUEL (DATA_ALUGUEL,
					DATA_DEVOLUCAO,
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID
                    )
VALUES (
		"2025-09-27",
        "2025-10-14",
        1980,
        20,
        21
	);
INSERT INTO ALUGUEL (DATA_ALUGUEL,
					DATA_DEVOLUCAO,
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID
                    )
VALUES (
		"2025-08-13",
        "2025-12-01",
        280,
        21,
        22
	);
SELECT * FROM ALUGUEL;
SELECT * FROM PRODUTO;

-- Atualizar um registro -> UPDATE

UPDATE 	PRODUTO
SET		PRECO = 3500
WHERE PRODUTO_ID = 1;

UPDATE 	PRODUTO
SET		PRECO = 2500
WHERE PRODUTO_ID = 2;

UPDATE 	PRODUTO
SET		QTD_DISPONIVEL = 15
WHERE PRODUTO_ID = 4 ;

UPDATE 	PRODUTO
SET		QTD_DISPONIVEL = 35
WHERE PRODUTO_ID = 3;

UPDATE 	PRODUTO
SET		QTD_DISPONIVEL = 19
WHERE PRODUTO_ID = 1;

UPDATE 	PRODUTO
SET		QTD_DISPONIVEL = 12
WHERE PRODUTO_ID = 5;

UPDATE 	PRODUTO
SET		QTD_DISPONIVEL = 900
WHERE PRODUTO_ID = 6;

UPDATE 	CLIENTE
SET		EMAIL = "LEOZIN_AMASSA.FF@GMAIL.COM"
WHERE CLIENTE_ID = 1;

UPDATE 	CLIENTE
SET		EMAIL = "Lipe_esteve_aqui@hotmail.com"
WHERE CLIENTE_ID = 2;


UPDATE 	ALUGUEL
SET		DATA_DEVOLUCAO = "2025-12-25"
WHERE ALUGUEL_ID = 11;

UPDATE 	ALUGUEL
SET		DATA_DEVOLUCAO = "2025-12-25"
WHERE ALUGUEL_ID = 12;

UPDATE 	ALUGUEL
SET		DATA_DEVOLUCAO = "2025-12-25"
WHERE ALUGUEL_ID = 13;

UPDATE 	ALUGUEL
SET		DATA_DEVOLUCAO = "2025-12-25"
WHERE ALUGUEL_ID = 14;

UPDATE 	ALUGUEL
SET		DATA_DEVOLUCAO = "2025-12-25"
WHERE ALUGUEL_ID = 15;

UPDATE 	ALUGUEL
SET		DATA_DEVOLUCAO = "2025-12-25"
WHERE ALUGUEL_ID = 16;

UPDATE 	ALUGUEL
SET		DATA_DEVOLUCAO = "2025-12-25"
WHERE ALUGUEL_ID = 17;

UPDATE 	ALUGUEL
SET		DATA_DEVOLUCAO = "2025-12-25"
WHERE ALUGUEL_ID = 18;

UPDATE 	ALUGUEL
SET		DATA_DEVOLUCAO = "2025-12-25"
WHERE ALUGUEL_ID = 19;

UPDATE 	ALUGUEL
SET		DATA_DEVOLUCAO = "2025-12-25"
WHERE ALUGUEL_ID = 20;

UPDATE 	ALUGUEL
SET		DATA_DEVOLUCAO = "2025-12-25"
WHERE ALUGUEL_ID = 21;

UPDATE 	ALUGUEL
SET		DATA_DEVOLUCAO = "2025-12-25"
WHERE ALUGUEL_ID = 8;

SELECT * FROM CLIENTE;

-- apagar um registro -> DELETE

DELETE FROM CLIENTE
where CLIENTE_ID = 1;
DELETE FROM PRODUTO
WHERE PRODUTO_ID=4;
DELETE FROM ALUGUEL
WHERE ALUGUEL_ID = 11;
SELECT * FROM ALUGUEL;

SELECT NOME,
		PRECO
FROM PRODUTO
WHERE PRODUTO_ID = 3;