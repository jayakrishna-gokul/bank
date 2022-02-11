use rbi;
drop table if exists bank_details;
DROP table if exists bank_address;

create table bank_address(
   id INT NOT NULL auto_increment,
   address_line_1 varchar(500),
   address_line_2 varchar(500),
   city varchar(100) ,
   state varchar(100) ,
   zip bigint(6) ,
   country varchar(100) ,
   PRIMARY KEY ( id )
);


create table bank_details(
   id INT NOT NULL AUTO_INCREMENT,
   bank_name VARCHAR(100) NOT NULL,
   bank_address_id INT,
   PRIMARY KEY ( id ),
   foreign key (bank_address_id) references bank_address(id)
);


INSERT INTO bank_details(bank_name)
VALUES ('HDFC'), ('ICICI'), ('CitiBank');

INSERT INTO bank_address(address_line_1, city, state, zip, country)
VALUES('ST.NO.77', 'HYDERABAD' , 'Telangana', '500070', 'INDIA'),
('ST.NO.78', 'HYDERABAD' , 'Telangana', '500071', 'INDIA'),
('ST.NO.79', 'HYDERABAD' , 'Telangana', '500072', 'INDIA');
