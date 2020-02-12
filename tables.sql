CREATE TABLE `Braden_W1095701`.`Restaurants` (
   `id` INT NOT NULL PRIMARY KEY auto_increment,
   `Restaurant` varchar(16) not null
 );

CREATE TABLE `Braden_W1095701`.`Reviews` (
   `id` INT NOT NULL PRIMARY KEY auto_increment,
   `restaurant_id` int not null,
   `rating` int(1) not null,
   `review` text not null,
   FOREIGN KEY (restaurant_id) REFERENCES Restaurants (id)
 );

 INSERT INTO `Braden_W1095701`.`Restaurants` (`Restaurant`) VALUES ('Pizza Pizza');
 INSERT INTO `Braden_W1095701`.`Restaurants` (`Restaurant`) VALUES ('Boston Pizza');
 INSERT INTO `Braden_W1095701`.`Restaurants` (`Restaurant`) VALUES ('Mustangs');
 INSERT INTO `Braden_W1095701`.`Restaurants` (`Restaurant`) VALUES ('TFC');
 INSERT INTO `Braden_W1095701`.`Restaurants` (`Restaurant`) VALUES ('TLC');
 INSERT INTO `Braden_W1095701`.`Restaurants` (`Restaurant`) VALUES ('Oswmows');
 INSERT INTO `Braden_W1095701`.`Restaurants` (`Restaurant`) VALUES ('Smokes Poutine');
 INSERT INTO `Braden_W1095701`.`Restaurants` (`Restaurant`) VALUES ('KFC');
 INSERT INTO `Braden_W1095701`.`Restaurants` (`Restaurant`) VALUES ('McDonalds');
 INSERT INTO `Braden_W1095701`.`Restaurants` (`Restaurant`) VALUES ('Tim Hortons');
