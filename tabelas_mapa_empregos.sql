CREATE TABLE tbEmpresas(
	id INT PRIMARY KEY, 
	nome VARCHAR(255) NOT NULL,
	setor VARCHAR(50),
	endereco VARCHAR(255),
	total_funcionario INT
	
);

CREATE TABLE tbVagas(
	id INT PRIMARY KEY, 
	empresa_id INT REFERENCES tbEmpresas(id), 
	cargo VARCHAR(50) NOT NULL,
	setor VARCHAR(150), 
	requisitos TEXT, 
	data_divulgacao DATE,
	status VARCHAR(50)
	
);

CREATE TABLE tbCandidatos(
	id INT PRIMARY KEY, 
	nome VARCHAR(255) NOT NULL,
	idade INT,
	experiencia TEXT,
	area VARCHAR(100)
);

CREATE TABLE tbCandidaturas(
	id INT PRIMARY KEY, 
	candidato_id INT REFERENCES tbCandidatos(id), 
	vaga_id INT REFERENCES tbVagas(id), 
	data_candidatura DATE,
	status_candidatura VARCHAR(20) 
	
);