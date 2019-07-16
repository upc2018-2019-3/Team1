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
    aptId     int unsigned auto_increment comment '部门号'
        primary key,
    aptName   varchar(20)  not null comment '部门名称',
    dduty     varchar(32)  not null comment '部门负责人',
    upaptId   int unsigned null comment '上级部门号',
    downaptId int unsigned null comment '下级部门号'
)
    charset = utf8;

create table employee_form
(
    eid           int unsigned auto_increment comment '员工编号'
        primary key,
    ename         varchar(20)               not null comment '员工姓名',
    esex          varchar(6)                not null comment '性别',
    enation       varchar(10)               not null comment '民族',
    eage          int                       not null comment '年龄',
    eedu          varchar(10)               not null comment '学历',
    eprofessional varchar(20)               not null comment '专业',
    eschool       varchar(32)               not null comment '院校',
    elanguage     varchar(32)               not null comment '外语能力',
    eworkerdate   varchar(40)               null comment '入职日期',
    did           int unsigned              not null comment '部门号',
    sid           int unsigned              not null comment '岗位号',
    state         varchar(50) default '待审核' null
)
    charset = utf8;

create table station_form
(
    sid       int unsigned auto_increment comment '岗位号'
        primary key,
    sname     varchar(20)  not null comment '岗位名称',
    sdate     varchar(20)  not null comment '建立日期',
    sfunction varchar(100) not null comment '岗位职责',
    swages    int unsigned not null comment '岗位工资',
    did       int unsigned not null comment '部门号'
)
    charset = utf8;

create table turnover_employee_form
(
    eid      int unsigned not null comment '员工编号'
        primary key,
    elseason varchar(200) not null comment '离职原因',
    eldate   varchar(32)  not null comment '离职日期'
)
    charset = utf8;