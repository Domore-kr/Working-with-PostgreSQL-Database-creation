create table if not exists ���� (
	������������� serial primary key,
	�������� varchar(20) not null
);

create table if not exists ����������� (
	������������� serial primary key,
	��� varchar(20) not null,
	�������������_����� integer references ����(�������������)
);

create table if not exists ������ (
	������������� serial primary key,
	�������� varchar(20) not null,
	���_������� date not null,
	�������������_����������� integer references �����������(�������������)
);

create table if not exists ���� (
	������������� serial primary key,
	�������� varchar(20) not null,
	������������ integer check(������������ > 0),
	�������������_������� integer references ������(�������������)
);
