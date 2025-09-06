# 🚛 Cost-Benefit Analysis of Electric vs Diesel Vehicles

## 📖 Overview

This project provides a comprehensive **5-year Total Cost of Ownership (TCO)** analysis comparing **Electric Vehicles (EVs) vs. Diesel Vehicles** for commercial truck fleets. The analysis evaluates key financial metrics including **purchase cost, fuel/electricity expenses, maintenance, government subsidies, and resale value** to deliver data-driven recommendations for sustainable and cost-effective fleet management.

This project is designed to showcase an end-to-end data analytics workflow, from data cleaning and modeling in Python to interactive dashboarding in Tableau/Power BI.

## 🎯 Objectives

-   **Compare** the 5-year Total Cost of Ownership (TCO) between comparable EV and Diesel truck models.
-   **Identify** the breakeven point where EV adoption becomes the more financially viable option.
-   **Conduct** scenario and sensitivity analysis to understand the impact of fluctuating fuel prices and varying government subsidies.
-   **Provide** actionable recommendations for fleet managers to support cost reduction and sustainability goals.

---

## 🛠 Tools & Technologies

-   **Programming:** Python (Pandas, NumPy, Matplotlib, Seaborn)
-   **Databases:** SQL (for data storage and querying)
-   **Visualization:** Tableau / Power BI (for interactive dashboards), Excel
-   **Workflow & Collaboration:** Jupyter Notebooks, Git & GitHub

---

## 📊 Methodology

1.  **Data Preparation:** Raw data from multiple sources (Excel, CSV) was collected, cleaned, and standardized using Python (Pandas). This involved handling missing values, standardizing units, and structuring the data for analysis. The cleaned dataset was stored in a SQL database.
2.  **TCO Modeling:** A 5-year TCO model was developed using the following formula:
    `TCO = Purchase Cost + (Annual Distance × Fuel Cost/km × 5) + (Maintenance Costs × 5) - Subsidies - Resale Value`
3.  **Exploratory Data Analysis (EDA):** Key cost drivers were visualized using Matplotlib and Seaborn to compare trends, distributions, and correlations between EV and Diesel vehicle costs.
4.  **Sensitivity Analysis:** The TCO model was tested against different scenarios, such as a ±20% fluctuation in fuel prices and the removal or addition of subsidies, to assess the robustness of the findings.
5.  **Dashboarding:** An interactive dashboard was created in Tableau/Power BI to present the findings, allowing users to compare TCO, view cost breakdowns, and explore different scenarios dynamically.

---

## 📈 Results & Key Insights

-   **Breakeven Point:** EVs typically become more cost-effective than diesel counterparts after **Year 3** of operation, primarily due to lower fuel and maintenance costs.
-   **Impact of Subsidies:** Government subsidies can shorten the breakeven period by an average of **12-18 months**, making the initial investment in EVs more attractive.
-   **Fuel Price Volatility:** The analysis shows that a **20% increase in diesel prices** makes EVs the cheaper option from Year 2 onwards, highlighting the financial stability offered by EVs against volatile fossil fuel markets.
-   **Recommendation:** For fleets with high annual mileage (> 50,000 km/year), immediate investment in EVs is financially sound. For lower-mileage fleets, adoption is recommended if subsidies are available.

---

## 📁 Project Structure
