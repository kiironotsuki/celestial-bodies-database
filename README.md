# celestial-bodies-database
# 🌌 Celestial Bodies Database

A relational database model of the universe designed for the **freeCodeCamp Relational Database Certification**. This project demonstrates core competencies in **SQL**, **Schema Design**, and **Data Integrity**.

## 🎯 Project Objectives
The primary goal was to create a functional PostgreSQL database that accurately represents the hierarchical nature of celestial bodies while meeting strict normalization and constraint requirements.

## 🏗️ Database Architecture
The database utilizes a **Hierarchical Chain** structure. This ensures that data remains logically consistent—for example, a moon cannot exist in the database without being linked to a parent planet.

### Entity Relationship Diagram (ERD)
```mermaid
erDiagram
    GALAXY ||--o{ STAR : contains
    STAR ||--o{ PLANET : orbits
    PLANET ||--o{ MOON : orbits
    GALAXY ||--o{ COMET : contains
