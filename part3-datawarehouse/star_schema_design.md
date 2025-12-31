# Star Schema Design Documentation  
## Part 3: Data Warehouse and Analytics

---

## Section 1: Schema Overview 

FlexiMart’s data warehouse is designed using a **star schema** to support efficient analysis of historical sales transactions. The schema consists of a central fact table that stores measurable sales data and multiple surrounding dimension tables that provide descriptive context.

### FACT TABLE: `fact_sales`

- **Grain:** One row per product per order line item  
- **Business Process:** Sales transactions  

#### Measures (Numeric Facts):
- `quantity_sold` – Number of units sold  
- `unit_price` – Price per unit at the time of sale  
- `discount_amount` – Discount applied to the order line  
- `total_amount` – Final sale amount  
  *(quantity_sold × unit_price − discount_amount)*  

#### Foreign Keys:
- `date_key` → `dim_date`  
- `product_key` → `dim_product`  
- `customer_key` → `dim_customer`  

---

### DIMENSION TABLE: `dim_date`

- **Purpose:** Enables time-based analysis such as daily, monthly, quarterly, and yearly trends  
- **Type:** Conformed dimension  

**Attributes:**
- `date_key` (PK) – Surrogate key in YYYYMMDD format  
- `full_date` – Actual calendar date  
- `day_of_week` – Monday, Tuesday, etc.  
- `month` – Numeric month (1–12)  
- `month_name` – January, February, etc.  
- `quarter` – Q1, Q2, Q3, Q4  
- `year` – Year value (e.g., 2023, 2024)  
- `is_weekend` – Boolean indicator for weekends  

---

### DIMENSION TABLE: `dim_product`

- **Purpose:** Stores descriptive attributes related to products sold  

**Attributes:**
- `product_key` (PK) – Surrogate key  
- `product_id` – Source system product identifier  
- `product_name` – Name of the product  
- `category` – High-level category (Electronics, Fashion, etc.)  
- `subcategory` – Detailed classification (Smartphones, Clothing, etc.)  
- `brand` – Product brand  

---

### DIMENSION TABLE: `dim_customer`

- **Purpose:** Stores descriptive customer information for sales analysis  

**Attributes:**
- `customer_key` (PK) – Surrogate key  
- `customer_id` – Source system customer identifier  
- `customer_name` – Full name of the customer  
- `email` – Customer email address  
- `city` – City of residence  
- `state` – State of residence  
- `country` – Country of residence  

---

## Section 2: Design Decisions 

The star schema is constructed at the **transaction line-item level** and each row in the fact table represents a single product within a sales order. This level of granularity was chosen to preserve the most information and allow for accurate analysis of specific product sales, consumer behavior, and pricing fluctuations. It also permits customized reporting without compromising transactional data.

To improve performance and maintain data consistency, **surrogate keys** are used in place of natural keys. Natural keys from source systems may change or be reused over time, whereas surrogate keys are reliable and ensure efficient joins across fact and dimension databases. Additionally, this approach enables historical tracking and facilitates the integration of data from multiple source systems.

The design effectively supports roll-up and drill-down operations. Analysts can wrap up specific product sales into summaries at the category or brand level using the product dimension, while they can dig down from annual sales to monthly or daily performance using the date dimension. This structure enables quick, scalable, and easy-to-use analytical queries.


---

## Section 3: Sample Data Flow 

### Source Transaction:
- Order ID: **101**  
- Customer: **John Doe**  
- Product: **Laptop**  
- Quantity: **2**  
- Unit Price: **50,000**  

---

### Representation in the Data Warehouse:

#### `fact_sales`
```text
{
  date_key: 20240115,
  product_key: 5,
  customer_key: 12,
  quantity_sold: 2,
  unit_price: 50000,
  total_amount: 100000
}

### DIMENSION TABLE: `dim_date`

{
  "date_key": 20240115,
  "full_date": "2024-01-15",
  "day_of_week": "Monday",
  "month": 1,
  "month_name": "January",
  "quarter": "Q1",
  "year": 2024,
  "is_weekend": false
}

### DIMENSION TABLE: `dim_product`

{
  "product_key": 5,
  "product_id": "P005",
  "product_name": "Laptop",
  "category": "Electronics",
  "subcategory": "Computers",
  "brand": "Dell"
}

### DIMENSION TABLE: `dim_customer`

{
  "customer_key": 12,
  "customer_id": "C012",
  "customer_name": "John Doe",
  "email": "john.doe@email.com",
  "city": "Mumbai",
  "state": "Maharashtra",
  "country": "India"
}








