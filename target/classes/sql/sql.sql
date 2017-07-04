create table usertable(
    id varchar2(30),
    password varchar2(100),
    join_date date,
    constraint user_pk primary key(id)
);

select * from usertable;

create table authorities(
    username varchar2(30),
    role varchar2(30),
    constraint authorities_fk foreign key(username) references usertable(id)
);

select * from authorities;

drop table authorities;
drop table usertable;

commit;