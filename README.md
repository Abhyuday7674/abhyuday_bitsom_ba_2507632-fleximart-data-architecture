# FlexiMart Data Architecture Project

**Student Name:** Abhyuday Mishra  
**Student ID:** [Your Student ID]  
**Email:** [abhyudaymishra7674@gmail.com]  
**Date:** 31 December 2025

---

## Project Overview

The FlexiMart Data Architecture Project demonstrates an end-to-end data engineering workflow covering ETL processing, NoSQL data modeling, and data warehousing with OLAP analytics. The project transforms raw retail data into structured analytical models to support business intelligence and decision-making using SQL and MongoDB.

The implementation is divided into three parts: relational ETL and data quality handling, NoSQL analysis using MongoDB, and a star-schema-based data warehouse with analytical queries.

---

## Repository Structure
├── part1-database-etl/
│   ├── etl_pipeline.py
│   ├── schema_documentation.md
│   ├── business_queries.sql
│   └── data_quality_report.txt
├── part2-nosql/
│   ├── nosql_analysis.md
│   ├── mongodb_operations.js
│   └── products_catalog.json
├── part3-datawarehouse/
│   ├── star_schema_design.md
│   ├── warehouse_schema.sql
│   ├── warehouse_data.sql
│   └── analytics_queries.sql
└── README.md

---

## Technologies Used

- **Python 3.x** – ETL pipeline development  
- **pandas** – Data cleaning and transformation  
- **MySQL 8.0** – Relational database and data warehouse  
- **MongoDB 6.0** – NoSQL document-based data modeling  
- **SQL** – Data definition, manipulation, and OLAP analytics  

---

## Setup Instructions

### Database Setup (MySQL)

```bash
# Create operational and data warehouse databases
mysql -u root -p -e "CREATE DATABASE fleximart;"
mysql -u root -p -e "CREATE DATABASE fleximart_dw;"

---



