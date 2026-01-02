# Part 3: Data Warehouse Design and Analytics  
**FlexiMart Data Architecture Project**

---

## 1. Introduction

This document describes the design and implementation of the data warehouse component of the FlexiMart Data Architecture Project. The objective of Part 3 is to transform operational retail data into a dimensional model that supports efficient analytical querying and business intelligence reporting.

---

## 2. Objectives

The key objectives of this part of the project are:

- Design a data warehouse using a star schema
- Separate transactional processing from analytical workloads
- Enable efficient querying for sales and performance analysis
- Implement analytical SQL queries for decision support

---

## 3. Data Warehouse Design

### 3.1 Dimensional Modeling Approach

A **star schema** was selected for the data warehouse due to its simplicity, performance efficiency, and suitability for analytical queries. The schema consists of one central fact table connected to multiple dimension tables.

This approach supports:
- Fast aggregations
- Simple joins
- Clear separation of facts and descriptive attributes

---

### 3.2 Schema Components

#### Fact Table
- **Fact_Sales**
  - Stores measurable business metrics such as sales amount and quantity
  - References all dimension tables using foreign keys

#### Dimension Tables
- **Dim_Customer** – Customer details and attributes  
- **Dim_Product** – Product information and categories  
- **Dim_Time** – Date-related attributes (day, month, year)  

The schema design is documented in `star_schema_design.md`.

---

## 4. Implementation

### 4.1 Warehouse Schema Creation

The warehouse schema was implemented using SQL and created in a dedicated database (`fleximart_dw`). Table definitions, primary keys, and foreign key relationships were defined in:

- `warehouse_schema.sql`

----

### 4.2 Data Loading

Transformed and cleaned data from the operational database was loaded into the data warehouse tables. The data loading process ensures referential integrity between fact and dimension tables.

Data population scripts are provided in:

- `warehouse_data.sql`

---

## 5. Analytical Queries

A set of analytical SQL queries was developed to support business intelligence use cases, including:

- Total sales by product and category
- Revenue analysis over time
- Customer purchasing trends
- Monthly and yearly sales performance

These queries are implemented in:

- `analytics_queries.sql`

The queries demonstrate how the star schema enables efficient aggregation and reporting.

---

## 6. Technologies Used

- MySQL 8.0 / PostgreSQL 14  
- SQL (DDL and DML)  
- Dimensional modeling techniques  

---
## 📁 Folder Structure (Part 3)

```
part3-datawarehouse/
├── star_schema_design.md
├── warehouse_schema.sql
├── warehouse_data.sql
└── analytics_queries.sql
```
---

## 8. Setup and Execution

```bash
# Create data warehouse database
mysql -u root -p -e "CREATE DATABASE fleximart_dw;"

# Create warehouse schema
mysql -u root -p fleximart_dw < warehouse_schema.sql

# Load data into warehouse
mysql -u root -p fleximart_dw < warehouse_data.sql

# Run analytical queries
mysql -u root -p fleximart_dw < analytics_queries.sql


---

## 9. Conclusion

Part 3 successfully implements a data warehouse for the FlexiMart system using a star schema. The warehouse supports efficient analytical querying and provides meaningful business insights, completing the end-to-end data architecture solution.
