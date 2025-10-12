SELECT
    v.*, -- Selects all columns from the vehicles table
    ga.* -- Selects all columns from the global_assumptions table
FROM
    vehicles AS v
CROSS JOIN
    global_assumptions AS ga;