drop database if exists blog2;
create database if not exists blog2;
use blog2;

create table usuario (
    id int not null auto_increment,
    nome vatchar(50) not null,
    email vatchar(255) not null,
    senha varchar(60) not null,
    data_criacao datetime not null default current_timestamp,
    ativo tonyint not null default '0',
    admin tinyint not null default '0',
    primary key (id)
);

CREATE TABLE post (
    id int NOT NULL AUTO_INCREMENT,
    titulo varchar(255) NOT NULL,
    texto text NOT NULL,
    usuario_id int NOT NULL,
    data_criaco datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    data_postagem datetime NOT NULL,
    PRIMARY KEY (id),
    KEY fk_post_usuario_idx (usuario_id),
    CONSTRAINT fk_post_usuario FOREIGN KEY (usuario_id) REFERENCES usuario (id)
);