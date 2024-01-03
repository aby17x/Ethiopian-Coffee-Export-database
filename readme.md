# Ethiopian Coffee Export Database

## Overview:
This database manages coffee farmers, their lots, and export orders.

## Tables:
- `farmers`: Contains farmer details (name, region, contact number).
- `coffee_lots`: Stores information about coffee lots (name, grade, quantity, price, harvest date, quality score).
- `export_orders`: Manages export orders (destination country, shipping date, status).

## Usage:
- To view all farmers: `SELECT * FROM farmers;`
- To query high-quality coffee lots: `SELECT * FROM coffee_lots WHERE quality_score > 90;`

## How to Update:
- To add a new farmer, insert data into the `farmers` table.
- For any updates or modifications, use appropriate SQL queries on relevant tables.

For inquiries or support, contact abaysha17@gmail.com
