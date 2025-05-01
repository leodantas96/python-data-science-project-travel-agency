-- Tabela de Clientes
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome_cliente TEXT,
    grupo_cliente TEXT,
    morada TEXT
);

-- Tabela de Operadores
CREATE TABLE operadores (
    id_operador INT PRIMARY KEY,
    nome_utilizador TEXT
);

-- Tabela de Destinos
CREATE TABLE destinos (
    id_destino INT PRIMARY KEY,
    codigo TEXT
);

-- Tabela de Reservas
CREATE TABLE reservas (
    id_reserva INT PRIMARY KEY,
    data_abertura DATE,
    id_operador INT,
    id_cliente INT,
    id_destino INT,
    partida DATE,
    chegada DATE,
    nr_pax INT,
    custo DECIMAL(10,2),
    preco DECIMAL(10,2),
    margem DECIMAL(10,2),
    FOREIGN KEY (id_operador) REFERENCES operadores(id_operador),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_destino) REFERENCES destinos(id_destino)
);

INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (1, 'Dummy Name 71', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (2, 'Dummy Name 16', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (3, 'Dummy Name 74', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (4, 'Dummy Name 164', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (5, 'Dummy Name 167', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (6, 'Dummy Name 193', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (7, 'Dummy Name 186', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (8, 'Dummy Name 77', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (9, 'Dummy Name 57', 'A_TRAVEL', 'Denmark');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (10, 'Dummy Name 170', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (11, 'Dummy Name 23', 'nan', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (12, 'Dummy Name 164', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (13, 'Dummy Name 27', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (14, 'Dummy Name 144', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (15, 'Dummy Name 141', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (16, 'Dummy Name 187', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (17, 'Dummy Name 90', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (18, 'Dummy Name 134', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (19, 'Dummy Name 150', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (20, 'Dummy Name 194', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (21, 'Dummy Name 168', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (22, 'Dummy Name 85', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (23, 'Dummy Name 66', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (24, 'Dummy Name 74', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (25, 'Dummy Name 28', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (26, 'Dummy Name 42', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (27, 'Dummy Name 72', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (28, 'Dummy Name 169', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (29, 'Dummy Name 191', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (30, 'Dummy Name 27', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (31, 'Dummy Name 45', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (32, 'Dummy Name 60', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (33, 'Dummy Name 147', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (34, 'Dummy Name 177', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (35, 'Dummy Name 70', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (36, 'Dummy Name 78', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (37, 'Dummy Name 59', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (38, 'Dummy Name 142', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (39, 'Dummy Name 88', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (40, 'Dummy Name 187', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (41, 'Dummy Name 183', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (42, 'Dummy Name 70', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (43, 'Dummy Name 102', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (44, 'Dummy Name 194', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (45, 'Dummy Name 44', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (46, 'Dummy Name 120', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (47, 'Dummy Name 150', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (48, 'Dummy Name 92', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (49, 'Dummy Name 50', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (50, 'Dummy Name 19', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (51, 'Dummy Name 41', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (52, 'Dummy Name 66', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (53, 'Dummy Name 36', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (54, 'Dummy Name 69', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (55, 'Dummy Name 128', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (56, 'Dummy Name 10', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (57, 'Dummy Name 190', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (58, 'Dummy Name 12', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (59, 'Dummy Name 136', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (60, 'Dummy Name 149', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (61, 'Dummy Name 54', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (62, 'Dummy Name 25', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (63, 'Dummy Name 6', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (64, 'Dummy Name 63', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (65, 'Dummy Name 104', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (66, 'Dummy Name 46', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (67, 'Dummy Name 67', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (68, 'Dummy Name 146', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (69, 'Dummy Name 73', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (70, 'Dummy Name 69', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (71, 'Dummy Name 64', 'T_TRAVEL', 'Canada');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (72, 'Dummy Name 49', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (73, 'Dummy Name 108', 'A_TRAVEL', 'Denmark');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (74, 'Dummy Name 113', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (75, 'Dummy Name 149', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (76, 'Dummy Name 112', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (77, 'Dummy Name 70', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (78, 'Dummy Name 93', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (79, 'Dummy Name 95', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (80, 'Dummy Name 160', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (81, 'Dummy Name 21', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (82, 'Dummy Name 174', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (83, 'Dummy Name 52', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (84, 'Dummy Name 4', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (85, 'Dummy Name 48', 'A_TRAVEL', 'Denmark');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (86, 'Dummy Name 196', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (87, 'Dummy Name 191', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (88, 'Dummy Name 119', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (89, 'Dummy Name 22', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (90, 'Dummy Name 110', 'nan', 'Israel');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (91, 'Dummy Name 17', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (92, 'Dummy Name 95', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (93, 'Dummy Name 20', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (94, 'Dummy Name 139', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (95, 'Dummy Name 128', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (96, 'Dummy Name 193', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (97, 'Dummy Name 21', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (98, 'Dummy Name 79', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (99, 'Dummy Name 92', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (100, 'Dummy Name 89', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (101, 'Dummy Name 71', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (102, 'Dummy Name 176', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (103, 'Dummy Name 18', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (104, 'Dummy Name 60', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (105, 'Dummy Name 58', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (106, 'Dummy Name 114', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (107, 'Dummy Name 137', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (108, 'Dummy Name 118', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (109, 'Dummy Name 86', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (110, 'Dummy Name 90', 'nan', 'Canada');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (111, 'Dummy Name 180', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (112, 'Dummy Name 129', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (113, 'Dummy Name 196', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (114, 'Dummy Name 153', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (115, 'Dummy Name 109', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (116, 'Dummy Name 1', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (117, 'Dummy Name 109', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (118, 'Dummy Name 162', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (119, 'Dummy Name 173', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (120, 'Dummy Name 178', 'nan', 'Australia');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (121, 'Dummy Name 123', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (122, 'Dummy Name 10', 'T_TRAVEL', 'Singapore');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (123, 'Dummy Name 117', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (124, 'Dummy Name 36', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (125, 'Dummy Name 77', 'nan', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (126, 'Dummy Name 37', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (127, 'Dummy Name 171', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (128, 'Dummy Name 28', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (129, 'Dummy Name 190', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (130, 'Dummy Name 40', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (131, 'Dummy Name 13', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (132, 'Dummy Name 9', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (133, 'Dummy Name 13', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (134, 'Dummy Name 129', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (135, 'Dummy Name 104', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (136, 'Dummy Name 60', 'A_TRAVEL', 'Equador');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (137, 'Dummy Name 77', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (138, 'Dummy Name 157', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (139, 'Dummy Name 14', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (140, 'Dummy Name 81', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (141, 'Dummy Name 106', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (142, 'Dummy Name 16', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (143, 'Dummy Name 102', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (144, 'Dummy Name 6', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (145, 'Dummy Name 142', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (146, 'Dummy Name 119', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (147, 'Dummy Name 187', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (148, 'Dummy Name 65', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (149, 'Dummy Name 195', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (150, 'Dummy Name 92', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (151, 'Dummy Name 105', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (152, 'Dummy Name 34', 'Z_TRAVEL', 'Hong Kong');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (153, 'Dummy Name 124', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (154, 'Dummy Name 54', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (155, 'Dummy Name 55', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (156, 'Dummy Name 130', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (157, 'Dummy Name 5', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (158, 'Dummy Name 119', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (159, 'Dummy Name 75', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (160, 'Dummy Name 137', 'Z_TRAVEL', 'Canada');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (161, 'Dummy Name 123', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (162, 'Dummy Name 25', 'T_TRAVEL', 'Canada');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (163, 'Dummy Name 131', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (164, 'Dummy Name 142', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (165, 'Dummy Name 93', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (166, 'Dummy Name 80', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (167, 'Dummy Name 130', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (168, 'Dummy Name 130', 'A_TRAVEL', 'Denmark');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (169, 'Dummy Name 36', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (170, 'Dummy Name 185', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (171, 'Dummy Name 44', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (172, 'Dummy Name 15', 'A_TRAVEL', 'Denmark');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (173, 'Dummy Name 29', 'T_TRAVEL', 'Canada');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (174, 'Dummy Name 6', 'T_TRAVEL', 'Australia');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (175, 'Dummy Name 155', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (176, 'Dummy Name 17', 'A_TRAVEL', 'Denmark');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (177, 'Dummy Name 42', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (178, 'Dummy Name 102', 'D_TRAVEL', 'Mexico');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (179, 'Dummy Name 8', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (180, 'Dummy Name 21', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (181, 'Dummy Name 101', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (182, 'Dummy Name 39', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (183, 'Dummy Name 34', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (184, 'Dummy Name 80', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (185, 'Dummy Name 31', 'D_TRAVEL', 'Mexico');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (186, 'Dummy Name 11', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (187, 'Dummy Name 98', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (188, 'Dummy Name 181', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (189, 'Dummy Name 16', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (190, 'Dummy Name 104', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (191, 'Dummy Name 35', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (192, 'Dummy Name 184', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (193, 'Dummy Name 86', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (194, 'Dummy Name 184', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (195, 'Dummy Name 3', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (196, 'Dummy Name 76', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (197, 'Dummy Name 161', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (198, 'Dummy Name 73', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (199, 'Dummy Name 59', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (200, 'Dummy Name 139', 'Z_TRAVEL', 'Bermuda');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (201, 'Dummy Name 137', 'T_TRAVEL', 'Canada');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (202, 'Dummy Name 126', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (203, 'Dummy Name 99', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (204, 'Dummy Name 166', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (205, 'Dummy Name 165', 'T_TRAVEL', 'Canada');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (206, 'Dummy Name 32', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (207, 'Dummy Name 34', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (208, 'Dummy Name 17', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (209, 'Dummy Name 187', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (210, 'Dummy Name 109', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (211, 'Dummy Name 81', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (212, 'Dummy Name 128', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (213, 'Dummy Name 176', 'T_TRAVEL', 'Canada');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (214, 'Dummy Name 87', 'T_TRAVEL', 'Hong Kong');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (215, 'Dummy Name 182', 'T_TRAVEL', 'Australia');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (216, 'Dummy Name 121', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (217, 'Dummy Name 48', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (218, 'Dummy Name 8', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (219, 'Dummy Name 91', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (220, 'Dummy Name 30', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (221, 'Dummy Name 133', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (222, 'Dummy Name 125', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (223, 'Dummy Name 37', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (224, 'Dummy Name 186', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (225, 'Dummy Name 153', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (226, 'Dummy Name 120', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (227, 'Dummy Name 97', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (228, 'Dummy Name 177', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (229, 'Dummy Name 54', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (230, 'Dummy Name 49', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (231, 'Dummy Name 60', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (232, 'Dummy Name 78', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (233, 'Dummy Name 110', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (234, 'Dummy Name 154', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (235, 'Dummy Name 100', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (236, 'Dummy Name 116', 'T_TRAVEL', 'Australia');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (237, 'Dummy Name 49', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (238, 'Dummy Name 90', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (239, 'Dummy Name 145', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (240, 'Dummy Name 110', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (241, 'Dummy Name 51', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (242, 'Dummy Name 175', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (243, 'Dummy Name 70', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (244, 'Dummy Name 48', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (245, 'Dummy Name 161', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (246, 'Dummy Name 109', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (247, 'Dummy Name 53', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (248, 'Dummy Name 143', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (249, 'Dummy Name 43', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (250, 'Dummy Name 46', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (251, 'Dummy Name 166', 'T_TRAVEL', 'Canada');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (252, 'Dummy Name 193', 'A_TRAVEL', 'Denmark');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (253, 'Dummy Name 82', 'Z_TRAVEL', 'Canada');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (254, 'Dummy Name 84', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (255, 'Dummy Name 50', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (256, 'Dummy Name 163', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (257, 'Dummy Name 52', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (258, 'Dummy Name 187', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (259, 'Dummy Name 61', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (260, 'Dummy Name 105', 'A_TRAVEL', 'Denmark');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (261, 'Dummy Name 140', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (262, 'Dummy Name 152', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (263, 'Dummy Name 162', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (264, 'Dummy Name 22', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (265, 'Dummy Name 112', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (266, 'Dummy Name 116', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (267, 'Dummy Name 83', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (268, 'Dummy Name 128', 'A_TRAVEL', 'Denmark');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (269, 'Dummy Name 120', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (270, 'Dummy Name 29', 'T_TRAVEL', 'Australia');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (271, 'Dummy Name 37', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (272, 'Dummy Name 67', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (273, 'Dummy Name 84', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (274, 'Dummy Name 190', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (275, 'Dummy Name 147', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (276, 'Dummy Name 77', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (277, 'Dummy Name 187', 'T_TRAVEL', 'Singapore');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (278, 'Dummy Name 127', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (279, 'Dummy Name 79', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (280, 'Dummy Name 62', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (281, 'Dummy Name 24', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (282, 'Dummy Name 165', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (283, 'Dummy Name 101', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (284, 'Dummy Name 159', 'A_TRAVEL', 'Australia');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (285, 'Dummy Name 150', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (286, 'Dummy Name 75', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (287, 'Dummy Name 175', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (288, 'Dummy Name 82', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (289, 'Dummy Name 158', 'D_TRAVEL', 'Canada');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (290, 'Dummy Name 129', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (291, 'Dummy Name 116', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (292, 'Dummy Name 80', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (293, 'Dummy Name 7', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (294, 'Dummy Name 36', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (295, 'Dummy Name 93', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (296, 'Dummy Name 115', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (297, 'Dummy Name 76', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (298, 'Dummy Name 18', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (299, 'Dummy Name 64', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (300, 'Dummy Name 72', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (301, 'Dummy Name 102', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (302, 'Dummy Name 25', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (303, 'Dummy Name 194', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (304, 'Dummy Name 86', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (305, 'Dummy Name 188', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (306, 'Dummy Name 57', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (307, 'Dummy Name 116', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (308, 'Dummy Name 40', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (309, 'Dummy Name 106', 'T_TRAVEL', 'Canada');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (310, 'Dummy Name 172', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (311, 'Dummy Name 185', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (312, 'Dummy Name 86', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (313, 'Dummy Name 149', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (314, 'Dummy Name 148', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (315, 'Dummy Name 73', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (316, 'Dummy Name 65', 'T_TRAVEL', 'Canada');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (317, 'Dummy Name 73', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (318, 'Dummy Name 152', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (319, 'Dummy Name 175', 'nan', 'Canada');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (320, 'Dummy Name 125', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (321, 'Dummy Name 1', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (322, 'Dummy Name 37', 'nan', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (323, 'Dummy Name 188', 'nan', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (324, 'Dummy Name 26', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (325, 'Dummy Name 63', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (326, 'Dummy Name 149', 'T_TRAVEL', 'Canada');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (327, 'Dummy Name 45', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (328, 'Dummy Name 99', 'nan', 'Canada');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (329, 'Dummy Name 13', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (330, 'Dummy Name 96', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (331, 'Dummy Name 33', 'nan', 'Australia');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (332, 'Dummy Name 180', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (333, 'Dummy Name 38', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (334, 'Dummy Name 151', 'T_TRAVEL', 'Singapore');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (335, 'Dummy Name 48', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (336, 'Dummy Name 72', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (337, 'Dummy Name 180', 'T_TRAVEL', 'New Zealand');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (338, 'Dummy Name 178', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (339, 'Dummy Name 53', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (340, 'Dummy Name 155', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (341, 'Dummy Name 10', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (342, 'Dummy Name 110', 'nan', 'nan');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (343, 'Dummy Name 55', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (344, 'Dummy Name 68', 'Z_TRAVEL', 'nan');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (345, 'Dummy Name 96', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (346, 'Dummy Name 112', 'T_TRAVEL', 'Singapore');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (347, 'Dummy Name 190', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (348, 'Dummy Name 179', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (349, 'Dummy Name 73', 'T_TRAVEL', 'Australia');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (350, 'Dummy Name 193', 'T_TRAVEL', 'Singapore');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (351, 'Dummy Name 174', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (352, 'Dummy Name 103', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (353, 'Dummy Name 91', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (354, 'Dummy Name 27', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (355, 'Dummy Name 146', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (356, 'Dummy Name 138', 'T_TRAVEL', 'Australia');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (357, 'Dummy Name 2', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (358, 'Dummy Name 162', 'T_TRAVEL', 'Australia');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (359, 'Dummy Name 55', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (360, 'Dummy Name 135', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (361, 'Dummy Name 54', 'T_TRAVEL', 'Australia');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (362, 'Dummy Name 155', 'T_TRAVEL', 'Australia');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (363, 'Dummy Name 64', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (364, 'Dummy Name 170', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (365, 'Dummy Name 132', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (366, 'Dummy Name 36', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (367, 'Dummy Name 29', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (368, 'Dummy Name 54', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (369, 'Dummy Name 89', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (370, 'Dummy Name 4', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (371, 'Dummy Name 72', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (372, 'Dummy Name 183', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (373, 'Dummy Name 151', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (374, 'Dummy Name 58', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (375, 'Dummy Name 95', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (376, 'Dummy Name 124', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (377, 'Dummy Name 140', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (378, 'Dummy Name 167', 'T_TRAVEL', 'Australia');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (379, 'Dummy Name 69', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (380, 'Dummy Name 156', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (381, 'Dummy Name 108', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (382, 'Dummy Name 53', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (383, 'Dummy Name 36', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (384, 'Dummy Name 21', 'T_TRAVEL', 'New Zealand');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (385, 'Dummy Name 164', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (386, 'Dummy Name 24', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (387, 'Dummy Name 146', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (388, 'Dummy Name 9', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (389, 'Dummy Name 28', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (390, 'Dummy Name 176', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (391, 'Dummy Name 189', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (392, 'Dummy Name 47', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (393, 'Dummy Name 111', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (394, 'Dummy Name 126', 'T_TRAVEL', 'New Zealand');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (395, 'Dummy Name 26', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (396, 'Dummy Name 26', 'T_TRAVEL', 'Australia');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (397, 'Dummy Name 19', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (398, 'Dummy Name 4', 'T_TRAVEL', 'Singapore');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (399, 'Dummy Name 119', 'D_TRAVEL', 'Mexico');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (400, 'Dummy Name 135', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (401, 'Dummy Name 170', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (402, 'Dummy Name 52', 'D_TRAVEL', 'Mexico');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (403, 'Dummy Name 39', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (404, 'Dummy Name 40', 'T_TRAVEL', 'Australia');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (405, 'Dummy Name 175', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (406, 'Dummy Name 15', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (407, 'Dummy Name 61', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (408, 'Dummy Name 74', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (409, 'Dummy Name 15', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (410, 'Dummy Name 156', 'T_TRAVEL', 'Canada');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (411, 'Dummy Name 61', 'T_TRAVEL', 'Canada');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (412, 'Dummy Name 48', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (413, 'Dummy Name 196', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (414, 'Dummy Name 142', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (415, 'Dummy Name 191', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (416, 'Dummy Name 29', 'D_TRAVEL', 'Mexico');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (417, 'Dummy Name 92', 'T_TRAVEL', 'Brazil');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (418, 'Dummy Name 94', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (419, 'Dummy Name 87', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (420, 'Dummy Name 10', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (421, 'Dummy Name 179', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (422, 'Dummy Name 186', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (423, 'Dummy Name 99', 'T_TRAVEL', 'Singapore');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (424, 'Dummy Name 145', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (425, 'Dummy Name 70', 'Z_TRAVEL', 'Canada');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (426, 'Dummy Name 73', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (427, 'Dummy Name 108', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (428, 'Dummy Name 123', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (429, 'Dummy Name 157', 'T_TRAVEL', 'Canada');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (430, 'Dummy Name 129', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (431, 'Dummy Name 23', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (432, 'Dummy Name 190', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (433, 'Dummy Name 134', 'Z_TRAVEL', 'Canada');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (434, 'Dummy Name 188', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (435, 'Dummy Name 36', 'T_TRAVEL', 'India');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (436, 'Dummy Name 47', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (437, 'Dummy Name 65', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (438, 'Dummy Name 41', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (439, 'Dummy Name 128', 'D_TRAVEL', 'Czech Republic');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (440, 'Dummy Name 180', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (441, 'Dummy Name 131', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (442, 'Dummy Name 17', 'D_TRAVEL', '.');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (443, 'Dummy Name 157', 'nan', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (444, 'Dummy Name 5', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (445, 'Dummy Name 195', 'A_TRAVEL', 'Denmark');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (446, 'Dummy Name 46', 'Z_TRAVEL', 'UAE');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (447, 'Dummy Name 107', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (448, 'Dummy Name 69', 'A_TRAVEL', 'Denmark');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (449, 'Dummy Name 154', 'A_TRAVEL', 'Denmark');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (450, 'Dummy Name 131', 'A_TRAVEL', 'Denmark');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (451, 'Dummy Name 80', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (452, 'Dummy Name 33', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (453, 'Dummy Name 58', 'A_TRAVEL', 'Denmark');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (454, 'Dummy Name 130', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (455, 'Dummy Name 164', 'nan', 'Canada');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (456, 'Dummy Name 57', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (457, 'Dummy Name 42', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (458, 'Dummy Name 160', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (459, 'Dummy Name 163', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (460, 'Dummy Name 73', 'A_TRAVEL', 'Denmark');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (461, 'Dummy Name 135', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (462, 'Dummy Name 145', 'A_TRAVEL', 'Denmark');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (463, 'Dummy Name 68', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (464, 'Dummy Name 64', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (465, 'Dummy Name 12', 'A_TRAVEL', 'Germany');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (466, 'Dummy Name 130', 'A_TRAVEL', 'Germany');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (467, 'Dummy Name 155', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (468, 'Dummy Name 85', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (469, 'Dummy Name 121', 'nan', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (470, 'Dummy Name 135', 'A_TRAVEL', 'Denmark');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (471, 'Dummy Name 114', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (472, 'Dummy Name 83', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (473, 'Dummy Name 88', 'A_TRAVEL', 'Denmark');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (474, 'Dummy Name 25', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (475, 'Dummy Name 54', 'A_TRAVEL', 'Denmark');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (476, 'Dummy Name 126', 'A_TRAVEL', 'Denmark');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (477, 'Dummy Name 67', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (478, 'Dummy Name 45', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (479, 'Dummy Name 92', 'A_TRAVEL', 'Denmark');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (480, 'Dummy Name 23', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (481, 'Dummy Name 40', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (482, 'Dummy Name 192', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (483, 'Dummy Name 56', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (484, 'Dummy Name 1', 'A_TRAVEL', 'Denmark');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (485, 'Dummy Name 138', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (486, 'Dummy Name 83', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (487, 'Dummy Name 165', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (488, 'Dummy Name 80', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (489, 'Dummy Name 138', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (490, 'Dummy Name 115', 'A_TRAVEL', 'Denmark');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (491, 'Dummy Name 4', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (492, 'Dummy Name 163', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (493, 'Dummy Name 188', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (494, 'Dummy Name 105', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (495, 'Dummy Name 24', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (496, 'Dummy Name 157', 'Z_TRAVEL', 'Indonesia');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (497, 'Dummy Name 166', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (498, 'Dummy Name 20', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (499, 'Dummy Name 99', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (500, 'Dummy Name 103', 'T_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (501, 'Dummy Name 64', 'T_TRAVEL', 'Hong Kong');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (502, 'Dummy Name 63', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (503, 'Dummy Name 156', 'Z_TRAVEL', 'Singapore');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (504, 'Dummy Name 75', 'T_TRAVEL', 'Singapore');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (505, 'Dummy Name 175', 'Z_TRAVEL', 'Canada');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (506, 'Dummy Name 121', 'D_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (507, 'Dummy Name 42', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (508, 'Dummy Name 74', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (509, 'Dummy Name 193', 'T_TRAVEL', 'China');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (510, 'Dummy Name 166', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (511, 'Dummy Name 2', 'Z_TRAVEL', 'Trinidad e Tobago');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (512, 'Dummy Name 93', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (513, 'Dummy Name 122', 'A_TRAVEL', 'Germany');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (514, 'Dummy Name 100', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (515, 'Dummy Name 46', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (516, 'Dummy Name 67', 'A_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (517, 'Dummy Name 88', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (518, 'Dummy Name 195', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (519, 'Dummy Name 14', 'Z_TRAVEL', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (520, 'Dummy Name 111', 'D_TRAVEL', 'Portugal');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (521, 'Dummy Name 162', 'nan', 'USA');
INSERT INTO clientes (id_cliente, nome_cliente, grupo_cliente, morada) VALUES (522, 'Dummy Name 108', 'D_TRAVEL', 'USA');
INSERT INTO operadores (id_operador, nome_utilizador) VALUES (1, 'afonso.m');
INSERT INTO operadores (id_operador, nome_utilizador) VALUES (2, 'duarte.m');
INSERT INTO operadores (id_operador, nome_utilizador) VALUES (3, 'charepe.f');
INSERT INTO operadores (id_operador, nome_utilizador) VALUES (4, 'valente.j');
INSERT INTO operadores (id_operador, nome_utilizador) VALUES (5, 'marques.a');
INSERT INTO operadores (id_operador, nome_utilizador) VALUES (6, 'guia.j');
INSERT INTO operadores (id_operador, nome_utilizador) VALUES (7, 'castanheira.m');
INSERT INTO operadores (id_operador, nome_utilizador) VALUES (8, 'vieira.m');
INSERT INTO operadores (id_operador, nome_utilizador) VALUES (9, 'goncalves.m');
INSERT INTO operadores (id_operador, nome_utilizador) VALUES (10, 'pais.m');
INSERT INTO operadores (id_operador, nome_utilizador) VALUES (11, 'martinho.m');
INSERT INTO operadores (id_operador, nome_utilizador) VALUES (12, 'diniz.j');
INSERT INTO destinos (id_destino, codigo) VALUES (1, 'LIS');
INSERT INTO destinos (id_destino, codigo) VALUES (2, 'OPO');
INSERT INTO destinos (id_destino, codigo) VALUES (3, 'FNC');
INSERT INTO destinos (id_destino, codigo) VALUES (4, 'PDL');
INSERT INTO destinos (id_destino, codigo) VALUES (5, 'FAO');
INSERT INTO destinos (id_destino, codigo) VALUES (6, 'SANTIAGO DE COMPOSTELA');
INSERT INTO destinos (id_destino, codigo) VALUES (7, 'MONCHIQUE');
INSERT INTO destinos (id_destino, codigo) VALUES (8, 'PIX');
INSERT INTO destinos (id_destino, codigo) VALUES (9, 'PARIS');
INSERT INTO destinos (id_destino, codigo) VALUES (10, 'TER');
INSERT INTO destinos (id_destino, codigo) VALUES (11, 'AZORES');
INSERT INTO destinos (id_destino, codigo) VALUES (12, 'EVORA');
INSERT INTO destinos (id_destino, codigo) VALUES (13, 'SÃO MIGUEL');
INSERT INTO destinos (id_destino, codigo) VALUES (14, 'nan');
INSERT INTO destinos (id_destino, codigo) VALUES (15, 'CASCAIS');
INSERT INTO destinos (id_destino, codigo) VALUES (16, 'FARO');
INSERT INTO destinos (id_destino, codigo) VALUES (17, 'DOURO');
INSERT INTO destinos (id_destino, codigo) VALUES (18, 'NY');
INSERT INTO destinos (id_destino, codigo) VALUES (19, 'VIDAGO');
INSERT INTO destinos (id_destino, codigo) VALUES (20, 'ARRAIOLOS');
INSERT INTO destinos (id_destino, codigo) VALUES (21, 'FáTIMA');
INSERT INTO destinos (id_destino, codigo) VALUES (22, 'ALENTEJO');
INSERT INTO destinos (id_destino, codigo) VALUES (23, 'FUNCHAL');
INSERT INTO destinos (id_destino, codigo) VALUES (24, 'TROIA');
INSERT INTO destinos (id_destino, codigo) VALUES (25, 'TRóIA');
INSERT INTO destinos (id_destino, codigo) VALUES (26, 'VISEU');
INSERT INTO destinos (id_destino, codigo) VALUES (27, 'SERRA DA ESTRELA');
INSERT INTO destinos (id_destino, codigo) VALUES (28, 'FO');
INSERT INTO destinos (id_destino, codigo) VALUES (29, 'COMPORTA');
INSERT INTO destinos (id_destino, codigo) VALUES (30, 'ALGARVE');
INSERT INTO destinos (id_destino, codigo) VALUES (31, 'ROMA');
INSERT INTO destinos (id_destino, codigo) VALUES (32, 'MONTARGIL');
INSERT INTO destinos (id_destino, codigo) VALUES (33, 'SESIMBRA');
INSERT INTO destinos (id_destino, codigo) VALUES (34, 'SINTRA');
INSERT INTO destinos (id_destino, codigo) VALUES (35, 'LAGOS');
INSERT INTO destinos (id_destino, codigo) VALUES (36, 'BEJA');
INSERT INTO destinos (id_destino, codigo) VALUES (37, 'OBIDOS');
INSERT INTO destinos (id_destino, codigo) VALUES (38, 'MADEIRA');
INSERT INTO destinos (id_destino, codigo) VALUES (39, 'CURIA');
INSERT INTO destinos (id_destino, codigo) VALUES (40, 'COMP');
INSERT INTO destinos (id_destino, codigo) VALUES (41, 'POR');
INSERT INTO destinos (id_destino, codigo) VALUES (42, 'FAR');
INSERT INTO destinos (id_destino, codigo) VALUES (43, 'PONTAD');
INSERT INTO destinos (id_destino, codigo) VALUES (44, 'ALG');

INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    1, '2025-04-22', 1, 1, 1,
    '2025-09-10', '2025-09-23', 2,
    9856.89, 16580.00, 6723.11
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    465, '2023-01-13', 1, 1, 1,
    '2023-09-03', '2023-09-11', 2,
    5268.57, 7530.00, 2261.43
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    4, '2025-04-12', 1, 4, 1,
    '2026-03-26', '2026-04-04', 4,
    9572.20, 13310.00, 3737.80
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    12, '2025-04-03', 1, 12, 1,
    '2025-05-01', '2025-05-08', 2,
    3103.75, 4800.00, 1696.25
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    13, '2025-04-01', 1, 13, 1,
    '2025-08-28', '2025-09-05', 2,
    4587.20, 7720.00, 3132.80
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    20, '2025-03-21', 1, 20, 1,
    '2025-03-24', '2025-03-26', 2,
    2684.00, 4820.00, 2136.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    77, '2025-01-02', 1, 21, 1,
    '2025-10-03', '2025-10-12', 4,
    18672.86, 29900.00, 11227.14
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    22, '2025-03-20', 1, 22, 1,
    '2025-09-06', '2025-09-14', 4,
    12086.12, 18530.00, 6443.88
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    121, '2024-09-25', 1, 27, 1,
    '2025-05-03', '2025-05-13', 4,
    20390.11, 29780.00, 9389.89
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    30, '2025-03-14', 1, 30, 1,
    '2025-07-12', '2025-07-21', 10,
    35010.40, 50160.00, 15149.60
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    175, '2024-06-25', 1, 41, 1,
    '2024-09-08', '2024-09-17', 2,
    9413.68, 17410.00, 7996.32
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    42, '2025-02-24', 1, 42, 1,
    '2025-05-08', '2025-05-23', 4,
    14175.90, 24540.00, 10364.10
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    312, '2023-11-03', 1, 42, 1,
    '2023-11-13', '2023-11-13', 4,
    558.88, 986.00, 427.12
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    46, '2025-02-14', 1, 46, 1,
    '2025-09-22', '2025-09-27', 2,
    4549.21, 7160.00, 2610.79
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    48, '2025-02-12', 1, 47, 1,
    '2025-09-12', '2025-09-22', 2,
    8768.13, 13370.00, 4601.87
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    52, '2025-02-07', 1, 51, 1,
    '2025-06-07', '2025-06-20', 2,
    16643.27, 25230.00, 8586.73
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    57, '2025-02-05', 1, 56, 1,
    '2025-05-24', '2025-06-03', 4,
    9755.35, 14640.00, 4884.65
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    60, '2025-01-31', 1, 59, 1,
    '2025-04-30', '2025-05-09', 6,
    12550.29, 19030.00, 6479.71
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    532, '2022-06-20', 1, 67, 1,
    '2022-12-25', '2023-01-05', 2,
    4316.62, 6180.00, 1863.38
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    73, '2025-01-15', 1, 72, 1,
    '2025-08-04', '2025-08-13', 2,
    8925.05, 15530.00, 6604.95
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    318, '2023-10-03', 1, 76, 1,
    '2024-02-18', '2024-02-25', 2,
    3118.52, 5200.00, 2081.48
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    489, '2022-10-28', 1, 80, 1,
    '2022-12-07', '2022-12-17', 2,
    5550.26, 9000.00, 3449.74
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    166, '2024-07-04', 1, 88, 1,
    '2024-09-28', '2024-10-08', 4,
    13559.00, 20556.00, 6997.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    399, '2023-04-11', 1, 89, 1,
    '2023-04-29', '2023-04-30', 0,
    89.00, 89.00, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    95, '2024-11-22', 1, 92, 1,
    '2025-04-14', '2025-04-16', 2,
    1279.44, 2320.00, 1040.56
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    99, '2024-11-18', 1, 96, 1,
    '2025-05-17', '2025-05-25', 4,
    11549.81, 18140.00, 6590.19
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    102, '2024-11-13', 1, 99, 1,
    '2025-03-04', '2025-03-14', 4,
    14110.62, 24120.00, 10009.38
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    106, '2024-10-31', 1, 103, 1,
    '2025-09-03', '2025-09-11', 2,
    9352.77, 13760.00, 4407.23
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    111, '2024-10-21', 1, 108, 1,
    '2024-12-14', '2024-12-23', 2,
    7432.26, 11580.00, 4147.74
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    112, '2024-10-17', 1, 109, 1,
    '2025-02-22', '2025-02-23', 2,
    286.65, 286.65, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    533, '2022-06-17', 1, 112, 1,
    '2022-08-08', '2022-08-19', 1,
    585.06, 990.00, 404.94
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    124, '2024-09-20', 1, 118, 1,
    '2025-05-30', '2025-06-14', 3,
    21337.55, 33215.00, 11877.45
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    360, '2023-06-26', 1, 133, 1,
    '2023-07-24', '2023-08-05', 3,
    14500.60, 22605.00, 8104.40
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    141, '2024-08-14', 1, 134, 1,
    '2024-10-14', '2024-10-25', 2,
    11501.09, 17530.00, 6028.91
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    144, '2024-08-12', 1, 137, 1,
    '2024-10-08', '2024-10-15', 7,
    13462.38, 22850.00, 9387.62
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    150, '2024-07-31', 1, 142, 1,
    '2024-10-04', '2024-10-21', 1,
    9682.04, 15940.00, 6257.96
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    379, '2023-05-12', 1, 148, 1,
    '2023-07-02', '2023-07-10', 4,
    12679.52, 20000.00, 7320.48
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    162, '2024-07-12', 1, 152, 1,
    '2024-08-18', '2024-08-27', 3,
    12919.58, 20020.00, 7100.42
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    163, '2024-07-11', 1, 153, 1,
    '2024-09-05', '2024-09-16', 2,
    8385.47, 13440.00, 5054.53
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    483, '2022-11-23', 1, 154, 1,
    '2023-05-15', '2023-05-28', 4,
    13752.84, 19540.00, 5787.16
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    474, '2022-12-16', 1, 155, 1,
    '2023-07-11', '2023-07-22', 6,
    18870.45, 35900.00, 17029.55
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    364, '2023-06-12', 1, 164, 1,
    '2023-08-24', '2023-09-01', 4,
    11416.79, 19050.00, 7633.21
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    421, '2023-03-09', 1, 164, 1,
    '2023-05-17', '2023-05-31', 2,
    12804.15, 21390.00, 8585.85
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    185, '2024-06-11', 1, 170, 1,
    '2024-10-15', '2024-10-24', 2,
    6991.25, 11196.00, 4204.75
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    204, '2024-04-29', 1, 185, 1,
    '2024-06-29', '2024-07-03', 4,
    2358.88, 3220.00, 861.12
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    620, '2020-01-31', 1, 186, 1,
    '2023-09-25', '2023-12-01', 2,
    7790.87, 12170.00, 4379.13
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    394, '2023-04-20', 1, 194, 1,
    '2023-10-28', '2023-11-07', 2,
    3612.77, 5600.00, 1987.23
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    219, '2024-04-08', 1, 198, 1,
    '2024-06-16', '2024-06-22', 2,
    5847.15, 9590.00, 3742.85
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    221, '2024-04-08', 1, 200, 1,
    '2024-07-12', '2024-07-23', 2,
    6125.73, 9960.00, 3834.27
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    287, '2024-01-08', 1, 203, 1,
    '2024-10-04', '2024-10-25', 2,
    6568.82, 10506.00, 3937.18
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    228, '2024-04-01', 1, 206, 1,
    '2024-09-17', '2024-09-27', 6,
    21093.05, 34700.00, 13606.95
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    232, '2024-03-26', 1, 209, 1,
    '2024-06-30', '2024-07-07', 2,
    4614.45, 7760.00, 3145.55
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    625, '2019-12-18', 1, 210, 1,
    '2023-09-07', '2023-09-19', 2,
    11190.35, 18572.30, 7381.95
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    577, '2022-03-03', 1, 217, 1,
    '2022-08-07', '2022-08-16', 2,
    6698.85, 9850.00, 3151.15
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    470, '2022-12-28', 1, 229, 1,
    '2023-04-06', '2023-04-15', 2,
    9631.94, 15300.00, 5668.06
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    258, '2024-02-13', 1, 231, 1,
    '2024-09-18', '2024-10-01', 2,
    11057.34, 16916.00, 5858.66
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    268, '2024-01-30', 1, 240, 1,
    '2024-06-26', '2024-06-30', 4,
    2740.77, 5180.00, 2439.23
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    269, '2024-01-29', 1, 241, 1,
    '2024-05-06', '2024-05-18', 6,
    20660.86, 35190.00, 14529.14
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    273, '2024-01-26', 1, 245, 1,
    '2024-03-16', '2024-03-29', 2,
    8713.93, 13690.00, 4976.07
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    276, '2024-01-24', 1, 247, 1,
    '2024-10-17', '2024-10-26', 4,
    9799.66, 17565.00, 7765.34
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    283, '2024-01-12', 1, 253, 1,
    '2024-10-25', '2024-11-05', 14,
    36406.58, 45539.00, 9132.42
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    288, '2023-12-27', 1, 256, 1,
    '2024-06-29', '2024-07-07', 14,
    24197.58, 37041.05, 12843.47
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    298, '2023-11-29', 1, 265, 1,
    '2024-09-22', '2024-10-03', 3,
    10454.71, 15271.85, 4817.14
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    307, '2023-11-10', 1, 274, 1,
    '2024-10-21', '2024-10-29', 2,
    6874.40, 11092.00, 4217.60
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    309, '2023-11-07', 1, 276, 1,
    '2023-12-27', '2024-01-03', 2,
    4228.87, 6550.00, 2321.13
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    311, '2023-11-03', 1, 278, 1,
    '2023-12-09', '2023-12-17', 2,
    4962.89, 8200.00, 3237.11
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    403, '2023-04-06', 1, 286, 1,
    '2024-09-18', '2024-12-31', 2,
    4400.36, 6680.00, 2279.64
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    500, '2022-09-15', 1, 288, 1,
    '2023-05-06', '2023-05-16', 2,
    4882.70, 7630.00, 2747.30
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    593, '2021-11-15', 1, 288, 1,
    '2022-05-30', '2022-06-12', 2,
    3633.87, 6300.00, 2666.13
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    329, '2023-09-07', 1, 289, 1,
    '2023-10-03', '2023-10-12', 2,
    5702.89, 11709.45, 6006.56
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    395, '2023-04-19', 1, 294, 1,
    '2023-10-21', '2023-10-28', 2,
    4411.51, 6890.00, 2478.49
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    414, '2023-03-20', 1, 294, 1,
    '2023-07-11', '2023-07-22', 2,
    5812.77, 8290.00, 2477.23
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    342, '2023-08-03', 1, 297, 1,
    '2023-10-12', '2023-10-25', 2,
    10352.23, 16455.00, 6102.77
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    343, '2023-08-02', 1, 298, 1,
    '2024-05-17', '2024-05-27', 4,
    19183.18, 31160.00, 11976.82
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    351, '2023-07-20', 1, 304, 1,
    '2024-05-16', '2024-05-22', 1,
    2808.06, 4875.00, 2066.94
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    352, '2023-07-13', 1, 305, 1,
    '2023-09-16', '2023-09-23', 2,
    5913.71, 9950.00, 4036.29
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    628, '2019-11-21', 1, 306, 1,
    '2022-03-21', '2022-04-02', 2,
    5333.51, 7648.81, 2315.30
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    388, '2023-05-02', 1, 332, 1,
    '2023-07-15', '2023-07-27', 4,
    19310.41, 29740.00, 10429.59
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    585, '2022-02-15', 1, 332, 1,
    '2022-05-05', '2022-05-16', 2,
    10189.97, 16100.00, 5910.03
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    392, '2023-04-20', 1, 336, 1,
    '2023-11-17', '2023-11-26', 5,
    19543.75, 30950.00, 11406.25
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    396, '2023-04-18', 1, 338, 1,
    '2023-07-21', '2023-08-03', 2,
    7356.16, 10910.00, 3553.84
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    415, '2023-03-20', 1, 339, 1,
    '2023-06-18', '2023-06-24', 5,
    7194.49, 11275.00, 4080.51
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    400, '2023-04-11', 1, 340, 1,
    '2023-09-16', '2023-09-29', 2,
    8646.23, 13670.00, 5023.77
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    401, '2023-04-06', 1, 341, 1,
    '2023-08-28', '2023-09-11', 2,
    6074.37, 9750.00, 3675.63
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    405, '2023-04-04', 1, 343, 1,
    '2023-09-11', '2023-09-22', 4,
    10609.87, 15950.00, 5340.13
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    408, '2023-03-27', 1, 345, 1,
    '2023-08-19', '2023-08-27', 2,
    6565.32, 11010.00, 4444.68
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    443, '2023-02-06', 1, 352, 1,
    '2023-05-07', '2023-05-17', 2,
    6778.48, 10560.00, 3781.52
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    435, '2023-02-22', 1, 365, 1,
    '2023-10-10', '2023-10-23', 2,
    5732.02, 9110.00, 3377.98
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    436, '2023-02-21', 1, 366, 1,
    '2023-04-06', '2023-04-14', 3,
    15760.51, 22740.00, 6979.49
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    553, '2022-05-10', 1, 367, 1,
    '2022-06-28', '2022-07-01', 4,
    723.25, 1196.00, 472.75
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    442, '2023-02-08', 1, 369, 1,
    '2023-05-19', '2023-06-08', 6,
    9395.70, 14340.00, 4944.30
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    445, '2023-02-03', 1, 370, 1,
    '2023-04-30', '2023-05-13', 10,
    40662.91, 64220.00, 23557.09
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    450, '2023-01-30', 1, 375, 1,
    '2023-05-01', '2023-05-15', 4,
    20015.16, 30280.00, 10264.84
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    635, '2019-10-11', 1, 375, 1,
    '2022-09-18', '2022-09-24', 2,
    7091.22, 11700.00, 4608.78
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    460, '2023-01-19', 1, 379, 1,
    '2023-09-06', '2023-09-15', 2,
    9739.73, 16880.00, 7140.27
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    462, '2023-01-18', 1, 380, 1,
    '2023-04-29', '2023-05-07', 2,
    3305.84, 5310.00, 2004.16
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    464, '2023-01-16', 1, 382, 1,
    '2023-09-06', '2023-09-14', 2,
    4816.94, 7110.00, 2293.06
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    468, '2023-01-10', 1, 385, 1,
    '2023-06-18', '2023-06-28', 6,
    15722.81, 24090.00, 8367.19
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    472, '2022-12-21', 1, 388, 1,
    '2023-04-18', '2023-04-27', 2,
    8391.66, 13940.00, 5548.34
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    486, '2022-11-18', 1, 394, 1,
    '2023-05-14', '2023-05-23', 2,
    5767.26, 8430.00, 2662.74
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    497, '2022-09-30', 1, 402, 1,
    '2023-05-14', '2023-10-02', 2,
    5614.63, 10894.00, 5279.37
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    524, '2022-07-15', 1, 419, 1,
    '2022-09-04', '2022-09-13', 2,
    5566.84, 8612.50, 3045.66
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    534, '2022-06-17', 1, 424, 1,
    '2022-07-28', '2022-08-03', 0,
    456.49, 795.00, 338.51
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    535, '2022-06-17', 1, 425, 1,
    '2022-09-01', '2022-09-15', 2,
    3008.04, 2365.00, -643.04
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    550, '2022-05-18', 1, 434, 1,
    '2022-09-24', '2022-10-02', 2,
    4082.81, 6431.95, 2349.14
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    552, '2022-05-11', 1, 436, 1,
    '2022-06-18', '2022-06-19', 2,
    119.02, 119.02, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    556, '2022-04-26', 1, 438, 1,
    '2022-07-28', '2022-08-06', 3,
    5706.26, 9135.00, 3428.74
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    557, '2022-04-26', 1, 439, 1,
    '2022-09-09', '2022-09-25', 2,
    5659.75, 7740.00, 2080.25
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    558, '2022-04-21', 1, 440, 1,
    '2022-05-06', '2022-05-24', 2,
    8171.40, 10295.11, 2123.71
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    559, '2022-04-18', 1, 441, 1,
    '2022-09-07', '2022-09-20', 2,
    5877.09, 8330.00, 2452.91
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    566, '2022-04-05', 1, 447, 1,
    '2022-07-02', '2022-07-10', 3,
    5358.94, 8147.25, 2788.31
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    568, '2022-03-21', 1, 449, 1,
    '2022-07-15', '2022-08-02', 3,
    7204.97, 9575.00, 2370.03
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    617, '2020-02-11', 1, 493, 1,
    '2023-12-01', '2023-12-01', 2,
    508.50, 678.00, 169.50
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    192, '2024-06-04', 3, 1, 1,
    '2024-09-13', '2024-09-20', 2,
    11494.21, 18338.00, 6843.79
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    3, '2025-04-16', 3, 3, 1,
    '2025-06-22', '2025-07-03', 2,
    7673.04, 12710.00, 5036.96
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    14, '2025-03-31', 3, 14, 1,
    '2025-04-11', '2025-04-18', 3,
    1530.55, 2730.00, 1199.45
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    16, '2025-03-26', 3, 16, 1,
    '2025-06-26', '2025-06-30', 2,
    3418.35, 5250.00, 1831.65
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    19, '2025-03-24', 3, 19, 1,
    '2025-04-26', '2025-05-04', 2,
    9948.10, 14040.00, 4091.90
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    38, '2025-02-27', 3, 38, 1,
    '2025-05-31', '2025-06-11', 4,
    6064.20, 10289.70, 4225.50
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    65, '2025-01-29', 3, 64, 1,
    '2025-05-17', '2025-05-30', 3,
    11945.08, 15810.00, 3864.92
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    82, '2024-12-18', 3, 79, 1,
    '2025-04-12', '2025-04-18', 3,
    6952.30, 9850.00, 2897.70
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    83, '2024-12-11', 3, 80, 1,
    '2025-04-27', '2025-05-09', 2,
    14975.18, 19880.00, 4904.82
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    93, '2024-11-27', 3, 90, 1,
    '2025-03-20', '2025-03-30', 23,
    30121.94, 57240.00, 27118.06
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    103, '2024-11-08', 3, 100, 1,
    '2025-04-30', '2025-05-17', 2,
    8814.67, 14640.00, 5825.33
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    114, '2024-10-14', 3, 110, 1,
    '2024-10-28', '2024-11-07', 1,
    3591.55, 4735.00, 1143.45
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    126, '2024-09-20', 3, 120, 1,
    '2024-10-01', '2024-10-11', 1,
    4681.71, 6160.00, 1478.29
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    137, '2024-08-27', 3, 130, 1,
    '2024-10-09', '2024-10-20', 2,
    11294.83, 17635.00, 6340.17
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    154, '2024-07-29', 3, 146, 1,
    '2024-09-09', '2024-09-16', 1,
    3092.53, 3830.00, 737.47
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    164, '2024-07-10', 3, 154, 1,
    '2025-05-20', '2025-05-31', 2,
    8151.72, 12820.00, 4668.28
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    182, '2024-06-15', 3, 167, 1,
    '2024-07-05', '2024-07-12', 5,
    6082.33, 9250.00, 3167.67
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    202, '2024-05-02', 3, 183, 1,
    '2024-08-17', '2024-08-23', 4,
    8330.58, 13573.00, 5242.42
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    2, '2025-04-17', 2, 2, 1,
    '2025-05-17', '2025-05-28', 1,
    3487.69, 5255.00, 1767.31
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    25, '2025-03-18', 2, 25, 1,
    '2025-05-31', '2025-06-13', 3,
    23480.31, 36465.00, 12984.69
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    29, '2025-03-14', 2, 29, 1,
    '2025-03-22', '2025-03-29', 4,
    4924.20, 9320.00, 4395.80
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    36, '2025-03-04', 2, 36, 1,
    '2025-04-12', '2025-04-19', 6,
    14517.57, 20880.00, 6362.43
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    37, '2025-02-27', 2, 37, 1,
    '2025-07-22', '2025-07-27', 2,
    5928.98, 9120.00, 3191.02
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    44, '2025-02-18', 2, 44, 1,
    '2025-04-29', '2025-05-07', 2,
    3334.27, 6400.00, 3065.73
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    50, '2025-02-10', 2, 49, 1,
    '2026-04-10', '2026-04-23', 10,
    39574.26, 56150.00, 16575.74
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    286, '2024-01-09', 2, 49, 1,
    '2024-10-20', '2024-10-29', 2,
    4705.26, 5910.00, 1204.74
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    53, '2025-02-06', 2, 52, 1,
    '2025-06-21', '2025-07-05', 3,
    13607.94, 18180.00, 4572.06
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    444, '2023-02-03', 2, 52, 1,
    '2023-09-30', '2023-10-13', 2,
    8712.13, 13070.00, 4357.87
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    55, '2025-02-05', 2, 54, 1,
    '2025-05-02', '2025-05-09', 2,
    3761.94, 5380.00, 1618.06
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    215, '2024-04-11', 2, 60, 1,
    '2024-09-26', '2024-10-05', 4,
    10376.07, 14112.00, 3735.93
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    62, '2025-01-31', 2, 61, 1,
    '2025-02-17', '2025-02-21', 2,
    1013.15, 1510.00, 496.85
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    89, '2024-12-04', 2, 86, 1,
    '2025-07-10', '2025-07-20', 4,
    13513.14, 18700.00, 5186.86
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    172, '2024-06-27', 2, 86, 1,
    '2025-05-14', '2025-05-23', 6,
    22531.89, 33558.00, 11026.11
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    91, '2024-12-02', 2, 88, 1,
    '2025-05-11', '2025-05-23', 4,
    15022.16, 23860.00, 8837.84
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    94, '2024-11-22', 2, 91, 1,
    '2025-06-29', '2025-07-05', 2,
    0.00, 0.00, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    97, '2024-11-20', 2, 94, 1,
    '2025-03-28', '2025-04-10', 2,
    6750.12, 9100.00, 2349.88
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    98, '2024-11-20', 2, 95, 1,
    '2025-03-15', '2025-03-21', 4,
    7921.62, 12945.00, 5023.38
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    128, '2024-09-18', 2, 122, 1,
    '2024-10-28', '2024-11-07', 2,
    5968.75, 8490.00, 2521.25
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    441, '2023-02-10', 2, 143, 1,
    '2024-03-10', '2024-03-16', 2,
    2125.54, 3670.00, 1544.46
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    158, '2024-07-17', 2, 149, 1,
    '2024-10-05', '2024-11-05', 2,
    14153.40, 19408.80, 5255.40
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    165, '2024-07-10', 2, 155, 1,
    '2024-10-17', '2024-10-28', 4,
    12050.81, 17320.00, 5269.19
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    169, '2024-07-03', 2, 158, 1,
    '2024-07-28', '2024-08-02', 3,
    3718.71, 5460.00, 1741.29
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    191, '2024-06-05', 2, 175, 1,
    '2024-09-01', '2024-09-11', 4,
    6421.99, 10155.44, 3733.45
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    195, '2024-05-29', 2, 177, 1,
    '2024-09-27', '2024-10-05', 4,
    11269.20, 15100.00, 3830.80
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    197, '2024-05-27', 2, 179, 1,
    '2024-06-25', '2024-06-30', 2,
    4499.52, 6310.00, 1810.48
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    199, '2024-05-09', 2, 180, 1,
    '2025-02-13', '2025-02-16', 2,
    826.20, 872.10, 45.90
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    505, '2022-09-06', 2, 180, 1,
    '2022-10-29', '2022-11-01', 4,
    1000.80, 1090.00, 89.20
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    275, '2024-01-26', 2, 181, 1,
    '2024-09-30', '2024-10-10', 6,
    20357.85, 27088.00, 6730.15
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    210, '2024-04-18', 2, 191, 1,
    '2024-10-16', '2024-10-24', 2,
    4658.18, 6616.00, 1957.82
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    213, '2024-04-15', 2, 194, 1,
    '2024-06-26', '2024-07-05', 8,
    9200.22, 15440.00, 6239.78
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    328, '2023-09-11', 2, 197, 1,
    '2023-11-20', '2023-11-26', 2,
    3131.06, 4800.00, 1668.94
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    346, '2023-07-31', 2, 197, 1,
    '2023-12-22', '2023-12-28', 1,
    2964.37, 4495.00, 1530.63
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    227, '2024-04-01', 2, 205, 1,
    '2024-11-22', '2024-12-02', 3,
    7340.70, 9654.00, 2313.30
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    235, '2024-03-25', 2, 211, 1,
    '2024-07-04', '2024-07-10', 2,
    5004.31, 7440.00, 2435.69
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    293, '2023-12-11', 2, 212, 1,
    '2024-09-25', '2024-10-05', 4,
    11718.50, 16060.00, 4341.50
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    245, '2024-03-01', 2, 219, 1,
    '2024-05-10', '2024-05-27', 2,
    3022.81, 7670.00, 4647.19
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    254, '2024-02-15', 2, 228, 1,
    '2024-05-15', '2024-05-24', 2,
    7275.53, 10250.00, 2974.47
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    271, '2024-01-29', 2, 243, 1,
    '2024-05-04', '2024-05-09', 2,
    3597.91, 5520.00, 1922.09
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    412, '2023-03-22', 2, 246, 1,
    '2023-04-28', '2023-05-15', 2,
    6452.76, 9290.00, 2837.24
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    290, '2023-12-13', 2, 258, 1,
    '2024-04-21', '2024-04-23', 2,
    566.13, 880.00, 313.87
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    340, '2023-08-07', 2, 258, 1,
    '2024-10-02', '2024-10-20', 2,
    9834.71, 13350.00, 3515.29
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    291, '2023-12-12', 2, 259, 1,
    '2024-02-16', '2024-02-21', 4,
    5190.22, 7120.00, 1929.78
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    294, '2023-12-06', 2, 261, 1,
    '2024-01-04', '2024-01-13', 2,
    3753.13, 4720.00, 966.87
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    296, '2023-11-30', 2, 263, 1,
    '2024-10-19', '2024-11-01', 3,
    12948.13, 22860.00, 9911.87
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    302, '2023-11-22', 2, 269, 1,
    '2023-12-02', '2023-12-08', 2,
    5928.17, 8430.00, 2501.83
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    310, '2023-11-06', 2, 277, 1,
    '2024-02-16', '2024-02-25', 2,
    11263.92, 17050.00, 5786.08
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    323, '2023-09-15', 2, 285, 1,
    '2023-11-20', '2023-11-27', 2,
    4695.91, 7120.00, 2424.09
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    325, '2023-09-15', 2, 287, 1,
    '2023-11-25', '2023-12-03', 2,
    2634.10, 3770.00, 1135.90
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    335, '2023-08-21', 2, 292, 1,
    '2023-09-08', '2023-09-18', 4,
    9775.87, 13780.00, 4004.13
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    461, '2023-01-18', 2, 292, 1,
    '2023-08-31', '2023-09-14', 2,
    5378.87, 7320.00, 1941.13
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    349, '2023-07-21', 2, 302, 1,
    '2024-08-12', '2024-08-20', 2,
    5572.99, 7870.00, 2297.01
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    353, '2023-07-11', 2, 306, 1,
    '2024-04-26', '2024-05-09', 2,
    7398.45, 10160.00, 2761.55
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    362, '2023-06-15', 2, 311, 1,
    '2023-08-22', '2023-09-01', 2,
    7685.71, 11220.00, 3534.29
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    381, '2023-05-11', 2, 325, 1,
    '2023-07-15', '2023-07-22', 2,
    3074.35, 4630.00, 1555.65
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    386, '2023-05-05', 2, 330, 1,
    '2023-08-31', '2023-09-11', 2,
    5940.53, 8840.00, 2899.47
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    393, '2023-04-20', 2, 337, 1,
    '2023-09-05', '2023-09-14', 2,
    4017.59, 5550.00, 1532.41
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    402, '2023-04-06', 2, 337, 1,
    '2023-05-25', '2023-06-01', 1,
    3017.61, 4290.00, 1272.39
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    409, '2023-03-27', 2, 346, 1,
    '2023-04-09', '2023-04-15', 4,
    5868.69, 10080.00, 4211.31
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    419, '2023-03-13', 2, 351, 1,
    '2023-04-03', '2023-04-13', 2,
    4882.38, 8010.00, 3127.62
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    424, '2023-03-09', 2, 355, 1,
    '2023-09-26', '2023-10-07', 2,
    7678.21, 13100.00, 5421.79
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    425, '2023-03-09', 2, 356, 1,
    '2023-10-01', '2023-10-14', 1,
    3391.94, 4725.00, 1333.06
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    431, '2023-02-24', 2, 361, 1,
    '2023-09-16', '2023-09-26', 2,
    4099.15, 5870.00, 1770.85
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    432, '2023-02-24', 2, 362, 1,
    '2023-10-14', '2023-10-23', 1,
    3190.70, 4695.00, 1504.30
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    447, '2023-02-01', 2, 372, 1,
    '2023-04-01', '2023-04-09', 2,
    6505.12, 9565.00, 3059.88
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    454, '2023-01-26', 2, 376, 1,
    '2023-05-08', '2023-05-24', 2,
    10635.59, 15310.00, 4674.41
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    480, '2022-12-07', 2, 392, 1,
    '2023-06-15', '2023-06-27', 2,
    6534.96, 11940.00, 5405.04
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    487, '2022-11-17', 2, 395, 1,
    '2023-01-06', '2023-01-12', 1,
    1823.25, 2960.00, 1136.75
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    504, '2022-09-08', 2, 405, 1,
    '2022-10-06', '2022-10-15', 2,
    7775.49, 11900.00, 4124.51
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    5, '2025-04-12', 4, 5, 1,
    '2025-04-17', '2025-04-17', 5,
    749.00, 2000.00, 1251.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    6, '2025-04-11', 4, 6, 1,
    '2025-09-21', '2025-09-30', 0,
    7481.40, 10890.00, 3408.60
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    15, '2025-03-27', 4, 15, 1,
    '2025-07-03', '2025-07-13', 0,
    0.00, 0.00, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    21, '2025-03-21', 4, 21, 1,
    '2025-09-06', '2025-09-14', 5,
    13275.85, 20650.00, 7374.15
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    188, '2024-06-07', 4, 22, 1,
    '2026-07-02', '2026-07-09', 0,
    1036.80, 3888.00, 2851.20
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    193, '2024-05-31', 4, 22, 1,
    '2024-09-07', '2024-09-18', 2,
    7187.14, 10660.00, 3472.86
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    26, '2025-03-18', 4, 26, 1,
    '2025-07-30', '2025-08-08', 2,
    15903.52, 20920.00, 5016.48
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    27, '2025-03-17', 4, 27, 1,
    '2025-06-02', '2025-06-02', 0,
    722.50, 895.00, 172.50
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    32, '2025-03-11', 4, 32, 1,
    '2025-05-13', '2025-05-28', 4,
    23542.47, 30920.00, 7377.53
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    45, '2025-02-18', 4, 45, 1,
    '2025-07-07', '2025-07-16', 0,
    15829.35, 19980.00, 4150.65
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    147, '2024-08-09', 4, 47, 1,
    '2024-09-22', '2024-10-01', 2,
    3246.68, 4970.00, 1723.32
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    56, '2025-02-05', 4, 55, 1,
    '2025-06-26', '2025-07-05', 2,
    10290.90, 15270.00, 4979.10
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    64, '2025-01-30', 4, 63, 1,
    '2025-07-03', '2025-07-12', 2,
    11394.60, 20080.00, 8685.40
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    66, '2025-01-28', 4, 65, 1,
    '2025-04-21', '2025-05-05', 4,
    23174.83, 37566.30, 14391.47
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    113, '2024-10-17', 4, 72, 1,
    '2024-10-20', '2024-10-21', 3,
    652.45, 1195.00, 542.55
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    76, '2025-01-02', 4, 75, 1,
    '2025-03-13', '2025-03-22', 2,
    6300.21, 9890.00, 3589.79
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    78, '2024-12-30', 4, 76, 1,
    '2025-04-23', '2025-05-02', 4,
    14955.64, 25450.00, 10494.36
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    88, '2024-12-05', 4, 85, 1,
    '2025-04-13', '2025-04-20', 14,
    17829.98, 23170.00, 5340.02
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    90, '2024-12-02', 4, 87, 1,
    '2024-12-06', '2024-12-10', 3,
    1274.28, 1815.00, 540.72
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    104, '2024-11-07', 4, 101, 1,
    '2024-12-28', '2025-01-03', 3,
    20780.17, 27775.00, 6994.83
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    105, '2024-11-06', 4, 102, 1,
    '2025-02-10', '2025-02-28', 4,
    20037.36, 33560.00, 13522.64
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    110, '2024-10-25', 4, 107, 1,
    '2024-12-03', '2024-12-11', 2,
    6654.08, 10590.00, 3935.92
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    357, '2023-07-03', 4, 111, 1,
    '2023-10-06', '2023-10-11', 3,
    4953.70, 7275.00, 2321.30
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    117, '2024-10-02', 4, 113, 1,
    '2024-11-07', '2024-11-19', 2,
    10027.77, 17080.00, 7052.23
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    229, '2024-03-28', 4, 124, 1,
    '2024-04-02', '2024-04-04', 0,
    244.80, 244.80, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    146, '2024-08-09', 4, 139, 1,
    '2025-02-10', '2025-02-20', 2,
    3230.17, 4600.00, 1369.83
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    319, '2023-09-29', 4, 141, 1,
    '2024-05-10', '2024-05-23', 2,
    12724.30, 21330.00, 8605.70
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    155, '2024-07-29', 4, 147, 1,
    '2024-09-25', '2024-10-10', 4,
    3689.04, 7302.00, 3612.96
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    167, '2024-07-03', 4, 156, 1,
    '2024-08-30', '2024-09-08', 1,
    3813.65, 5155.00, 1341.35
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    437, '2023-02-21', 4, 157, 1,
    '2023-10-27', '2023-11-02', 1,
    327.00, 476.00, 149.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    173, '2024-06-27', 4, 160, 1,
    '2024-09-16', '2024-09-29', 1,
    11249.84, 17590.00, 6340.16
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    179, '2024-06-20', 4, 164, 1,
    '2024-08-17', '2024-08-24', 4,
    9994.08, 14720.00, 4725.92
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    187, '2024-06-11', 4, 172, 1,
    '2024-07-20', '2024-07-22', 4,
    119.00, 420.00, 301.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    189, '2024-06-06', 4, 173, 1,
    '2024-07-10', '2024-07-14', 2,
    2652.06, 3710.00, 1057.94
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    203, '2024-04-30', 4, 184, 1,
    '2024-05-18', '2024-05-27', 3,
    6159.39, 12815.00, 6655.61
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    205, '2024-04-24', 4, 186, 1,
    '2024-10-10', '2024-10-16', 2,
    9620.31, 15042.00, 5421.69
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    206, '2024-04-19', 4, 187, 1,
    '2024-06-23', '2024-07-29', 3,
    16430.90, 23704.95, 7274.05
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    207, '2024-04-19', 4, 188, 1,
    '2024-06-12', '2024-06-26', 4,
    13954.99, 19560.00, 5605.01
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    211, '2024-04-17', 4, 192, 1,
    '2024-05-28', '2024-06-06', 0,
    8003.59, 15580.00, 7576.41
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    218, '2024-04-09', 4, 197, 1,
    '2024-07-29', '2024-08-09', 6,
    16460.00, 20310.00, 3850.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    222, '2024-04-08', 4, 201, 1,
    '2024-09-13', '2024-09-26', 2,
    6707.14, 8620.00, 1912.86
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    223, '2024-04-08', 4, 202, 1,
    '2024-05-16', '2024-05-22', 2,
    3399.09, 4620.00, 1220.91
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    363, '2023-06-14', 4, 207, 1,
    '2023-07-17', '2023-07-24', 2,
    5482.49, 8600.00, 3117.51
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    240, '2024-03-13', 4, 216, 1,
    '2024-09-07', '2024-10-16', 4,
    11034.49, 15430.00, 4395.51
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    244, '2024-03-05', 4, 218, 1,
    '2024-10-05', '2024-10-15', 2,
    11249.69, 16712.00, 5462.31
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    247, '2024-02-27', 4, 221, 1,
    '2024-10-23', '2024-11-04', 2,
    6001.06, 7912.00, 1910.94
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    249, '2024-02-23', 4, 223, 1,
    '2024-05-23', '2024-06-05', 8,
    25672.32, 37465.00, 11792.68
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    252, '2024-02-19', 4, 226, 1,
    '2024-06-08', '2024-06-19', 2,
    15895.39, 28140.00, 12244.61
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    259, '2024-02-09', 4, 232, 1,
    '2024-06-28', '2024-07-07', 8,
    7387.95, 18400.00, 11012.05
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    410, '2023-03-23', 4, 233, 1,
    '2023-09-21', '2023-09-28', 2,
    4970.66, 8480.00, 3509.34
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    261, '2024-02-07', 4, 234, 1,
    '2024-10-15', '2024-10-26', 2,
    10298.78, 13368.00, 3069.22
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    263, '2024-02-05', 4, 236, 1,
    '2024-07-06', '2024-07-16', 6,
    31004.30, 41260.00, 10255.70
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    267, '2024-01-31', 4, 239, 1,
    '2024-03-30', '2024-04-08', 2,
    5310.95, 10940.00, 5629.05
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    270, '2024-01-29', 4, 242, 1,
    '2024-06-04', '2024-06-14', 2,
    6139.32, 9520.00, 3380.68
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    277, '2024-01-24', 4, 248, 1,
    '2024-03-31', '2024-04-02', 0,
    8881.85, 16740.00, 7858.15
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    281, '2024-01-16', 4, 252, 1,
    '2024-03-23', '2024-03-27', 7,
    6421.76, 8715.00, 2293.24
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    284, '2024-01-12', 4, 254, 1,
    '2024-04-10', '2024-04-22', 2,
    6207.33, 8630.00, 2422.67
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    348, '2023-07-24', 4, 254, 1,
    '2023-08-12', '2023-08-16', 3,
    4016.10, 5730.00, 1713.90
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    292, '2023-12-12', 4, 260, 1,
    '2024-07-14', '2024-07-26', 5,
    11731.09, 15175.00, 3443.91
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    295, '2023-12-05', 4, 262, 1,
    '2024-05-28', '2024-07-05', 2,
    8423.14, 12810.00, 4386.86
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    297, '2023-11-29', 4, 264, 1,
    '2024-06-07', '2024-06-21', 2,
    7831.58, 12510.00, 4678.42
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    300, '2023-11-23', 4, 267, 1,
    '2023-12-14', '2023-12-20', 1,
    1573.07, 2097.50, 524.43
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    301, '2023-11-22', 4, 268, 1,
    '2024-03-14', '2024-03-20', 5,
    5933.12, 9330.00, 3396.88
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    456, '2023-01-25', 4, 285, 1,
    '2023-09-02', '2023-09-10', 2,
    5291.82, 7590.00, 2298.18
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    332, '2023-08-25', 4, 291, 1,
    '2023-10-07', '2023-10-15', 4,
    8851.94, 15600.00, 6748.06
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    336, '2023-08-16', 4, 293, 1,
    '2023-10-05', '2023-10-18', 2,
    2098.98, 3550.00, 1451.02
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    337, '2023-08-14', 4, 294, 1,
    '2023-10-14', '2023-10-22', 2,
    4425.86, 7350.00, 2924.14
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    344, '2023-08-01', 4, 299, 1,
    '2023-09-04', '2023-09-14', 2,
    6208.21, 9730.00, 3521.79
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    347, '2023-07-25', 4, 301, 1,
    '2023-09-16', '2023-09-26', 2,
    7862.88, 12920.00, 5057.12
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    356, '2023-07-04', 4, 308, 1,
    '2023-11-01', '2023-11-14', 2,
    4885.80, 7340.00, 2454.20
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    359, '2023-06-30', 4, 309, 1,
    '2023-08-08', '2023-08-16', 5,
    10206.33, 14050.00, 3843.67
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    367, '2023-05-30', 4, 313, 1,
    '2023-10-03', '2023-10-12', 2,
    8679.29, 13175.00, 4495.71
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    368, '2023-05-29', 4, 314, 1,
    '2023-06-27', '2023-07-04', 2,
    3268.57, 4810.00, 1541.43
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    369, '2023-05-19', 4, 315, 1,
    '2023-09-28', '2023-10-06', 2,
    8117.06, 11890.00, 3772.94
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    370, '2023-05-19', 4, 316, 1,
    '2023-09-18', '2023-10-01', 4,
    9955.90, 14160.00, 4204.10
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    372, '2023-05-18', 4, 318, 1,
    '2023-06-15', '2023-06-28', 2,
    6839.42, 10730.00, 3890.58
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    380, '2023-05-11', 4, 324, 1,
    '2023-07-04', '2023-07-06', 0,
    884.60, 884.60, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    389, '2023-04-27', 4, 333, 1,
    '2023-06-20', '2023-06-28', 4,
    8758.60, 13740.00, 4981.40
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    404, '2023-04-05', 4, 342, 1,
    '2023-04-18', '2023-04-26', 2,
    8896.79, 12750.00, 3853.21
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    407, '2023-03-31', 4, 344, 1,
    '2023-10-11', '2023-10-20', 2,
    7778.56, 12724.00, 4945.44
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    469, '2023-01-06', 4, 386, 1,
    '2023-09-09', '2023-09-16', 4,
    11571.89, 17240.00, 5668.11
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    471, '2022-12-28', 4, 387, 1,
    '2023-09-27', '2023-10-04', 6,
    12630.54, 19800.00, 7169.46
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    11, '2025-04-03', 5, 11, 1,
    '2025-05-01', '2025-05-01', 0,
    351.00, 351.00, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    24, '2025-03-19', 5, 24, 1,
    '2025-09-13', '2025-09-26', 2,
    34497.40, 44880.00, 10382.60
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    28, '2025-03-14', 5, 28, 1,
    '2025-09-06', '2025-09-14', 0,
    15608.24, 19680.00, 4071.76
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    31, '2025-03-13', 5, 31, 1,
    '2025-06-07', '2025-06-11', 5,
    3917.50, 4815.00, 897.50
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    35, '2025-03-04', 5, 35, 1,
    '2025-05-05', '2025-05-11', 2,
    5933.80, 9060.00, 3126.20
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    341, '2023-08-04', 5, 39, 1,
    '2024-03-03', '2024-03-11', 2,
    4897.56, 7290.00, 2392.44
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    40, '2025-02-26', 5, 40, 1,
    '2025-04-20', '2025-04-20', 2,
    496.70, 940.00, 443.30
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    49, '2025-02-10', 5, 48, 1,
    '2025-09-10', '2025-09-23', 2,
    9561.26, 12400.00, 2838.74
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    54, '2025-02-06', 5, 53, 1,
    '2025-08-21', '2025-08-25', 7,
    16390.85, 23345.00, 6954.15
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    58, '2025-02-03', 5, 57, 1,
    '2025-05-15', '2025-05-24', 7,
    5793.57, 10360.00, 4566.43
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    63, '2025-01-30', 5, 62, 1,
    '2025-06-19', '2025-06-26', 5,
    10426.95, 15725.00, 5298.05
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    69, '2025-01-24', 5, 68, 1,
    '2025-06-16', '2025-06-20', 2,
    2813.50, 3250.00, 436.50
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    70, '2025-01-23', 5, 69, 1,
    '2025-05-08', '2025-05-20', 2,
    6330.20, 8870.00, 2539.80
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    72, '2025-01-16', 5, 71, 1,
    '2025-04-15', '2025-04-28', 1,
    3622.59, 4855.00, 1232.41
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    84, '2024-12-11', 5, 81, 1,
    '2025-03-16', '2025-03-26', 2,
    2188.12, 4010.00, 1821.88
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    122, '2024-09-24', 5, 111, 1,
    '2025-05-05', '2025-05-18', 2,
    12126.84, 16160.00, 4033.16
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    116, '2024-10-07', 5, 112, 1,
    '2025-04-29', '2025-05-04', 1,
    2578.72, 3830.00, 1251.28
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    118, '2024-10-02', 5, 114, 1,
    '2025-12-01', '2025-12-01', 2,
    756.40, 3570.00, 2813.60
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    157, '2024-07-19', 5, 114, 1,
    '2024-10-20', '2024-10-29', 4,
    10746.65, 15195.00, 4448.35
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    120, '2024-09-26', 5, 116, 1,
    '2025-05-25', '2025-06-01', 6,
    14317.18, 21390.00, 7072.82
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    125, '2024-09-20', 5, 119, 1,
    '2025-04-28', '2025-05-09', 2,
    5221.45, 7150.00, 1928.55
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    143, '2024-08-13', 5, 136, 1,
    '2024-09-19', '2024-09-24', 15,
    9794.63, 22455.00, 12660.37
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    148, '2024-08-05', 5, 140, 1,
    '2024-08-16', '2024-08-24', 2,
    6813.27, 10705.00, 3891.73
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    151, '2024-07-30', 5, 143, 1,
    '2024-10-13', '2024-10-18', 2,
    3133.92, 3970.00, 836.08
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    168, '2024-07-03', 5, 157, 1,
    '2024-10-05', '2024-10-19', 2,
    9054.32, 12820.00, 3765.68
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    171, '2024-07-02', 5, 159, 1,
    '2024-08-22', '2024-08-30', 2,
    7573.95, 10300.00, 2726.05
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    180, '2024-06-19', 5, 165, 1,
    '2024-09-11', '2024-09-21', 0,
    9746.48, 13582.08, 3835.60
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    184, '2024-06-12', 5, 169, 1,
    '2024-09-25', '2024-10-02', 4,
    11292.56, 15220.00, 3927.44
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    190, '2024-06-06', 5, 174, 1,
    '2025-03-30', '2025-04-06', 3,
    5761.03, 7815.00, 2053.97
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    234, '2024-03-25', 5, 181, 1,
    '2024-05-16', '2024-05-24', 2,
    2390.91, 3030.00, 639.09
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    201, '2024-05-02', 5, 182, 1,
    '2024-11-22', '2024-11-30', 5,
    7100.95, 10650.00, 3549.05
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    208, '2024-04-19', 5, 189, 1,
    '2024-10-20', '2024-10-29', 2,
    1519.61, 2230.00, 710.39
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    212, '2024-04-17', 5, 193, 1,
    '2024-07-13', '2024-07-21', 5,
    5343.51, 8919.59, 3576.08
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    282, '2024-01-16', 5, 204, 1,
    '2024-06-19', '2024-06-26', 5,
    12576.12, 17600.00, 5023.88
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    251, '2024-02-19', 5, 225, 1,
    '2024-07-21', '2024-07-28', 3,
    6763.58, 10548.29, 3784.71
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    253, '2024-02-16', 5, 227, 1,
    '2024-10-19', '2024-10-29', 9,
    24825.45, 35465.00, 10639.55
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    257, '2024-02-14', 5, 228, 1,
    '2024-11-16', '2024-11-22', 4,
    8879.37, 12180.00, 3300.63
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    256, '2024-02-14', 5, 230, 1,
    '2024-07-02', '2024-07-13', 8,
    23448.44, 33600.00, 10151.56
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    262, '2024-02-06', 5, 235, 1,
    '2024-04-25', '2024-05-03', 2,
    4330.10, 5600.00, 1269.90
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    274, '2024-01-26', 5, 246, 1,
    '2024-03-04', '2024-03-13', 2,
    5312.46, 7180.00, 1867.54
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    330, '2023-09-05', 5, 246, 1,
    '2023-11-07', '2023-11-16', 2,
    6376.85, 9470.00, 3093.15
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    280, '2024-01-17', 5, 251, 1,
    '2024-02-21', '2024-03-02', 2,
    3329.03, 4410.00, 1080.97
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    299, '2023-11-28', 5, 266, 1,
    '2024-07-12', '2024-07-19', 2,
    4654.72, 7650.00, 2995.28
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    304, '2023-11-20', 5, 271, 1,
    '2024-02-29', '2024-03-06', 4,
    7293.57, 10725.00, 3431.43
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    355, '2023-07-06', 5, 307, 1,
    '2023-07-17', '2023-07-23', 2,
    3790.70, 5430.00, 1639.30
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    373, '2023-05-17', 5, 319, 1,
    '2023-10-09', '2023-10-28', 6,
    33320.98, 56490.00, 23169.02
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    384, '2023-05-08', 5, 328, 1,
    '2023-09-14', '2023-09-24', 5,
    11781.02, 18475.00, 6693.98
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    385, '2023-05-08', 5, 329, 1,
    '2023-06-03', '2023-06-07', 2,
    1545.80, 2260.00, 714.20
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    390, '2023-04-27', 5, 334, 1,
    '2023-09-09', '2023-09-19', 6,
    14778.56, 21560.00, 6781.44
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    397, '2023-04-17', 5, 339, 1,
    '2023-06-10', '2023-06-17', 2,
    5261.70, 7450.00, 2188.30
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    427, '2023-03-07', 5, 358, 1,
    '2023-09-29', '2023-10-05', 1,
    4877.82, 6815.00, 1937.18
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    434, '2023-02-23', 5, 364, 1,
    '2023-09-10', '2023-09-21', 2,
    5637.48, 9290.00, 3652.52
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    413, '2023-03-21', 6, 22, 1,
    '2023-05-19', '2023-05-29', 3,
    30166.86, 48495.00, 18328.14
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    452, '2023-01-30', 6, 22, 1,
    '2023-08-26', '2023-09-03', 3,
    7584.93, 12285.00, 4700.07
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    34, '2025-03-04', 6, 34, 1,
    '2025-03-11', '2025-03-13', 2,
    499.33, 920.00, 420.67
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    43, '2025-02-18', 6, 43, 1,
    '2025-03-24', '2025-03-31', 0,
    11562.45, 0.00, -11562.45
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    638, '2019-09-16', 6, 47, 1,
    '2022-04-09', '2022-04-17', 5,
    10531.02, 15260.00, 4728.98
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    136, '2024-08-27', 6, 53, 1,
    '2024-09-17', '2024-09-17', 2,
    787.00, 1370.00, 583.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    265, '2024-02-02', 6, 69, 1,
    '2024-02-15', '2024-02-19', 4,
    2884.34, 5915.00, 3030.66
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    92, '2024-11-27', 6, 89, 1,
    '2024-12-13', '2024-12-13', 22,
    1760.00, 1200.00, -560.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    663, '2019-03-18', 6, 96, 1,
    '2019-07-08', '2019-07-18', 4,
    5484.05, 7500.00, 2015.95
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    334, '2023-08-22', 6, 99, 1,
    '2023-09-23', '2023-09-29', 2,
    5709.47, 10660.00, 4950.53
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    666, '2019-03-08', 6, 102, 1,
    '2019-04-16', '2019-04-26', 2,
    3036.27, 4200.00, 1163.73
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    108, '2024-10-28', 6, 105, 1,
    '2024-11-04', '2024-11-09', 10,
    8098.95, 0.00, -8098.95
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    358, '2023-07-03', 6, 109, 1,
    '2023-07-02', '2023-07-02', 22,
    6496.09, 6496.16, 0.07
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    123, '2024-09-22', 6, 117, 1,
    '2024-09-22', '2024-09-23', 1,
    524.00, 680.00, 156.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    127, '2024-09-18', 6, 121, 1,
    '2024-09-22', '2024-09-29', 19,
    14985.36, 11250.00, -3735.36
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    132, '2024-09-09', 6, 126, 1,
    '2024-09-30', '2024-09-30', 2,
    582.75, 1050.00, 467.25
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    138, '2024-08-26', 6, 131, 1,
    '2024-10-03', '2024-10-16', 2,
    7467.55, 9985.00, 2517.45
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    482, '2022-11-24', 6, 133, 1,
    '2023-03-13', '2023-03-23', 4,
    6407.19, 10890.00, 4482.81
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    153, '2024-07-29', 6, 145, 1,
    '2024-07-23', '2024-07-26', 2,
    343.65, 343.65, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    475, '2022-12-16', 6, 189, 1,
    '2023-03-30', '2023-04-06', 2,
    3777.96, 5050.00, 1272.04
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    333, '2023-08-24', 6, 206, 1,
    '2023-10-21', '2023-10-30', 2,
    6113.21, 9740.00, 3626.79
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    233, '2024-03-26', 6, 210, 1,
    '2024-08-15', '2024-08-23', 2,
    5509.16, 7660.00, 2150.84
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    643, '2019-08-19', 6, 224, 1,
    '2019-09-05', '2019-09-15', 2,
    3567.09, 5530.00, 1962.91
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    667, '2019-03-07', 6, 232, 1,
    '2019-05-20', '2019-05-26', 2,
    3183.35, 5040.00, 1856.65
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    260, '2024-02-07', 6, 233, 1,
    '2024-03-30', '2024-04-07', 2,
    4483.98, 6720.00, 2236.02
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    266, '2024-02-01', 6, 238, 1,
    '2024-09-04', '2024-10-02', 2,
    23355.13, 34310.00, 10954.87
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    624, '2020-01-15', 6, 262, 1,
    '2020-02-06', '2020-02-12', 2,
    1399.94, 2100.00, 700.06
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    306, '2023-11-16', 6, 273, 1,
    '2023-12-15', '2023-12-15', 24,
    4103.20, 3077.46, -1025.74
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    308, '2023-11-09', 6, 275, 1,
    '2023-11-13', '2023-11-13', 2,
    792.85, 1240.00, 447.15
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    476, '2022-12-11', 6, 280, 1,
    '2022-12-15', '2022-12-15', 26,
    1530.00, 1530.00, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    321, '2023-09-20', 6, 283, 1,
    '2023-10-14', '2023-10-21', 2,
    5693.77, 9750.00, 4056.23
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    322, '2023-09-19', 6, 284, 1,
    '2023-09-10', '2023-09-14', 1,
    2078.54, 1795.00, -283.54
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    451, '2023-01-30', 6, 294, 1,
    '2023-03-10', '2023-03-18', 5,
    5988.27, 8975.00, 2986.73
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    371, '2023-05-18', 6, 317, 1,
    '2023-05-19', '2023-05-22', 1,
    2574.90, 3325.00, 750.10
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    398, '2023-04-17', 6, 335, 1,
    '2023-09-24', '2023-10-01', 2,
    3745.80, 5900.00, 2154.20
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    658, '2019-05-14', 6, 336, 1,
    '2019-07-04', '2019-07-08', 0,
    3030.65, 5100.00, 2069.35
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    430, '2023-02-24', 6, 360, 1,
    '2023-05-24', '2023-05-31', 4,
    5046.39, 8120.00, 3073.61
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    438, '2023-02-20', 6, 367, 1,
    '2023-06-09', '2023-06-18', 4,
    18015.53, 26060.00, 8044.47
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    457, '2023-01-23', 6, 375, 1,
    '2023-04-01', '2023-04-08', 4,
    4048.94, 5920.00, 1871.06
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    484, '2022-11-18', 6, 393, 1,
    '2023-05-14', '2023-05-24', 2,
    7125.92, 10930.00, 3804.08
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    498, '2022-09-30', 6, 403, 1,
    '2023-10-02', '2023-10-17', 4,
    13194.53, 21380.00, 8185.47
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    502, '2022-09-08', 6, 404, 1,
    '2023-02-27', '2023-03-11', 1,
    2430.05, 3570.00, 1139.95
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    507, '2022-08-29', 6, 407, 1,
    '2022-09-11', '2022-09-11', 0,
    510.00, 510.00, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    509, '2022-08-26', 6, 409, 1,
    '2022-10-07', '2022-10-16', 4,
    8105.07, 15990.01, 7884.94
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    512, '2022-08-23', 6, 411, 1,
    '2023-04-29', '2023-05-05', 2,
    5617.48, 8700.00, 3082.52
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    513, '2022-08-16', 6, 412, 1,
    '2022-09-10', '2022-09-19', 4,
    8740.45, 14565.00, 5824.55
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    517, '2022-08-02', 6, 414, 1,
    '2022-09-12', '2022-09-18', 2,
    5587.87, 8540.00, 2952.13
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    525, '2022-07-13', 6, 420, 1,
    '2022-08-20', '2022-08-31', 3,
    7356.70, 10600.00, 3243.30
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    540, '2022-06-08', 6, 428, 1,
    '2022-08-01', '2022-08-10', 5,
    18363.19, 26675.00, 8311.81
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    554, '2022-05-06', 6, 437, 1,
    '2023-04-27', '2023-10-17', 2,
    4344.40, 6490.00, 2145.60
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    563, '2022-04-07', 6, 445, 1,
    '2022-06-20', '2022-06-23', 2,
    1301.30, 1560.00, 258.70
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    569, '2022-03-18', 6, 450, 1,
    '2022-07-10', '2022-07-16', 5,
    3594.00, 4761.50, 1167.50
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    570, '2022-03-18', 6, 451, 1,
    '2022-07-06', '2022-07-12', 8,
    8100.41, 10240.00, 2139.59
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    573, '2022-03-14', 6, 453, 1,
    '2022-03-18', '2022-03-25', 1,
    568.60, 617.80, 49.20
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    574, '2022-03-14', 6, 454, 1,
    '2022-06-10', '2022-06-20', 0,
    8216.82, 13410.00, 5193.18
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    575, '2022-03-11', 6, 455, 1,
    '2022-05-22', '2022-06-04', 4,
    8856.75, 13000.00, 4143.25
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    578, '2022-03-03', 6, 457, 1,
    '2022-04-28', '2022-05-07', 0,
    7378.64, 11300.00, 3921.36
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    579, '2022-03-02', 6, 458, 1,
    '2022-07-05', '2022-07-25', 0,
    8446.07, 12838.06, 4391.99
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    584, '2022-02-15', 6, 463, 1,
    '2022-04-02', '2022-04-09', 4,
    5240.15, 7650.00, 2409.85
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    594, '2021-10-26', 6, 471, 1,
    '2022-10-02', '2022-10-09', 0,
    9325.49, 15401.40, 6075.91
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    597, '2021-10-12', 6, 474, 1,
    '2021-12-27', '2021-12-30', 5,
    942.00, 1100.00, 158.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    603, '2021-07-19', 6, 479, 1,
    '2021-12-11', '2021-12-14', 2,
    723.00, 723.00, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    605, '2021-06-11', 6, 481, 1,
    '2022-03-18', '2022-11-28', 2,
    3035.93, 5380.00, 2344.07
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    606, '2021-06-10', 6, 482, 1,
    '2022-05-01', '2022-05-14', 2,
    8181.71, 11050.00, 2868.29
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    608, '2021-06-10', 6, 484, 1,
    '2021-10-17', '2021-10-23', 6,
    4980.46, 6720.00, 1739.54
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    609, '2021-06-08', 6, 485, 1,
    '2021-11-09', '2021-11-27', 2,
    9735.27, 13617.00, 3881.73
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    610, '2021-05-28', 6, 486, 1,
    '2021-05-29', '2021-05-29', 16,
    2560.00, 4017.00, 1457.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    611, '2021-05-27', 6, 487, 1,
    '2021-05-27', '2021-05-30', 12,
    3971.88, 6253.38, 2281.50
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    614, '2021-03-11', 6, 490, 1,
    '2021-08-04', '2021-08-19', 6,
    8835.16, 12608.50, 3773.34
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    627, '2019-11-25', 6, 497, 1,
    '2021-06-28', '2021-06-28', 0,
    13726.82, 0.00, -13726.82
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    629, '2019-11-18', 6, 498, 1,
    '2023-06-12', '2023-10-17', 4,
    16274.43, 25040.00, 8765.57
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    630, '2019-11-05', 6, 499, 1,
    '2019-11-07', '2019-11-10', 2,
    2368.56, 2617.00, 248.44
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    634, '2019-10-22', 6, 501, 1,
    '2021-04-02', '2021-04-02', 4,
    395.06, 2520.00, 2124.94
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    636, '2019-09-30', 6, 502, 1,
    '2019-09-28', '2019-09-28', 5,
    448.00, 448.00, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    649, '2019-07-24', 6, 510, 1,
    '2019-09-07', '2019-09-08', 3,
    264.46, 265.00, 0.54
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    653, '2019-06-24', 6, 512, 1,
    '2019-08-06', '2019-08-15', 4,
    8569.96, 14600.00, 6030.04
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    654, '2019-06-20', 6, 513, 1,
    '2019-07-18', '2019-07-18', 10,
    704.00, 1235.00, 531.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    661, '2019-03-18', 6, 519, 1,
    '2019-12-24', '2019-12-31', 4,
    6516.20, 10700.00, 4183.80
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    669, '2019-02-19', 6, 522, 1,
    '2019-03-16', '2019-03-16', 15,
    594.22, 1158.76, 564.54
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    530, '2022-06-20', 10, 24, 1,
    '2022-06-30', '2022-07-16', 2,
    4069.67, 6435.00, 2365.33
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    523, '2022-07-15', 10, 104, 1,
    '2022-08-08', '2022-08-15', 2,
    3872.93, 5860.00, 1987.07
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    503, '2022-09-08', 10, 143, 1,
    '2022-10-09', '2022-10-16', 6,
    10367.28, 15570.00, 5202.72
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    547, '2022-05-24', 10, 157, 1,
    '2022-10-12', '2022-10-24', 2,
    8535.73, 13210.00, 4674.27
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    555, '2022-04-27', 10, 163, 1,
    '2022-10-05', '2022-10-16', 2,
    3915.12, 5830.00, 1914.88
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    515, '2022-08-04', 10, 223, 1,
    '2022-10-15', '2022-10-24', 2,
    17925.07, 28600.00, 10674.93
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    545, '2022-05-27', 10, 239, 1,
    '2022-08-06', '2022-08-15', 4,
    9226.79, 14280.00, 5053.21
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    510, '2022-08-26', 10, 306, 1,
    '2022-10-01', '2022-10-08', 2,
    2592.18, 3740.00, 1147.82
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    548, '2022-05-24', 10, 333, 1,
    '2022-09-07', '2022-09-18', 2,
    6451.09, 9510.00, 3058.91
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    549, '2022-05-24', 10, 406, 1,
    '2022-07-04', '2022-07-11', 4,
    6168.44, 7926.00, 1757.56
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    511, '2022-08-25', 10, 410, 1,
    '2022-09-25', '2022-10-02', 2,
    5129.10, 7650.00, 2520.90
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    520, '2022-07-22', 10, 417, 1,
    '2022-08-25', '2022-09-02', 3,
    5604.02, 8145.00, 2540.98
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    529, '2022-06-22', 10, 422, 1,
    '2022-09-09', '2022-09-20', 12,
    26757.90, 37245.00, 10487.10
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    531, '2022-06-20', 10, 423, 1,
    '2022-12-23', '2022-12-29', 1,
    1165.26, 1650.00, 484.74
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    541, '2022-06-02', 10, 429, 1,
    '2022-09-04', '2022-09-12', 2,
    4125.68, 5820.00, 1694.32
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    546, '2022-05-25', 10, 433, 1,
    '2022-07-12', '2022-07-22', 2,
    5972.43, 8640.00, 2667.57
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    551, '2022-05-13', 10, 435, 1,
    '2022-09-12', '2022-09-19', 4,
    5121.51, 7040.00, 1918.49
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    560, '2022-04-13', 10, 442, 1,
    '2022-04-16', '2022-04-16', 2,
    40.00, 40.00, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    170, '2024-07-03', 7, 57, 1,
    '2024-10-13', '2024-10-20', 2,
    3694.85, 5029.22, 1334.37
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    159, '2024-07-16', 7, 150, 1,
    '2024-07-30', '2024-08-04', 4,
    3140.90, 5340.00, 2199.10
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    174, '2024-06-26', 7, 161, 1,
    '2024-07-17', '2024-07-18', 2,
    2005.76, 3200.00, 1194.24
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    181, '2024-06-19', 7, 166, 1,
    '2024-11-06', '2024-11-19', 2,
    15054.15, 24740.00, 9685.85
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    217, '2024-04-10', 7, 196, 1,
    '2024-05-16', '2024-06-04', 2,
    11274.08, 18070.00, 6795.92
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    501, '2022-09-13', 8, 64, 1,
    '2022-10-24', '2022-11-02', 2,
    7586.97, 11915.00, 4328.03
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    488, '2022-11-07', 8, 191, 1,
    '2023-05-20', '2023-06-03', 2,
    6679.87, 9960.00, 3280.13
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    428, '2023-03-03', 8, 207, 1,
    '2023-04-03', '2023-04-08', 1,
    345.00, 350.00, 5.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    494, '2022-10-07', 8, 271, 1,
    '2022-11-02', '2022-11-08', 0,
    4108.75, 6390.00, 2281.25
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    383, '2023-05-08', 8, 327, 1,
    '2023-05-09', '2023-05-11', 2,
    791.87, 1350.00, 558.13
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    416, '2023-03-15', 8, 348, 1,
    '2023-05-29', '2023-06-05', 2,
    3423.33, 5200.00, 1776.67
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    418, '2023-03-13', 8, 350, 1,
    '2023-05-30', '2023-06-10', 2,
    4685.65, 6260.00, 1574.35
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    423, '2023-03-09', 8, 354, 1,
    '2023-06-18', '2023-06-25', 4,
    5052.68, 7100.00, 2047.32
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    479, '2022-12-09', 8, 354, 1,
    '2022-12-21', '2022-12-25', 0,
    291.80, 500.00, 208.20
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    426, '2023-03-09', 8, 357, 1,
    '2023-04-16', '2023-04-21', 2,
    3914.03, 6230.00, 2315.97
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    440, '2023-02-10', 8, 368, 1,
    '2023-05-08', '2023-05-20', 2,
    9689.76, 13750.00, 4060.24
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    446, '2023-02-02', 8, 371, 1,
    '2023-05-27', '2023-06-03', 5,
    6549.05, 8850.00, 2300.95
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    448, '2023-02-01', 8, 373, 1,
    '2023-04-23', '2023-04-27', 6,
    7825.14, 12600.00, 4774.86
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    449, '2023-01-31', 8, 374, 1,
    '2023-06-21', '2023-07-10', 3,
    15625.36, 21155.00, 5529.64
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    466, '2023-01-12', 8, 383, 1,
    '2023-05-24', '2023-05-31', 4,
    9046.58, 14460.00, 5413.42
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    477, '2022-12-09', 8, 390, 1,
    '2023-04-12', '2023-04-23', 8,
    17348.03, 25055.00, 7706.97
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    478, '2022-12-09', 8, 391, 1,
    '2023-04-24', '2023-04-30', 2,
    6246.91, 10500.00, 4253.09
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    491, '2022-10-21', 8, 397, 1,
    '2022-10-29', '2022-11-10', 0,
    4723.96, 7004.00, 2280.04
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    506, '2022-09-02', 8, 406, 1,
    '2022-10-15', '2022-10-23', 2,
    6661.21, 9370.00, 2708.79
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    516, '2022-08-04', 8, 413, 1,
    '2022-10-13', '2022-10-24', 4,
    15668.43, 21600.00, 5931.57
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    631, '2019-11-04', 12, 195, 1,
    '2020-04-09', '2020-04-19', 10,
    1371.00, 11425.00, 10054.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    652, '2019-06-25', 12, 233, 1,
    '2019-07-13', '2019-07-24', 2,
    4158.99, 6370.00, 2211.01
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    647, '2019-07-30', 12, 379, 1,
    '2020-02-28', '2020-03-16', 2,
    4909.97, 7375.00, 2465.03
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    645, '2019-08-06', 12, 393, 1,
    '2019-08-19', '2019-08-24', 5,
    1442.00, 3200.00, 1758.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    637, '2019-09-18', 12, 503, 1,
    '2019-10-12', '2019-10-21', 2,
    2537.13, 4400.00, 1862.87
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    639, '2019-09-09', 12, 504, 1,
    '2019-10-24', '2019-10-30', 4,
    6222.18, 11265.00, 5042.82
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    640, '2019-09-09', 12, 505, 1,
    '2019-11-03', '2019-11-13', 4,
    7934.97, 11680.00, 3745.03
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    648, '2019-07-25', 12, 509, 1,
    '2020-01-26', '2020-02-02', 4,
    7093.02, 10100.00, 3006.98
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    623, '2020-01-16', 11, 495, 1,
    '2020-04-16', '2020-04-23', 2,
    411.60, 3430.00, 3018.40
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    7, '2025-04-11', 1, 7, 2,
    '2025-05-07', '2025-05-20', 2,
    8960.88, 13210.00, 4249.12
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    18, '2025-03-24', 1, 18, 2,
    '2025-04-26', '2025-05-13', 2,
    4689.30, 8320.00, 3630.70
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    23, '2025-03-20', 1, 23, 2,
    '2025-04-04', '2025-04-05', 1,
    478.13, 688.00, 209.87
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    41, '2025-02-25', 1, 41, 2,
    '2025-06-27', '2025-07-06', 7,
    16827.99, 26355.00, 9527.01
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    81, '2024-12-20', 1, 78, 2,
    '2025-04-17', '2025-04-24', 3,
    8757.95, 13045.00, 4287.05
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    100, '2024-11-18', 1, 97, 2,
    '2025-09-19', '2025-10-02', 2,
    14684.82, 24280.00, 9595.18
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    101, '2024-11-15', 1, 98, 2,
    '2025-05-12', '2025-05-22', 4,
    14368.04, 23900.00, 9531.96
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    109, '2024-10-28', 1, 106, 2,
    '2025-02-15', '2025-02-22', 4,
    8659.43, 15300.00, 6640.57
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    214, '2024-04-11', 1, 116, 2,
    '2024-10-06', '2024-10-20', 2,
    11657.40, 19836.00, 8178.60
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    129, '2024-09-13', 1, 123, 2,
    '2025-03-07', '2025-03-21', 2,
    12598.91, 19930.00, 7331.09
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    134, '2024-09-02', 1, 128, 2,
    '2024-10-13', '2024-10-20', 2,
    6166.14, 10540.00, 4373.86
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    149, '2024-08-03', 1, 141, 2,
    '2024-10-07', '2024-10-17', 2,
    10749.46, 18465.00, 7715.54
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    156, '2024-07-24', 1, 148, 2,
    '2024-10-18', '2024-10-28', 4,
    9186.03, 13460.00, 4273.97
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    196, '2024-05-28', 1, 178, 2,
    '2024-06-21', '2024-08-06', 4,
    12695.79, 18055.00, 5359.21
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    225, '2024-04-03', 1, 203, 2,
    '2025-04-02', '2025-04-13', 4,
    11257.78, 18660.00, 7402.22
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    231, '2024-03-26', 1, 208, 2,
    '2024-05-23', '2024-05-27', 4,
    9082.41, 14820.00, 5737.59
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    314, '2023-10-26', 1, 223, 2,
    '2024-01-27', '2024-02-09', 2,
    6215.10, 15949.00, 9733.90
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    255, '2024-02-14', 1, 229, 2,
    '2024-04-26', '2024-05-04', 2,
    6812.73, 10930.00, 4117.27
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    538, '2022-06-09', 1, 243, 2,
    '2022-09-08', '2022-09-22', 2,
    10105.46, 15550.00, 5444.54
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    285, '2024-01-10', 1, 255, 2,
    '2024-04-08', '2024-04-23', 2,
    8864.78, 13760.00, 4895.22
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    458, '2023-01-20', 1, 258, 2,
    '2024-06-25', '2024-07-04', 2,
    7818.70, 14570.00, 6751.30
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    406, '2023-03-31', 1, 341, 2,
    '2023-09-11', '2023-09-17', 3,
    4404.56, 6960.00, 2555.44
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    417, '2023-03-14', 1, 349, 2,
    '2023-06-13', '2023-06-19', 1,
    2833.00, 4140.00, 1307.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    463, '2023-01-16', 1, 381, 2,
    '2023-08-30', '2023-09-11', 2,
    5502.96, 8419.98, 2917.02
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    522, '2022-07-18', 1, 418, 2,
    '2022-09-09', '2022-09-19', 1,
    7420.26, 10520.00, 3099.74
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    536, '2022-06-14', 1, 426, 2,
    '2022-07-11', '2022-07-20', 2,
    6996.00, 10393.00, 3397.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    543, '2022-05-31', 1, 431, 2,
    '2022-07-02', '2022-07-12', 3,
    21243.33, 28150.00, 6906.67
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    544, '2022-05-27', 1, 432, 2,
    '2022-10-15', '2022-10-22', 0,
    3924.37, 5370.00, 1445.63
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    576, '2022-03-03', 1, 456, 2,
    '2022-10-10', '2022-10-18', 4,
    6024.58, 8184.00, 2159.42
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    586, '2022-02-10', 1, 464, 2,
    '2022-10-13', '2022-10-23', 2,
    3760.76, 5730.00, 1969.24
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    17, '2025-03-26', 3, 17, 2,
    '2025-04-30', '2025-05-13', 2,
    4548.02, 6170.00, 1621.98
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    61, '2025-01-31', 3, 60, 2,
    '2025-02-09', '2025-02-16', 4,
    9422.18, 14455.00, 5032.82
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    85, '2024-12-09', 3, 82, 2,
    '2025-06-05', '2025-06-14', 2,
    6557.16, 8860.00, 2302.84
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    200, '2024-05-03', 3, 181, 2,
    '2024-10-24', '2024-11-07', 2,
    7402.53, 9944.00, 2541.47
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    8, '2025-04-08', 2, 8, 2,
    '2025-04-18', '2025-04-28', 2,
    3502.34, 5510.00, 2007.66
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    47, '2025-02-13', 2, 10, 2,
    '2025-09-11', '2025-09-20', 4,
    5090.90, 9140.00, 4049.10
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    320, '2023-09-25', 2, 28, 2,
    '2023-11-26', '2023-12-01', 2,
    4570.28, 7200.00, 2629.72
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    39, '2025-02-27', 2, 39, 2,
    '2025-06-12', '2025-06-18', 2,
    5224.50, 7270.00, 2045.50
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    177, '2024-06-21', 2, 162, 2,
    '2024-10-16', '2024-11-02', 2,
    7721.53, 10800.00, 3078.47
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    230, '2024-03-28', 2, 207, 2,
    '2024-06-22', '2024-06-25', 4,
    4607.43, 6600.00, 1992.57
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    242, '2024-03-08', 2, 217, 2,
    '2024-09-14', '2024-09-22', 2,
    9837.65, 13500.00, 3662.35
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    278, '2024-01-24', 2, 249, 2,
    '2024-01-30', '2024-02-04', 3,
    3931.05, 6090.00, 2158.95
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    303, '2023-11-21', 2, 270, 2,
    '2024-09-02', '2024-09-12', 2,
    5061.54, 6650.00, 1588.46
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    382, '2023-05-10', 2, 326, 2,
    '2023-11-23', '2023-11-29', 3,
    4087.04, 6085.00, 1997.96
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    626, '2019-12-13', 2, 496, 2,
    '2023-02-17', '2023-04-11', 5,
    13958.40, 20200.00, 6241.60
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    140, '2024-08-22', 4, 133, 2,
    '2024-09-23', '2024-10-06', 2,
    15033.75, 21520.00, 6486.25
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    183, '2024-06-14', 4, 168, 2,
    '2024-09-17', '2024-09-24', 2,
    6264.43, 7830.00, 1565.57
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    194, '2024-05-31', 4, 176, 2,
    '2024-07-21', '2024-07-30', 3,
    1538.66, 3180.00, 1641.34
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    224, '2024-04-03', 4, 202, 2,
    '2024-09-30', '2024-10-07', 2,
    5764.97, 8299.00, 2534.03
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    326, '2023-09-12', 4, 206, 2,
    '2024-03-23', '2024-03-31', 6,
    10853.71, 18240.00, 7386.29
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    331, '2023-08-28', 4, 290, 2,
    '2023-10-11', '2023-10-25', 4,
    16518.21, 25740.00, 9221.79
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    350, '2023-07-21', 4, 303, 2,
    '2023-10-06', '2023-10-15', 4,
    12772.92, 19880.00, 7107.08
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    51, '2025-02-07', 5, 50, 2,
    '2025-04-16', '2025-04-30', 2,
    6438.98, 9030.00, 2591.02
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    59, '2025-01-31', 5, 58, 2,
    '2025-05-16', '2025-05-25', 2,
    3911.29, 5550.00, 1638.71
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    115, '2024-10-08', 5, 111, 2,
    '2025-03-30', '2025-04-06', 2,
    4164.19, 5570.46, 1406.27
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    209, '2024-04-18', 5, 190, 2,
    '2024-09-21', '2024-09-30', 6,
    20618.06, 31986.00, 11367.94
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    238, '2024-03-19', 5, 214, 2,
    '2024-03-21', '2024-03-25', 2,
    2325.16, 3130.00, 804.84
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    71, '2025-01-21', 6, 70, 2,
    '2025-03-20', '2025-03-30', 4,
    17630.65, 27760.00, 10129.35
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    75, '2025-01-03', 6, 74, 2,
    '2025-01-04', '2025-01-04', 2,
    23.00, 23.00, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    135, '2024-08-29', 6, 129, 2,
    '2024-09-22', '2024-09-28', 2,
    3647.18, 6180.00, 2532.82
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    633, '2019-10-28', 6, 241, 2,
    '2022-09-15', '2022-09-23', 4,
    684.00, 1710.00, 1026.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    272, '2024-01-26', 6, 244, 2,
    '2024-05-25', '2024-06-02', 4,
    13079.84, 17690.40, 4610.56
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    420, '2023-03-11', 6, 352, 2,
    '2023-05-05', '2023-05-14', 2,
    5177.30, 7660.00, 2482.70
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    422, '2023-03-09', 6, 353, 2,
    '2023-05-15', '2023-05-23', 8,
    33374.65, 53280.00, 19905.35
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    467, '2023-01-10', 6, 384, 2,
    '2023-07-08', '2023-07-15', 3,
    5365.80, 7400.00, 2034.20
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    490, '2022-10-25', 6, 396, 2,
    '2023-02-28', '2023-03-05', 2,
    2030.14, 3110.00, 1079.86
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    493, '2022-10-11', 6, 399, 2,
    '2022-10-12', '2022-10-20', 2,
    5401.05, 9600.00, 4198.95
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    580, '2022-02-23', 6, 459, 2,
    '2022-09-05', '2022-09-14', 0,
    7369.54, 11390.00, 4020.46
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    655, '2019-06-04', 6, 514, 2,
    '2019-06-21', '2019-06-27', 1,
    1668.33, 2800.00, 1131.67
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    492, '2022-10-14', 10, 398, 2,
    '2022-12-05', '2022-12-13', 8,
    13413.05, 19120.00, 5706.95
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    87, '2024-12-05', 7, 84, 2,
    '2025-01-05', '2025-01-13', 2,
    1608.30, 3000.00, 1391.70
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    139, '2024-08-23', 7, 132, 2,
    '2024-10-05', '2024-10-15', 4,
    8578.05, 11557.32, 2979.27
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    641, '2019-09-02', 12, 262, 2,
    '2019-09-25', '2019-10-02', 2,
    2706.48, 4700.00, 1993.52
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    650, '2019-07-08', 12, 511, 2,
    '2019-08-06', '2019-08-13', 2,
    6261.03, 10240.00, 3978.97
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    387, '2023-05-02', 9, 331, 2,
    '2023-10-08', '2023-10-17', 2,
    4440.15, 6450.00, 2009.85
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    619, '2020-02-03', 1, 118, 4,
    '2022-07-03', '2022-07-16', 5,
    8040.17, 12400.00, 4359.83
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    439, '2023-02-15', 1, 127, 4,
    '2023-06-27', '2023-07-06', 5,
    9854.06, 16745.00, 6890.94
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    160, '2024-07-16', 1, 148, 4,
    '2025-05-06', '2025-05-12', 2,
    4090.76, 7350.00, 3259.24
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    186, '2024-06-11', 1, 171, 4,
    '2024-09-01', '2024-09-10', 2,
    6920.39, 10800.00, 3879.61
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    216, '2024-04-10', 1, 195, 4,
    '2024-06-25', '2024-07-03', 6,
    11022.90, 15630.00, 4607.10
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    250, '2024-02-21', 1, 224, 4,
    '2024-05-10', '2024-05-23', 2,
    10810.94, 17030.00, 6219.06
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    324, '2023-09-15', 1, 286, 4,
    '2024-06-05', '2024-06-16', 4,
    15570.92, 21800.00, 6229.08
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    327, '2023-09-11', 1, 288, 4,
    '2024-05-23', '2024-06-02', 2,
    11710.78, 19730.00, 8019.22
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    495, '2022-10-03', 1, 400, 4,
    '2023-04-23', '2023-05-06', 4,
    4225.18, 8260.00, 4034.82
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    243, '2024-03-07', 2, 28, 4,
    '2024-11-05', '2024-11-14', 2,
    4729.78, 6707.00, 1977.22
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    279, '2024-01-18', 2, 250, 4,
    '2024-08-15', '2024-08-22', 2,
    3999.07, 5960.00, 1960.93
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    10, '2025-04-07', 4, 10, 4,
    '2025-05-20', '2025-05-20', 0,
    136.00, 190.00, 54.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    142, '2024-08-13', 4, 135, 4,
    '2024-09-17', '2024-10-09', 2,
    7021.91, 10630.00, 3608.09
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    145, '2024-08-12', 4, 138, 4,
    '2024-09-16', '2024-09-29', 2,
    13499.72, 22010.00, 8510.28
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    178, '2024-06-20', 4, 163, 4,
    '2024-07-15', '2024-07-30', 4,
    17566.46, 27700.00, 10133.54
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    453, '2023-01-26', 4, 187, 4,
    '2023-07-16', '2023-07-23', 5,
    11775.75, 16700.00, 4924.25
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    374, '2023-05-17', 4, 267, 4,
    '2023-06-21', '2023-06-28', 4,
    5333.20, 7340.00, 2006.80
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    339, '2023-08-07', 4, 296, 4,
    '2023-09-01', '2023-09-09', 2,
    4317.03, 6020.00, 1702.97
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    565, '2022-04-06', 6, 273, 4,
    '2022-04-21', '2022-04-24', 2,
    699.00, 699.00, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    455, '2023-01-26', 6, 377, 4,
    '2023-06-25', '2023-07-07', 5,
    16503.01, 26275.00, 9771.99
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    572, '2022-03-15', 6, 432, 4,
    '2022-04-29', '2022-05-07', 2,
    2783.69, 4670.00, 1886.31
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    581, '2022-02-18', 6, 460, 4,
    '2022-07-23', '2022-08-07', 2,
    7951.73, 11600.00, 3648.27
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    220, '2024-04-08', 7, 199, 4,
    '2024-08-31', '2024-09-13', 3,
    14520.08, 18015.00, 3494.92
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    366, '2023-06-02', 1, 138, 5,
    '2023-09-06', '2023-09-16', 2,
    10338.41, 17510.00, 7171.59
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    527, '2022-06-28', 1, 191, 5,
    '2022-08-17', '2022-08-29', 2,
    5188.94, 7065.50, 1876.56
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    514, '2022-08-08', 1, 306, 5,
    '2022-09-09', '2022-09-18', 2,
    11632.67, 16980.00, 5347.33
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    365, '2023-06-02', 1, 312, 5,
    '2023-06-29', '2023-07-06', 3,
    9701.35, 14920.00, 5218.65
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    539, '2022-06-09', 1, 348, 5,
    '2022-09-12', '2022-09-20', 2,
    3185.01, 4385.00, 1199.99
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    481, '2022-11-25', 1, 351, 5,
    '2023-06-06', '2023-06-27', 2,
    10427.23, 15720.00, 5292.77
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    521, '2022-07-20', 1, 392, 5,
    '2022-09-19', '2022-09-29', 2,
    5754.85, 6781.50, 1026.65
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    542, '2022-06-02', 1, 430, 5,
    '2022-07-07', '2022-07-17', 2,
    12381.96, 18111.00, 5729.04
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    562, '2022-04-13', 1, 444, 5,
    '2022-06-04', '2022-06-13', 2,
    4928.00, 6760.00, 1832.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    571, '2022-03-17', 1, 452, 5,
    '2022-04-01', '2022-05-07', 4,
    10806.13, 15742.44, 4936.31
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    68, '2025-01-27', 3, 67, 5,
    '2025-09-03', '2025-09-13', 2,
    9171.19, 12770.00, 3598.81
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    226, '2024-04-02', 2, 204, 5,
    '2024-06-19', '2024-06-26', 4,
    13072.27, 18160.00, 5087.73
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    67, '2025-01-27', 4, 66, 5,
    '2025-07-21', '2025-07-29', 15,
    50076.98, 83121.00, 33044.02
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    33, '2025-03-07', 5, 33, 5,
    '2025-06-09', '2025-06-18', 2,
    13428.80, 19570.00, 6141.20
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    459, '2023-01-20', 6, 378, 5,
    '2023-06-04', '2023-06-16', 4,
    19458.52, 28780.00, 9321.48
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    508, '2022-08-29', 10, 408, 5,
    '2022-10-01', '2022-10-10', 1,
    7361.10, 10700.00, 3338.90
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    248, '2024-02-27', 1, 222, 3,
    '2024-06-25', '2024-06-29', 2,
    2449.37, 3900.00, 1450.63
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    9, '2025-04-07', 4, 9, 3,
    '2025-12-10', '2025-12-10', 0,
    360.00, 630.00, 270.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    79, '2024-12-26', 4, 48, 3,
    '2025-08-08', '2025-08-14', 4,
    2260.50, 10760.00, 8499.50
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    133, '2024-09-03', 4, 127, 3,
    '2025-04-23', '2025-05-01', 2,
    7299.17, 11370.00, 4070.83
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    313, '2023-11-02', 4, 279, 3,
    '2023-12-09', '2023-12-17', 1,
    3480.08, 5150.00, 1669.92
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    316, '2023-10-20', 4, 281, 3,
    '2023-11-04', '2023-11-06', 0,
    462.75, 462.75, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    96, '2024-11-22', 5, 93, 3,
    '2025-06-29', '2025-07-09', 2,
    8041.40, 11310.00, 3268.60
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    107, '2024-10-30', 6, 104, 3,
    '2025-04-08', '2025-04-15', 2,
    6945.32, 9330.00, 2384.68
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    622, '2020-01-20', 6, 495, 3,
    '2020-02-15', '2020-02-22', 5,
    6250.41, 10150.00, 3899.59
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    528, '2022-06-23', 1, 237, 15,
    '2022-10-17', '2022-10-24', 4,
    8829.02, 15060.00, 6230.98
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    305, '2023-11-16', 1, 272, 15,
    '2024-03-08', '2024-03-17', 3,
    12524.30, 20140.00, 7615.70
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    237, '2024-03-20', 3, 213, 15,
    '2024-05-28', '2024-06-12', 2,
    17141.34, 22570.00, 5428.66
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    433, '2023-02-23', 5, 363, 15,
    '2023-07-24', '2023-07-29', 3,
    8441.04, 11910.00, 3468.96
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    583, '2022-02-16', 6, 462, 15,
    '2022-05-21', '2022-05-31', 2,
    2919.90, 3630.00, 710.10
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    198, '2024-05-17', 7, 171, 15,
    '2024-10-02', '2024-10-14', 2,
    7800.99, 11906.00, 4105.01
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    315, '2023-10-23', 1, 280, 18,
    '2024-03-07', '2024-03-14', 0,
    1697.85, 1697.85, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    391, '2023-04-24', 1, 335, 8,
    '2024-04-30', '2024-05-09', 2,
    5701.14, 10400.00, 4698.86
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    567, '2022-03-29', 1, 448, 8,
    '2022-07-02', '2022-07-10', 3,
    2822.46, 3500.00, 677.54
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    86, '2024-12-06', 4, 83, 8,
    '2025-04-07', '2025-04-15', 2,
    8495.28, 11262.50, 2767.22
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    519, '2022-07-27', 1, 416, 17,
    '2022-09-07', '2022-09-12', 2,
    5795.80, 10390.00, 4594.20
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    246, '2024-02-29', 6, 220, 17,
    '2024-03-23', '2024-03-27', 2,
    928.00, 934.00, 6.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    345, '2023-08-01', 6, 300, 17,
    '2023-07-08', '2023-07-08', 2,
    42.50, 42.50, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    589, '2022-01-28', 6, 467, 17,
    '2022-03-18', '2022-03-19', 2,
    189.30, 188.00, -1.30
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    591, '2021-12-22', 6, 469, 17,
    '2022-03-11', '2022-03-13', 2,
    329.25, 329.25, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    621, '2020-01-27', 6, 494, 17,
    '2020-07-31', '2020-07-31', 0,
    850.00, 850.58, 0.58
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    601, '2021-07-26', 1, 478, 33,
    '2022-03-05', '2022-03-11', 1,
    14941.94, 17788.40, 2846.46
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    616, '2020-02-24', 6, 492, 33,
    '2020-07-25', '2020-07-26', 0,
    232.90, 232.90, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    632, '2019-10-29', 1, 500, 35,
    '2022-06-19', '2022-06-27', 2,
    3043.50, 4220.00, 1176.50
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    607, '2021-06-10', 6, 483, 35,
    '2021-05-06', '2021-05-06', 2,
    56.00, 56.00, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    176, '2024-06-21', 3, 142, 14,
    '2024-08-02', '2024-08-11', 4,
    18055.30, 27980.00, 9924.70
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    241, '2024-03-13', 2, 112, 16,
    '2024-08-27', '2024-09-06', 2,
    6323.94, 8150.00, 1826.06
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    354, '2023-07-10', 2, 181, 16,
    '2024-05-04', '2024-05-19', 6,
    23020.00, 42060.00, 19040.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    289, '2023-12-15', 2, 257, 16,
    '2024-05-28', '2024-06-05', 1,
    1623.54, 2060.00, 436.46
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    264, '2024-02-05', 4, 237, 16,
    '2024-06-07', '2024-06-14', 2,
    3874.19, 6230.00, 2355.81
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    239, '2024-03-18', 5, 215, 16,
    '2024-05-31', '2024-06-10', 2,
    13061.90, 18500.00, 5438.10
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    596, '2021-10-22', 6, 473, 16,
    '2021-11-06', '2021-11-13', 1,
    2114.00, 2360.00, 246.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    599, '2021-09-27', 6, 476, 16,
    '2021-10-02', '2021-10-09', 2,
    1845.00, 1939.00, 94.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    236, '2024-03-21', 7, 212, 16,
    '2024-05-02', '2024-05-11', 5,
    22662.90, 29825.00, 7162.10
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    651, '2019-06-25', 12, 107, 16,
    '2019-07-18', '2019-07-28', 4,
    8381.90, 12800.00, 4418.10
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    618, '2020-02-06', 2, 208, 37,
    '2023-06-07', '2023-06-15', 2,
    8132.18, 12400.00, 4267.82
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    74, '2025-01-13', 4, 73, 6,
    '2025-04-29', '2025-05-10', 2,
    4732.35, 5770.00, 1037.65
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    161, '2024-07-16', 4, 151, 13,
    '2024-08-23', '2024-09-04', 4,
    17663.85, 19385.00, 1721.15
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    411, '2023-03-23', 4, 347, 23,
    '2023-10-19', '2023-10-22', 3,
    826.35, 826.35, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    429, '2023-02-28', 6, 359, 23,
    '2023-03-05', '2023-03-08', 5,
    1021.50, 1031.72, 10.22
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    473, '2022-12-20', 6, 389, 23,
    '2023-01-20', '2023-01-24', 2,
    618.50, 618.50, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    499, '2022-09-26', 6, 389, 23,
    '2022-09-17', '2022-09-19', 3,
    340.20, 340.20, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    582, '2022-02-16', 6, 461, 23,
    '2022-05-20', '2022-05-22', 7,
    839.80, 1143.80, 304.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    592, '2021-12-16', 6, 470, 23,
    '2022-02-12', '2022-02-19', 2,
    0.00, 1630.00, 1630.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    602, '2021-07-22', 6, 470, 23,
    '2021-10-13', '2021-10-21', 4,
    3230.60, 3502.40, 271.80
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    131, '2024-09-10', 5, 125, 11,
    '2024-09-13', '2024-09-13', 2,
    112.00, 104.00, -8.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    485, '2022-11-18', 10, 256, 11,
    '2022-12-05', '2022-12-12', 2,
    2868.31, 5110.00, 2241.69
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    80, '2024-12-20', 6, 77, 7,
    '2024-12-20', '2024-12-20', 0,
    1336.00, 1336.00, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    119, '2024-09-30', 6, 115, 9,
    '2024-10-26', '2024-10-30', 2,
    1272.04, 1272.04, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    152, '2024-07-29', 6, 144, 12,
    '2024-09-13', '2024-09-15', 2,
    350.20, 350.20, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    375, '2023-05-13', 6, 320, 12,
    '2023-06-24', '2023-06-25', 22,
    770.00, 770.00, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    376, '2023-05-13', 6, 321, 12,
    '2023-02-11', '2023-02-12', 0,
    235.80, 235.80, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    377, '2023-05-13', 6, 322, 12,
    '2023-06-08', '2023-06-11', 2,
    532.80, 532.80, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    317, '2023-10-11', 6, 282, 19,
    '2023-12-07', '2023-12-11', 2,
    280.50, 280.50, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    668, '2019-03-01', 6, 286, 44,
    '2019-05-20', '2019-05-30', 8,
    18304.20, 34200.00, 15895.80
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    662, '2019-03-18', 6, 290, 42,
    '2019-04-24', '2019-05-02', 2,
    3467.51, 5310.00, 1842.49
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    338, '2023-08-08', 6, 295, 20,
    '2023-08-11', '2023-08-13', 2,
    231.84, 231.84, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    361, '2023-06-15', 6, 310, 21,
    '2023-06-24', '2023-06-25', 2,
    156.00, 156.00, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    378, '2023-05-13', 6, 323, 22,
    '2023-08-06', '2023-08-14', 2,
    3276.00, 3276.00, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    518, '2022-07-28', 6, 415, 22,
    '2022-08-06', '2022-08-14', 2,
    1856.80, 1856.80, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    600, '2021-09-23', 6, 477, 22,
    '2021-10-05', '2021-10-08', 2,
    972.00, 972.00, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    496, '2022-10-01', 6, 401, 24,
    '2022-08-27', '2022-08-28', 0,
    7423.03, 7423.03, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    660, '2019-05-01', 6, 518, 24,
    '2019-05-24', '2019-05-26', 0,
    437.00, 440.00, 3.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    526, '2022-07-01', 6, 421, 25,
    '2022-08-18', '2022-08-28', 2,
    4281.78, 6400.00, 2118.22
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    537, '2022-06-13', 6, 427, 26,
    '2022-06-10', '2022-06-12', 0,
    240.00, 270.00, 30.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    644, '2019-08-07', 6, 507, 26,
    '2019-08-24', '2019-08-25', 6,
    175.95, 175.95, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    561, '2022-04-13', 6, 443, 27,
    '2022-04-20', '2022-04-22', 5,
    540.80, 540.80, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    587, '2022-02-01', 6, 465, 29,
    '2022-04-16', '2022-04-23', 5,
    12389.15, 13875.00, 1485.85
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    612, '2021-04-13', 6, 488, 29,
    '2021-06-12', '2021-07-02', 5,
    19350.82, 27600.00, 8249.18
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    588, '2022-01-28', 6, 466, 30,
    '2022-01-30', '2022-02-04', 2,
    1533.75, 1905.50, 371.75
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    598, '2021-09-29', 6, 475, 30,
    '2021-09-02', '2021-09-04', 2,
    750.00, 750.00, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    613, '2021-04-13', 6, 489, 30,
    '2021-06-14', '2021-06-20', 2,
    1320.02, 1320.03, 0.01
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    590, '2022-01-18', 6, 468, 31,
    '2021-12-11', '2021-12-13', 0,
    397.29, 397.29, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    595, '2021-10-25', 6, 472, 32,
    '2021-10-08', '2021-10-10', 2,
    297.50, 297.50, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    604, '2021-07-05', 6, 480, 34,
    '2021-07-02', '2021-07-03', 2,
    124.64, 136.00, 11.36
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    659, '2019-05-14', 6, 517, 34,
    '2019-05-15', '2019-05-16', 0,
    240.00, 240.50, 0.50
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    615, '2020-09-28', 6, 491, 36,
    '2020-10-04', '2020-10-13', 2,
    253.04, 253.04, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    642, '2019-08-23', 6, 506, 38,
    '2019-09-20', '2019-09-22', 2,
    398.14, 472.00, 73.86
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    646, '2019-08-01', 6, 508, 39,
    '2019-08-16', '2019-08-17', 2,
    84.00, 84.00, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    656, '2019-05-21', 6, 515, 40,
    '2019-06-19', '2019-06-28', 4,
    11883.87, 18320.00, 6436.13
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    657, '2019-05-16', 6, 516, 41,
    '2019-05-22', '2019-05-30', 4,
    9844.92, 15440.00, 5595.08
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    665, '2019-03-10', 6, 521, 41,
    '2019-06-05', '2019-06-12', 4,
    5598.61, 9440.00, 3841.39
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    664, '2019-03-18', 6, 520, 43,
    '2019-03-21', '2019-03-21', 2,
    120.00, 120.00, 0.00
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    564, '2022-04-07', 10, 446, 28,
    '2022-08-02', '2022-08-11', 2,
    6901.33, 10490.00, 3588.67
);


INSERT INTO reservas (
    id_reserva, data_abertura, id_operador, id_cliente, id_destino,
    partida, chegada, nr_pax, custo, preco, margem
) VALUES (
    130, '2024-09-13', 7, 124, 10,
    '2024-10-14', '2024-10-21', 2,
    1203.30, 1203.30, 0.00
);
