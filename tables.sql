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
