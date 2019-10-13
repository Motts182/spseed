CREATE TABLE
    product
    (
        id BIGINT NOT NULL,
        name VARCHAR,
        seller VARCHAR,
        email VARCHAR,
        quantity VARCHAR,
        stock VARCHAR,
        price NUMERIC,
        dateEnter DATETIME,
        PRIMARY KEY (id)
    );

CREATE TABLE
    hibernate_sequence
    (
        next_val BIGINT
    );

INSERT INTO product (id, name, seller, email, quantity, stock, price, dateEnter)
  VALUES (1, 'MSI Dominator', 'Jeff Miller', 'samantha@bikes.com',  '100','99', '1100', 4419619200000);
INSERT INTO product (id, name, seller, email, quantity, stock, price, dateEnter)
  VALUES (2, 'AlienWar', 'Marina Bell', 'MarinaB@product.com.uk',  '50','49', '990', 4419619200000);
INSERT INTO product (id, name, seller, email, quantity, stock, price, dateEnter)
  VALUES (3, 'Razer Blade Pro', 'Dave Warren', 'dave@razerzone.com',  '10','9', '2350', 4419619200000);


INSERT INTO hibernate_sequence (next_val) VALUES (4);