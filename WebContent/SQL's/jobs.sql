--create table job(job_id bigint auto_increment, title VARCHAR(150) not null, content varchar(500) not null);

insert into job(title,content) values('Software Developer','Develop, test and implement new software programs.
Clearly and regularly communicate with management and technical support colleagues.
Design and update software database.Test, maintain and recommend software improvements to ensure strong functionality and optimization.');

select * from job; 