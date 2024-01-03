-- Query: Retrieve all farmers
SELECT * FROM farmers;

-- Query: Retrieve coffee lots with a quality score above 90
SELECT * FROM coffee_lots WHERE quality_score > 90;

-- View: Display high-quality coffee lots
CREATE VIEW high_quality_coffee AS
SELECT * FROM coffee_lots WHERE quality_score > 90;

-- Query: Retrieve export orders by destination country
SELECT * FROM export_orders WHERE destination_country = 'Country_name';
