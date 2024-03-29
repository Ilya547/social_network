create sequence usr_seq start with 1 increment by 1;
create sequence message_seq start with 1 increment by 1;
create sequence hibernate_sequence start 5 increment 1;

create table message
(
    id        bigint not null,
    file_name varchar(255),
    tag       varchar(255),
    text      varchar(255),
    user_id   bigint,
    primary key (id)
);

create table user_role
(
    user_id bigint not null,
    roles   varchar(255)
);

create table usr
(
    id              bigint  not null,
    activation_code varchar(255),
    active          boolean not null,
    email           varchar(255),
    password        varchar(255),
    username        varchar(255),
    primary key (id)
);

alter table if exists message
    add constraint message_user_fk
        foreign key (user_id) references usr;

alter table if exists user_role
    add constraint user_role_user_fk
        foreign key (user_id) references usr;


