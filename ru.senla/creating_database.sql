create schema if not exists devices;

create table if not exists devices.product (
    maker varchar(10) not null,
    model varchar(50) not null,
    type varchar(50) not null,
    primary key(model)
    );

create table if not exists devices.laptop (
    code int not null,
    model varchar(50) not null,
    speed smallint not null,
    ram smallint not null,
    hd real not null,
    price money not null,
    screen smallint not null,
    primary key (code),
    foreign key (model) references devices.product (model)
    );

create table if not exists devices.pc (
    code int not null,
    model varchar(50) not null,
    speed smallint not null,
    ram smallint not null,
    hd real not null,
    cd varchar(10) not null,
    price money not null,
    primary key (code),
    foreign key (model) references devices.product (model)
    );

create table if not exists devices.printer (
    code int not null,
    model varchar(50) not null,
    color char not null,
    type varchar(10) not null,
    price money not null,
    primary key (code),
    foreign key (model) references devices.product (model)
    );