CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    limite INTEGER NOT NULL,
    saldo INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE transacoes(
    id SERIAL PRIMARY KEY,
    clientes_id INTEGER NOT NULL,
    valor INTEGER NOT NULL,
    tipo CHAR(1) NOT NULL,
    descricao VARCHAR(10) NOT NULL,
    realizada_em TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_cliente_id FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

CREATE INDEX idx_transacoes_cliente_id ON transacoes USING btree (cliente_id)

INSERT INTO clientes (nome, limite)
VALUES
    ('a sopa de batata', 1000 * 100),
    ('mandioquinha frita', 800 * 100),
    ('pure de cenoura', 10000 * 100),
    ('bolo de aipim'), (100000 * 100),
    ('batatadoce com mel' 5000 * 100);