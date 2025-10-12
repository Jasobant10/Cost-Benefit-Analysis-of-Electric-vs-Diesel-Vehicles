

-- Create and switch to the new database
CREATE DATABASE TCO_Analysis;
GO
USE TCO_Analysis;
GO

-- Create the two tables
CREATE TABLE vehicles (
    vehicle_id INT PRIMARY KEY IDENTITY,
    vehicle_name NVARCHAR(255),
    ex_showroom_price DECIMAL(18, 2),
    charger_cost DECIMAL(18, 2),
    road_tax_rate DECIMAL(5, 4),
    battery_capacity_kwh INT,
    efficiency DECIMAL(5, 2),
    annual_maintenance_rate DECIMAL(5, 4),
    annual_tyre_cost DECIMAL(18, 2),
    resale_rate DECIMAL(5, 4)
);

CREATE TABLE global_assumptions (
    assumption_id INT PRIMARY KEY IDENTITY,
    assumption_name NVARCHAR(255),
    value DECIMAL(18, 4)
);
GO

-- Insert all data into the tables
INSERT INTO vehicles (
    vehicle_name, ex_showroom_price, charger_cost, road_tax_rate,
    battery_capacity_kwh, efficiency, annual_maintenance_rate,
    annual_tyre_cost, resale_rate
) VALUES
('Diesel Tipper', 5500000, 0, 0.0800, 0, 1.50, 0.0400, 160000, 0.2000),
('Propel 470 MEV', 19000000, 1000000, 0.0000, 256, 1.80, 0.0150, 160000, 0.2500),
('Olectra Meghaetron', 15500000, 1000000, 0.0000, 210, 1.60, 0.0150, 160000, 0.2500),
('Tata Prima E.28k', 16000000, 1000000, 0.0000, 210, 1.65, 0.0150, 160000, 0.2500);

INSERT INTO global_assumptions (assumption_name, value) VALUES
('TCO_Period_Years', 5),
('Annual_Distance_KM', 45000),
('Diesel_Price_Per_Liter', 98.66),
('Electricity_Price_Per_kWh', 8.50),
('FAME_Subsidy_Per_kWh', 10000),
('FAME_Subsidy_Cap_Rate', 0.15),
('State_Subsidy_Cap', 1000000),
('State_Subsidy_Rate', 0.15);

SELECT * FROM vehicles;
SELECT * FROM global_assumptions;