CREATE TABLE TimesFutebol (
    TimeID INT IDENTITY(1,1) PRIMARY KEY, -- Chave primária auto-incremental
    NomeTime NVARCHAR(100) NOT NULL, -- Nome do time
    UF CHAR(2) NOT NULL, -- Estado do time (UF)
    PosicaoAtual INT -- Posição atual do time na tabela
);

