CREATE TABLE `customer` (
  `customer_id` SERIAL,
  `first_name` VARCHAR(100),
  `last_name` VARCHAR(100),
  `address` VARCHAR(100),
  `billing_info` VARCHAR(100),
  PRIMARY KEY (`customer_id`)
);

CREATE TABLE `order` (
  `order_id` SERIAL,
  `order_total` NUMBER(10,2),
  `ticket_id` integer,
  PRIMARY KEY (`order_id`)
);

CREATE TABLE `cart` (
  `customer_id` integer,
  `order_id` integer,
  `cart_id` SERIAL,
  PRIMARY KEY (`cart_id`)
);

CREATE TABLE `ticket` (
  `ticket_id` SERIAL,
  `movie_id` integer,
  `price_id` NUMBER(8,2),
  `concession_id` integer,
  PRIMARY KEY (`ticket_id`),
  FOREIGN KEY (`movie_id`) REFERENCES `order`(`ticket_id`)
);

CREATE TABLE `concessions` (
  `concession_id` SERIAL,
  `item_id` integer,
  `itemcost_id` NUMBER(10,2),
  `ticket_id` integer,
  PRIMARY KEY (`concession_id`),
  FOREIGN KEY (`ticket_id`) REFERENCES `ticket`(`movie_id`)
);

CREATE TABLE `movie` (
  `movie_id` SERIAL,
  `length_id` decimal,
  `rating_id` integer,
  `moviename_id` VARCHAR(100),
  `seat_id` integer,
  PRIMARY KEY (`movie_id`)
);

CREATE TABLE `seat` (
  `seat_id` SERIAL,
  `row_id` NUMBER(8,2),
  `theatre_id` integer,
  `movie_id` integer,
  PRIMARY KEY (`seat_id`)
);

