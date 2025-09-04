# DBML (Database Markup Language) Documentation

## Table of Contents
1. [Introduction](#introduction)
2. [Getting Started](#getting-started)
3. [Table Definition](#table-definition)
4. [Column Definition](#column-definition)
5. [Indexes](#indexes)
6. [Relationships](#relationships)
7. [Enums](#enums)
8. [Table Groups](#table-groups)
9. [Refs](#refs)
10. [Table Settings](#table-settings)
11. [Project Settings](#project-settings)
12. [Examples](#examples)
13. [Best Practices](#best-practices)

## Introduction

DBML (Database Markup Language) is an open-source DSL language designed to define and document database schemas and structures. It is designed to be simple, readable and highly maintainable.

### Key Features
- **Simple and readable**: DBML uses a clean, intuitive syntax
- **Database agnostic**: Works with any database system
- **Visual representation**: Can be rendered as visual diagrams
- **Documentation**: Self-documenting database schemas
- **Version control friendly**: Text-based format works well with Git

## Getting Started

### Basic Syntax
DBML uses a simple syntax where tables are defined using square brackets `[]` and columns are defined using backticks.

### Example
```dbml
Table users {
  id integer [primary key]
  username varchar
  email varchar
  created_at timestamp
}
```

## Table Definition

### Basic Table Structure
```dbml
Table table_name {
  column_name column_type [column_settings]
}
```

### Table Names
- Must be unique within the database
- Can contain letters, numbers, and underscores
- Case-sensitive
- Examples: `users`, `user_profiles`, `order_items`

### Table Settings
```dbml
Table users {
  // table settings
  Note: 'This is a user table'
  
  // columns
  id integer [primary key]
  username varchar
}
```

## Column Definition

### Basic Column Syntax
```dbml
column_name column_type [column_settings]
```

### Column Types

#### Numeric Types
- `integer` - Whole numbers
- `number` - Decimal numbers
- `numeric` - Exact numeric values
- `float` - Floating point numbers
- `double` - Double precision floating point

#### String Types
- `varchar` - Variable length strings
- `char` - Fixed length strings
- `text` - Long text
- `string` - Generic string type

#### Date/Time Types
- `date` - Date only
- `time` - Time only
- `datetime` - Date and time
- `timestamp` - Unix timestamp

#### Boolean Types
- `boolean` - True/false values

#### Binary Types
- `blob` - Binary large object
- `binary` - Binary data

### Column Settings

#### Primary Key
```dbml
id integer [primary key]
```

#### Not Null
```dbml
username varchar [not null]
```

#### Unique
```dbml
email varchar [unique]
```

#### Default Values
```dbml
created_at timestamp [default: `now()`]
status varchar [default: 'active']
```

#### Increment
```dbml
id integer [primary key, increment]
```

#### Note
```dbml
username varchar [note: 'User login name']
```

#### References
```dbml
user_id integer [ref: > users.id]
```

See relationship types for shortcut symbols used in refs (>, <, -, <>): [Show relationship types](#relationship-types)

#### Multiple Settings
```dbml
email varchar [unique, not null, note: 'User email address']
```

## Indexes

### Single Column Index
```dbml
Table users {
  id integer [primary key]
  username varchar
  email varchar
  
  indexes {
    username
    email
  }
}
```

### Multi-Column Index
```dbml
Table users {
  id integer [primary key]
  first_name varchar
  last_name varchar
  email varchar
  
  indexes {
    (first_name, last_name)
    email
  }
}
```

### Index with Name
```dbml
Table users {
  id integer [primary key]
  username varchar
  email varchar
  
  indexes {
    username [name: 'idx_username']
    email [name: 'idx_email']
  }
}
```

### Unique Index
```dbml
Table users {
  id integer [primary key]
  username varchar
  email varchar
  
  indexes {
    username [unique]
    email [unique]
  }
}
```

## Relationships

### One-to-Many Relationship
```dbml
Table users {
  id integer [primary key]
  username varchar
}

Table posts {
  id integer [primary key]
  title varchar
  user_id integer
}

Ref: posts.user_id > users.id
```

### Many-to-Many Relationship
```dbml
Table users {
  id integer [primary key]
  username varchar
}

Table roles {
  id integer [primary key]
  name varchar
}

Table user_roles {
  user_id integer
  role_id integer
}

Ref: user_roles.user_id > users.id
Ref: user_roles.role_id > roles.id
```

### One-to-One Relationship
```dbml
Table users {
  id integer [primary key]
  username varchar
}

Table profiles {
  id integer [primary key]
  user_id integer [unique]
  bio text
}

Ref: profiles.user_id - users.id
```

### Relationship Types
- `>` - One-to-many
- `<` - Many-to-one
- `-` - One-to-one
- `<>` - Many-to-many

### Relationship Settings
```dbml
Ref: posts.user_id > users.id [delete: cascade]
Ref: comments.post_id > posts.id [update: restrict]
```

## Enums

### Basic Enum
```dbml
Enum user_status {
  active
  inactive
  pending
}

Table users {
  id integer [primary key]
  username varchar
  status user_status
}
```

### Enum with Values
```dbml
Enum user_status {
  active [note: 'User is active']
  inactive [note: 'User is inactive']
  pending [note: 'User is pending approval']
}
```

## Table Groups

### Basic Table Group
```dbml
Table users {
  id integer [primary key]
  username varchar
}

Table profiles {
  id integer [primary key]
  user_id integer
  bio text
}

TableGroup user_management {
  users
  profiles
}
```

### Table Group with Note
```dbml
TableGroup user_management {
  users
  profiles
  
  Note: 'Tables related to user management'
}
```

## Refs

### Basic Ref
```dbml
Ref: posts.user_id > users.id
```

### Ref with Settings
```dbml
Ref: posts.user_id > users.id [delete: cascade, update: restrict]
```

### Ref Types
- `>` - One-to-many
- `<` - Many-to-one
- `-` - One-to-one
- `<>` - Many-to-many

### Ref Settings
- `delete: cascade` - Cascade delete
- `update: restrict` - Restrict update
- `delete: set null` - Set null on delete
- `update: cascade` - Cascade update

## Table Settings

### Note
```dbml
Table users {
  Note: 'This table stores user information'
  
  id integer [primary key]
  username varchar
}
```

### Table Group
```dbml
Table users {
  id integer [primary key]
  username varchar
}

TableGroup user_management {
  users
}
```

## Project Settings

### Basic Project Settings
```dbml
Project my_project {
  database_type: 'PostgreSQL'
  Note: 'This is my project'
}
```

### Available Settings
- `database_type` - Database type (PostgreSQL, MySQL, SQLite, etc.)
- `Note` - Project description

## Examples

### Complete Example
```dbml
Project ecommerce {
  database_type: 'PostgreSQL'
  Note: 'E-commerce database schema'
}

Enum order_status {
  pending
  processing
  shipped
  delivered
  cancelled
}

Table users {
  id integer [primary key, increment]
  username varchar [unique, not null]
  email varchar [unique, not null]
  password_hash varchar [not null]
  created_at timestamp [default: `now()`]
  updated_at timestamp [default: `now()`]
  
  Note: 'User accounts'
}

Table products {
  id integer [primary key, increment]
  name varchar [not null]
  description text
  price decimal [not null]
  stock_quantity integer [default: 0]
  created_at timestamp [default: `now()`]
  updated_at timestamp [default: `now()`]
  
  indexes {
    name
    price
  }
  
  Note: 'Product catalog'
}

Table orders {
  id integer [primary key, increment]
  user_id integer [not null]
  status order_status [default: 'pending']
  total_amount decimal [not null]
  created_at timestamp [default: `now()`]
  updated_at timestamp [default: `now()`]
  
  indexes {
    user_id
    status
    created_at
  }
  
  Note: 'Customer orders'
}

Table order_items {
  id integer [primary key, increment]
  order_id integer [not null]
  product_id integer [not null]
  quantity integer [not null]
  price decimal [not null]
  
  indexes {
    order_id
    product_id
  }
  
  Note: 'Order line items'
}

TableGroup user_management {
  users
  orders
  order_items
}

TableGroup product_management {
  products
  order_items
}

Ref: orders.user_id > users.id [delete: restrict]
Ref: order_items.order_id > orders.id [delete: cascade]
Ref: order_items.product_id > products.id [delete: restrict]
```

## Best Practices

### 1. Naming Conventions
- Use descriptive table and column names
- Use snake_case for table and column names
- Use plural names for tables (e.g., `users`, `orders`)
- Use singular names for columns (e.g., `id`, `name`)

### 2. Primary Keys
- Always define primary keys
- Use `increment` for auto-incrementing IDs
- Consider using UUIDs for distributed systems

### 3. Indexes
- Add indexes for frequently queried columns
- Use composite indexes for multi-column queries
- Don't over-index (affects write performance)

### 4. Relationships
- Use appropriate relationship types
- Consider cascade rules carefully
- Document relationship purposes

### 5. Documentation
- Add notes to tables and columns
- Use descriptive names
- Group related tables

### 6. Data Types
- Choose appropriate data types
- Consider data size and performance
- Use constraints (not null, unique) appropriately

### 7. Version Control
- Keep DBML files in version control
- Use meaningful commit messages
- Consider migration strategies

## Tools and Resources

### Online Tools
- [DBML Editor](https://dbml.dbdiagram.io/home) - Online DBML editor and visualizer
- [dbdiagram.io](https://dbdiagram.io) - Database diagram tool

### Command Line Tools
- `dbml-cli` - Command line tool for DBML
- `dbml2sql` - Convert DBML to SQL

### Integration
- VS Code extension for DBML syntax highlighting
- GitHub integration for rendering DBML files
- CI/CD integration for schema validation

## Conclusion

DBML provides a simple yet powerful way to define database schemas. Its readable syntax makes it easy to understand and maintain, while its visual representation capabilities help with documentation and communication.

By following the best practices outlined in this guide, you can create well-structured, maintainable database schemas that serve as both documentation and implementation guides for your projects.
