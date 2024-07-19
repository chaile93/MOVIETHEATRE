-- Insertion of data into Database Tables

-- Insert for customer table
INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
) VALUES(
	1,
	'Joe',
	'Shmo',
	'333 Big st Miami,FL 34430',
	'4242-4242-4242-4242 623 05/24'
);

-- Insert for order table
INSERT INTO order(
	order_id,
	order_total,
	ticket_id
) VALUES(
	1,
	32.00,
	1
);

-- Insert for cart table
INSERT INTO cart(
	customer_id,
	cart_id,
	order_id
) VALUES(
	1,
	1,
	1
);

-- Insert for tcket table
INSERT INTO ticket(
	ticket_id,
	movie_id,
	price_id,
	concession_id
) VALUES(
	1,
	1,
	32.00,
	1
);

-- Insert for concessions table
INSERT INTO concessions(
	concession_id,
	itemcost_id,
	item_id,
	ticket_id
) VALUES(
	1,
	12.00,
	1,
	1
);

-- Insert for movie table
INSERT INTO movie(
	movie_id,
	length_total,
	rating_id,
	moviename_id
	seat_id
) VALUES(
	1,
	1.3,
	4,
	'SPIDERS ON A PLANE',
	3	
);

-- Insert for seat table
INSERT INTO seat(
	seat_id,
	row_id,
	theatre_id,
	movie_id
) VALUES(
	1,
	7,
	1,
	1
);