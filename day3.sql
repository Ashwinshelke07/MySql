DROP TABLE orders;
CREATE TABLE orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  order_name VARCHAR(200) NOT NULL,
  product_id INT NOT NULL,
  product_email VARCHAR(300) UNIQUE NOT NULL
);

INSERT INTO orders (order_name, product_id, product_email)
VALUES
('ASH', 1, 'ash@gmail.com'),
('ISHA', 2, 'isha@gmail.com');

