CREATE TABLE TimesFutebol (
    TimeID INT IDENTITY(1,1) PRIMARY KEY, -- Chave prim�ria auto-incremental
    NomeTime NVARCHAR(100) NOT NULL, -- Nome do time
    UF CHAR(2) NOT NULL, -- Estado do time (UF)
    PosicaoAtual INT -- Posi��o atual do time na tabela
);

-- Inserir os principais times da S�rie A
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Atl�tico Mineiro', 'MG', 1);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Atl�tico Paranaense', 'PR', 2);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Bahia', 'BA', 3);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Botafogo', 'RJ', 4);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Corinthians', 'SP', 5);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Coritiba', 'PR', 6);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Cruzeiro', 'MG', 7);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Cuiab�', 'MT', 8);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Flamengo', 'RJ', 9);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Fluminense', 'RJ', 10);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Fortaleza', 'CE', 11);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Goi�s', 'GO', 12);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Gr�mio', 'RS', 13);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Internacional', 'RS', 14);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Palmeiras', 'SP', 15);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Santos', 'SP', 16);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('S�o Paulo', 'SP', 17);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Vasco da Gama', 'RJ', 18);

-- Inserir os principais times da S�rie B
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('ABC', 'RN', 1);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Atl�tico Goianiense', 'GO', 2);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Ava�', 'SC', 3);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Cear�', 'CE', 4);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Chapecoense', 'SC', 5);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('CRB', 'AL', 6);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Guarani', 'SP', 7);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Ituano', 'SP', 8);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Juventude', 'RS', 9);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Londrina', 'PR', 10);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Mirassol', 'SP', 11);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Novorizontino', 'SP', 12);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Ponte Preta', 'SP', 13);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Sampaio Corr�a', 'MA', 14);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Sport', 'PE', 15);
INSERT INTO TimesFutebol (NomeTime, UF, PosicaoAtual) VALUES ('Vila Nova', 'GO', 16);

-- Criar uma tabela relacionada para armazenar informa��es adicionais sobre os jogos
CREATE TABLE Jogos (
    JogoID INT IDENTITY(1,1) PRIMARY KEY, -- Chave prim�ria auto-incremental
    TimeCasaID INT NOT NULL, -- FK para o time mandante
    TimeVisitanteID INT NOT NULL, -- FK para o time visitante
    DataJogo DATE NOT NULL, -- Data do jogo
    LocalJogo NVARCHAR(200) NOT NULL, -- Local do jogo
    CONSTRAINT FK_TimeCasa FOREIGN KEY (TimeCasaID) REFERENCES TimesFutebol(TimeID),
    CONSTRAINT FK_TimeVisitante FOREIGN KEY (TimeVisitanteID) REFERENCES TimesFutebol(TimeID)
);

-- Exemplo de inser��o na tabela Jogos
INSERT INTO Jogos (TimeCasaID, TimeVisitanteID, DataJogo, LocalJogo) 
VALUES (1, 2, '2025-02-20', 'Est�dio Mineir�o'); -- Atl�tico Mineiro vs Atl�tico Paranaense