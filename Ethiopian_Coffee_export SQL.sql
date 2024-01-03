CREATE TABLE farmers (
    farmer_id SERIAL PRIMARY KEY,
    farmer_name TEXT NOT NULL,
    region TEXT,
    contact_number TEXT
);
CREATE TABLE coffee_lots (
    lot_id SERIAL PRIMARY KEY,
    farmer_id INT REFERENCES farmers(farmer_id) ON DELETE CASCADE,
    lot_name TEXT NOT NULL,
    grade TEXT,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    harvest_date DATE,
    quality_score INT
);
CREATE TABLE export_orders (
    order_id SERIAL PRIMARY KEY,
    lot_id INT REFERENCES coffee_lots(lot_id) ON DELETE CASCADE,
    destination_country TEXT NOT NULL,
    shipping_date DATE,
    status TEXT DEFAULT 'In Transit'
);

INSERT INTO farmers (farmer_name, region, contact_number) 
VALUES 
('Abayneh Sharew', 'Harar', '+251-912-669419'),
('Endriyas Mamushet', 'Sidama', '+251-911-123456'),
('Semere Abate', 'Yirgacheffe', '+251-922-654321'),
('Medhanit Alemu', 'Gedeo', '+251-913-512439');
-- farmers from different regions

INSERT INTO coffee_lots (farmer_id, lot_name, grade, quantity, price, harvest_date, quality_score) 
VALUES 
(1, 'Sidama Grade A', 'Grade A', 2000, 4800.00, '2023-09-05', 96),
(2, 'Sidama Grade A', 'Grade A', 2000, 4500.00, '2023-09-10', 90),
(3, 'Yirgacheffe Special', 'Specialty', 1500, 5200.00, '2023-09-15', 95),
(4, 'Gedeo Select', 'Select', 1800, 4000.00, '2023-09-20', 88);
-- coffee lots from different farmers and regions

INSERT INTO export_orders (lot_id, destination_country, shipping_date, status) 
VALUES 
(1, 'Canada', '2023-12-25', 'In Transit'),
(2, 'USA', '2023-12-26', 'In Transit'),
(3, 'Europe', '2023-12-27', 'In Transit'),
(4, 'Asia', '2023-12-28', 'In Transit');
-- export orders with destinations and shipping dates





