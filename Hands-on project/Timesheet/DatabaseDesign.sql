CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    EmployeeName NVARCHAR(100) NOT NULL
);
CREATE TABLE Clients (
    ClientID INT PRIMARY KEY IDENTITY(1,1),
    ClientName NVARCHAR(255) NOT NULL
);
CREATE TABLE Positions (
    PositionID INT PRIMARY KEY IDENTITY(1,1),
    PositionName NVARCHAR(100) NOT NULL
);
CREATE TABLE Timesheets (
    TimesheetID INT PRIMARY KEY IDENTITY(1,1),
    EmployeeID INT FOREIGN KEY REFERENCES Employees(EmployeeID),
    ClientID INT FOREIGN KEY REFERENCES Clients(ClientID),
    PositionID INT FOREIGN KEY REFERENCES Positions(PositionID),
    WeekStartDate DATE NOT NULL,
    TotalHours DECIMAL(5,2),
    ProcessedFileID INT NULL -- FK to ProcessedFiles
);
CREATE TABLE TimesheetEntries (
    EntryID INT PRIMARY KEY IDENTITY(1,1),
    TimesheetID INT FOREIGN KEY REFERENCES Timesheets(TimesheetID),
    WorkDate DATE NOT NULL,
    HoursWorked DECIMAL(4,2) NOT NULL
);
CREATE TABLE ProcessedFiles (
    FileID INT PRIMARY KEY IDENTITY(1,1),
    FileName NVARCHAR(500) NOT NULL,
    SheetName NVARCHAR(255) NOT NULL,
    ProcessedDate DATETIME NOT NULL DEFAULT GETDATE(),
    Status NVARCHAR(50) NOT NULL,
    Row_Count INT NOT NULL
);
CREATE TABLE Task (
    TaskID INT PRIMARY KEY IDENTITY(1,1),
    TaskName NVARCHAR(255) NOT NULL,
    IsBillable BIT NOT NULL DEFAULT 1
);
ALTER TABLE TimesheetEntries
ADD 
    TaskDescription NVARCHAR(255) NULL,
    IsBillable BIT NOT NULL DEFAULT 1;
ALTER TABLE TimesheetEntries
ADD TaskID INT FOREIGN KEY REFERENCES Task(TaskID);

ALTER TABLE Timesheets
ADD 
    TotalBillableHours DECIMAL(5,2) NULL,
    TotalNonBillableHours DECIMAL(5,2) NULL;
CREATE TABLE Client (
    ClientID INT PRIMARY KEY IDENTITY(1,1),
    ClientName NVARCHAR(255) NOT NULL UNIQUE
);
ALTER TABLE Employees ALTER COLUMN EmployeeName NVARCHAR(255);
aLTER TABLE Positions
ALTER COLUMN PositionName NVARCHAR(255);
