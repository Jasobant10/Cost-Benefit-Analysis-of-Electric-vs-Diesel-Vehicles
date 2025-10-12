

-- Validate and Rank by Upfront Cost
-- Which vehicle has the highest initial investment before subsidies?
SELECT
    vehicle_name,
    ex_showroom_price,
    charger_cost,
    (ex_showroom_price + charger_cost) AS total_upfront_cost
FROM
    vehicles
ORDER BY
    total_upfront_cost DESC;

-- Calculate Key Annual Cost Components
-- What are the fixed, non-fuel related running costs for each vehicle per year?
SELECT
    vehicle_name,
    (ex_showroom_price * annual_maintenance_rate) AS annual_maintenance_cost,
    annual_tyre_cost
FROM
    vehicles
ORDER BY
    annual_maintenance_cost DESC;

-- The Main Analysis - Total Annual Operating Cost
-- If we run each truck for 45,000 km in one year, what is the total bill for fuel, maintenance, and tyres?
-- This query calculates the total cost to run each vehicle for one year
SELECT
    v.vehicle_name,

    -- Calculate Fuel/Energy cost with different logic for Diesel vs. EV
    CASE
        WHEN v.vehicle_name = 'Diesel Tipper'
        THEN (SELECT value FROM global_assumptions WHERE assumption_name = 'Annual_Distance_KM') / v.efficiency * (SELECT value FROM global_assumptions WHERE assumption_name = 'Diesel_Price_Per_Liter')
        ELSE (SELECT value FROM global_assumptions WHERE assumption_name = 'Annual_Distance_KM') * v.efficiency * (SELECT value FROM global_assumptions WHERE assumption_name = 'Electricity_Price_Per_kWh')
    END AS annual_fuel_energy_cost,

    -- Calculate Maintenance cost
    (v.ex_showroom_price * v.annual_maintenance_rate) AS annual_maintenance_cost,

    -- Fixed Tyre Cost
    v.annual_tyre_cost,

    -- Calculate the Grand Total Annual Operating Cost
    (CASE
        WHEN v.vehicle_name = 'Diesel Tipper'
        THEN (SELECT value FROM global_assumptions WHERE assumption_name = 'Annual_Distance_KM') / v.efficiency * (SELECT value FROM global_assumptions WHERE assumption_name = 'Diesel_Price_Per_Liter')
        ELSE (SELECT value FROM global_assumptions WHERE assumption_name = 'Annual_Distance_KM') * v.efficiency * (SELECT value FROM global_assumptions WHERE assumption_name = 'Electricity_Price_Per_kWh')
    END) + (v.ex_showroom_price * v.annual_maintenance_rate) + v.annual_tyre_cost AS total_annual_operating_cost

FROM
    vehicles v
ORDER BY
    total_annual_operating_cost DESC;
