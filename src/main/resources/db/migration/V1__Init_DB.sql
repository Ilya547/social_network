-- create sequence usr_seq start with 1 increment by 5;
-- create sequence message_seq start with 1 increment by 50;
create sequence hibernate_sequence start 5 increment 1;
-- not my
-- create table message (
--                          id int8 not null,
--                          file_name varchar(255),
--                          tag varchar(255),
--                          text varchar(2048) not null,
--                          user_id int8,
--                          primary key (id)
-- );
create table message
(
    id        bigint not null,
    file_name varchar(255),
    tag       varchar(255),
    text      varchar(255),
    user_id   bigint,
    primary key (id)
);
-- not my
-- create table user_role (
--                            user_id int8 not null,
--                            roles varchar(255)
-- );

create table user_role
(
    user_id bigint not null,
    roles   varchar(255)
);
-- not my
-- create table usr (
--                      id int8 not null,
--                      activation_code varchar(255),
--                      active boolean not null,
--                      email varchar(255),
--                      password varchar(255) not null,
--                      username varchar(255) not null,
--                      primary key (id)
-- );
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

-- not my
-- alter table if exists message
--     add constraint message_user_fk
--         foreign key (user_id) references usr;
alter table if exists message
    add constraint message_user_fk
        foreign key (user_id) references usr;

-- not my
-- alter table if exists user_role
--     add constraint user_role_user_fk
--         foreign key (user_id) references usr;
alter table if exists user_role
    add constraint user_role_user_fk
        foreign key (user_id) references usr;


