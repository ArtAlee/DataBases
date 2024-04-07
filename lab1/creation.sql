CREATE TABLE Clients (
    id_client serial primary key,
    name varchar(64) not null,
    subscription varchar
);

CREATE TABLE Studios(
    id_studio serial primary key,
    name varchar(64) not null,
    address varchar(64),
    rate real
);

CREATE TABLE Services(
    id_service serial primary key,
    name varchar(64) not null,
    price_hour varchar(64)

);

CREATE TABLE Bookings(
    id_booking serial primary key,
    id_client integer,
    id_service integer,
    id_studio integer,
    start_time timestamp,
    end_time timestamp,
    foreign key (id_client) references Clients(id_client),
    foreign key (id_service) references Services(id_service),
    foreign key (id_studio) references Studios(id_studio)
);

CREATE TABLE Employees(
    id_employee serial primary key,
    id_studio integer,
    name VARCHAR(64) NOT NULL,
    phone integer,
    gender varchar(64),
    age integer,
    position varchar(64),
    foreign key (id_studio) references Studios(id_studio)
);


CREATE TABLE Portfolios(
    id_portfolio serial primary key,
    id_studio integer,
    id_service integer,
    name VARCHAR(64) NOT NULL,
    phone integer,
    gender varchar(64),
    age integer,
    position varchar(64),
    foreign key (id_studio) references Studios(id_studio),
    foreign key (id_service) references Services(id_service)
);
