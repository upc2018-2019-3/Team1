create table connection
(
    name  varchar(20)   not null,
    pwd   varchar(20)   not null,
    isMan int default 0 null,
    constraint connection_name_uindex
        unique (name)
)
    charset = utf8;

alter table connection
    add primary key (name);

create table department_form
(
    aptId     int unsigned auto_increment comment '���ź�'
        primary key,
    aptName   varchar(20)  not null comment '��������',
    dduty     varchar(32)  not null comment '���Ÿ�����',
    upaptId   int unsigned null comment '�ϼ����ź�',
    downaptId int unsigned null comment '�¼����ź�'
)
    charset = utf8;

create table employee_form
(
    eid           int unsigned auto_increment comment 'Ա�����'
        primary key,
    ename         varchar(20)               not null comment 'Ա������',
    esex          varchar(6)                not null comment '�Ա�',
    enation       varchar(10)               not null comment '����',
    eage          int                       not null comment '����',
    eedu          varchar(10)               not null comment 'ѧ��',
    eprofessional varchar(20)               not null comment 'רҵ',
    eschool       varchar(32)               not null comment 'ԺУ',
    elanguage     varchar(32)               not null comment '��������',
    eworkerdate   varchar(40)               null comment '��ְ����',
    did           int unsigned              not null comment '���ź�',
    sid           int unsigned              not null comment '��λ��',
    state         varchar(50) default '�����' null
)
    charset = utf8;

create table station_form
(
    sid       int unsigned auto_increment comment '��λ��'
        primary key,
    sname     varchar(20)  not null comment '��λ����',
    sdate     varchar(20)  not null comment '��������',
    sfunction varchar(100) not null comment '��λְ��',
    swages    int unsigned not null comment '��λ����',
    did       int unsigned not null comment '���ź�'
)
    charset = utf8;

create table turnover_employee_form
(
    eid      int unsigned not null comment 'Ա�����'
        primary key,
    elseason varchar(200) not null comment '��ְԭ��',
    eldate   varchar(32)  not null comment '��ְ����'
)
    charset = utf8;