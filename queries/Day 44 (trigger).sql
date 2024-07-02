########################################################
##################    TRIGGER    #######################
#delimiter $$
#CREATE TRIGGER trigger_name
#{BEFORE | AFTER}  {INSERT | UPDATE | DELETE }
#ON table_name
#FOR EACH ROW
#BEGIN
#	--- TRIGGER BODY (sql statement)
#END$$
#DELIMETER ;

########################################################


use dummy;


CREATE TABLE items (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);


CREATE TABLE item_changes (
    change_id INT PRIMARY KEY AUTO_INCREMENT,
    item_id INT,
    change_type VARCHAR(10),
    change_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (item_id) REFERENCES items(id)
);

insert into items
values
(1,"item",50.90);

select * from items;
select * from item_changes;
########################################################
#trigger 
Delimiter $$
CREATE TRIGGER update_items_trigger
AFTER UPDATE
ON items
for each row
begin 
	insert into item_changes(item_id,change_type)
    values(new.id,"update");
end $$
delimiter ;


update items set price = 60.00 where id= 1;