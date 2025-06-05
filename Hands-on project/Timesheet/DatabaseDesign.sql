CREATE TABLE Employee (
    ConsultantID INT IDENTITY(1,1) PRIMARY KEY,
    ConsultantName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NULL,
    CONSTRAINT UQ_ConsultantName UNIQUE (ConsultantName)
);
GO

-- Creating Clients table
CREATE TABLE Clients (
    ClientID INT IDENTITY(1,1) PRIMARY KEY,
    ClientName NVARCHAR(100) NOT NULL,
    CONSTRAINT UQ_ClientName UNIQUE (ClientName)
);
GO
CREATE TABLE Task (
    TaskID INT IDENTITY(1,1) PRIMARY KEY,
    TaskName NVARCHAR(100) NOT NULL,
    CONSTRAINT UQ_TaskIDName UNIQUE (TaskName)
);
GO

-- Creating Projects table
CREATE TABLE Project (
    ProjectID INT IDENTITY(1,1) PRIMARY KEY,
    ClientID INT NOT NULL,
    ProjectName NVARCHAR(100) NOT NULL,
    CONSTRAINT FK_Projects_Clients FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    CONSTRAINT UQ_ProjectName_ClientID UNIQUE (ClientID, ProjectName)
);
GO



-- Creating TimesheetEntries table
CREATE TABLE Timesheet (
    TimesheetID BIGINT IDENTITY(1,1) PRIMARY KEY,
    ConsultantID INT null,
    TaskID INT NULL, -- Nullable for non-task activities
    EntryDate DATE NOT NULL,
    DayOfWeek NVARCHAR(10) NOT NULL,
    Description NVARCHAR(255) ,
    Billable BIT NOT NULL, -- 1 for Billable, 0 for Non-Billable
    Comments NVARCHAR(500) NULL,
    TotalHours DECIMAL(10,4) NOT NULL CHECK (TotalHours >= 0),
    StartTime DECIMAL(10,4) NULL, -- Stored as fraction of a day (e.g., 0.3333 for 8:00 AM)
    EndTime DECIMAL(10,4) NULL, -- Stored as fraction of a day
    CONSTRAINT FK_TimesheetEntries_Consultants FOREIGN KEY (ConsultantID) REFERENCES Employee(ConsultantID),
    CONSTRAINT FK_TimesheetEntries_Tasks FOREIGN KEY (TaskID) REFERENCES Task(TaskID),
    CONSTRAINT CHK_StartEndTime CHECK (EndTime > StartTime OR StartTime IS NULL OR EndTime IS NULL)
);
GO

drop TABLE Timesheet
-- Creating LeaveRecords table
CREATE TABLE LeaveRecords (
    LeaveID INT IDENTITY(1,1) PRIMARY KEY,
    ConsultantID INT NOT NULL,
    LeaveType NVARCHAR(50) NOT NULL, -- e.g., Annual Leave, Sick Leave, Public Holiday
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    NumberOfDays DECIMAL(5,2) NOT NULL CHECK (NumberOfDays >= 0),
    ApprovalObtained BIT NULL, -- Nullable to indicate pending approval
    SickNote BIT NULL, -- Nullable for non-sick leave
    AddressDuringLeave NVARCHAR(255) NULL,
    CONSTRAINT FK_LeaveRecords_Consultants FOREIGN KEY (ConsultantID) REFERENCES Employee(ConsultantID),
    CONSTRAINT CHK_LeaveDates CHECK (EndDate >= StartDate)
);
GO

-- Creating AuditLog table for tracking changes
CREATE TABLE AuditLog (
    LogID BIGINT IDENTITY(1,1) PRIMARY KEY,
    Operation NVARCHAR(10) NOT NULL, -- INSERT, UPDATE, DELETE
    TableName NVARCHAR(50) NOT NULL,
    RecordID BIGINT NOT NULL, -- ID of the affected record
    ChangeTimestamp DATETIME2 NOT NULL DEFAULT GETDATE(),
    Details NVARCHAR(1000) NULL, -- JSON or text details about the change
    ConsultantID INT NULL, -- Optional: Track which consultant's data was affected
    CONSTRAINT FK_AuditLog_Consultants FOREIGN KEY (ConsultantID) REFERENCES Employee(ConsultantID)
);
GO
