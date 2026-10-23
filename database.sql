CREATE DATABASE maintenance_system;
CREATE TABLE machine_master (
    id INT AUTO_INCREMENT PRIMARY KEY,
    machine_code VARCHAR(20),
    machine_name VARCHAR(100),
    department VARCHAR(50),
    status VARCHAR(20)
);
CREATE TABLE operator_master (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id VARCHAR(20),
    operator_name VARCHAR(100),
    department VARCHAR(50),
    username VARCHAR(50),
    password VARCHAR(100),
    status VARCHAR(20)
);
CREATE TABLE technician_master (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tech_id VARCHAR(20),
    technician_name VARCHAR(100),
    skill VARCHAR(50),
    department VARCHAR(50),
    status VARCHAR(20)
);
CREATE TABLE problem_master (
    id INT AUTO_INCREMENT PRIMARY KEY,
    problem_code VARCHAR(20),
    problem_name VARCHAR(100),
    department VARCHAR(50),
    status VARCHAR(20)
);
CREATE TABLE lpc_breakdown (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ticket_no VARCHAR(30),
    breakdown_date DATE,
    shift_name VARCHAR(10),
    machine_name VARCHAR(100),
    applicator_no VARCHAR(50),
    terminal_part_no VARCHAR(50),
    problem_type VARCHAR(100),
    description TEXT,
    status VARCHAR(20)
);
CREATE TABLE assy_breakdown (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ticket_no VARCHAR(30),
    breakdown_date DATE,
    shift_name VARCHAR(10),
    machine_name VARCHAR(100),
    problem_type VARCHAR(100),
    description TEXT,
    status VARCHAR(20)
);
CREATE TABLE user_master (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id VARCHAR(20),
    username VARCHAR(50),
    password VARCHAR(100),
    role VARCHAR(50),
    status VARCHAR(20)
);
CREATE TABLE maintenance_action (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ticket_no VARCHAR(30),
    technician_name VARCHAR(100),
    root_cause TEXT,
    corrective_action TEXT,
    start_time DATETIME,
    end_time DATETIME,
    status VARCHAR(20)
);
CREATE TABLE applicator_master (
    id INT AUTO_INCREMENT PRIMARY KEY,
    applicator_no VARCHAR(50),
    description VARCHAR(200),
    status VARCHAR(20)
);

CREATE TABLE terminal_master (
    id INT AUTO_INCREMENT PRIMARY KEY,
    terminal_part_no VARCHAR(50),
    description VARCHAR(200),
    status VARCHAR(20)
);
CREATE TABLE lpc_breakdown (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ticket_no VARCHAR(30),
    breakdown_date DATE,
    shift_name VARCHAR(10),
    operator_name VARCHAR(100),
    machine_name VARCHAR(100),
    applicator_no VARCHAR(50),
    terminal_part_no VARCHAR(50),
    problem_type VARCHAR(100),
    description TEXT,
    technician_name VARCHAR(100),
    status VARCHAR(20),
    created_at DATETIME
);
CREATE TABLE assy_breakdown (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ticket_no VARCHAR(30),
    breakdown_date DATE,
    shift_name VARCHAR(10),
    operator_name VARCHAR(100),
    machine_name VARCHAR(100),
    problem_type VARCHAR(100),
    description TEXT,
    technician_name VARCHAR(100),
    status VARCHAR(20),
    created_at DATETIME
);
CREATE TABLE spare_parts_master (
    id INT AUTO_INCREMENT PRIMARY KEY,
    part_no VARCHAR(50),
    part_name VARCHAR(200),
    machine_name VARCHAR(100),
    current_stock INT,
    min_stock INT,
    status VARCHAR(20)
);
CREATE TABLE stock_transaction (
    id INT AUTO_INCREMENT PRIMARY KEY,
    part_no VARCHAR(50),
    transaction_type VARCHAR(20),
    qty INT,
    transaction_date DATETIME
);
CREATE TABLE rca_master (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ticket_no VARCHAR(30),
    machine_name VARCHAR(100),
    problem_name VARCHAR(200),
    root_cause TEXT,
    corrective_action TEXT,
    countermeasure TEXT,
    status VARCHAR(20)
);
