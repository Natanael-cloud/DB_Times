CREATE TABLE TimesFutebol (
    TimeID INT IDENTITY(1,1) PRIMARY KEY, -- Chave prim�ria auto-incremental
    NomeTime NVARCHAR(100) NOT NULL, -- Nome do time
    UF CHAR(2) NOT NULL, -- Estado do time (UF)
    PosicaoAtual INT -- Posi��o atual do time na tabela
);

