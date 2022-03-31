create table if not exists Жанр (
	Идентификатор serial primary key,
	Название varchar(20) not null
);

create table if not exists Исполнитель (
	Идентификатор serial primary key,
	Имя varchar(20) not null,
	Идентификатор_жанра integer references Жанр(Идентификатор)
);

create table if not exists Альбом (
	Идентификатор serial primary key,
	Название varchar(20) not null,
	Год_выпуска date not null,
	Идентификатор_исполнителя integer references Исполнитель(Идентификатор)
);

create table if not exists Трек (
	Идентификатор serial primary key,
	Название varchar(20) not null,
	Длительность integer check(Длительность > 0),
	Идентификатор_альбома integer references Альбом(Идентификатор)
);
