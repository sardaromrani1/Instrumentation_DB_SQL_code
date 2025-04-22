-- Create a database
--CREATE DATABASE Instrumentation_DB_Copilot1;

-- Use the database
USE Instrumentation_DB_Copilot1;

-- Create a table for Instrumentation Devices
CREATE TABLE InstrumentationDevices (
    DeviceID INT PRIMARY KEY IDENTITY(1, 1),
    DeviceName VARCHAR(100) NOT NULL,
    SerialNumber VARCHAR(50) NOT NULL UNIQUE,
    Location VARCHAR(100),
    MeasurementRange VARCHAR(50),
    Accuracy VARCHAR(50),
    DeviceType VARCHAR(50),
    OutputSignal VARCHAR(50),
    Materials VARCHAR(50),
    Application VARCHAR(100),
    OperatingParameters VARCHAR(100),
    Certification VARCHAR(50),
    MaintenanceSchedule VARCHAR(100),
    ServiceHistory TEXT,
    CalibrationData TEXT,
    WarrantyInfo VARCHAR(100),
    FailureModes TEXT,
    DiagnosticsCapability VARCHAR(50),
    ManufacturerName VARCHAR(100),
    SupplierDetails VARCHAR(100),
    PurchaseDate DATE,
    ProtocolSupport VARCHAR(50),
    Compatibility VARCHAR(100),
    PowerRequirements VARCHAR(50),
    HistoricalDataLogging BIT DEFAULT 0
	
);

-- Create a table for Maintenance Records
CREATE TABLE MaintenanceRecords (
    RecordID INT PRIMARY KEY IDENTITY(1, 1),
    DeviceID INT NOT NULL,
    MaintenanceDate DATE NOT NULL,
    TechnicianName VARCHAR(100),
    MaintenanceDetails TEXT,
    FOREIGN KEY (DeviceID) REFERENCES InstrumentationDevices(DeviceID)
);

-- Create a table for Calibration Records
CREATE TABLE CalibrationRecords (
    CalibrationID INT PRIMARY KEY IDENTITY(1, 1),
    DeviceID INT NOT NULL,
    CalibrationDate DATE NOT NULL,
    CalibrationDetails TEXT,
    FOREIGN KEY (DeviceID) REFERENCES InstrumentationDevices(DeviceID)
);

-- Create a table for Suppliers
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY IDENTITY(1, 1),
    SupplierName VARCHAR(100) NOT NULL,
    ContactInfo VARCHAR(100),
    Address VARCHAR(100)
);

-- Insert Supplier and Manufacturer references in the Instrumentation Devices table
ALTER TABLE InstrumentationDevices
ADD CONSTRAINT FK_Supplier FOREIGN KEY (SupplierDetails) REFERENCES Suppliers(SupplierName);

-- Example Query for inserting a device
INSERT INTO InstrumentationDevices (
    DeviceName, SerialNumber, Location, MeasurementRange, Accuracy, DeviceType, OutputSignal, 
    Materials, Application, OperatingParameters, Certification, MaintenanceSchedule, ServiceHistory, 
    CalibrationData, WarrantyInfo, FailureModes, DiagnosticsCapability, ManufacturerName, SupplierDetails, 
    PurchaseDate, ProtocolSupport, Compatibility, PowerRequirements, HistoricalDataLogging
) VALUES (
    'Flow Meter', 'FM12345', 'Zone 1', '0-100 m3/h', '0.5%', 'Electronic', '4-20 mA', 
    'Stainless Steel', 'Flow Monitoring', 'Temperature: -40°C to 80°C', 'ISO 9001', 'Monthly', 
    'Last maintenance: Jan 2025', 'Calibrated: Feb 2025', '2 years', 'Failure mode: Signal loss', 
    'Yes', 'Instrumentation Co.', 'Supplier A', '2025-01-15', 'Modbus', 'SCADA system', '24V DC', 1
);
