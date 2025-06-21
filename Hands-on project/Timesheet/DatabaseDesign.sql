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
CREATE TABLE StagingTimesheet (
    TimesheetID BIGINT, -- No IDENTITY, as staging may import existing IDs
    ConsultantID INT NULL,
	ConsultantName NVARCHAR(100), 
    TaskID INT NULL,
	TaskName NVARCHAR(100) NULL,
    EntryDate DATETIME2 NULL, -- Allow NULL temporarily for validation
    DayOfWeek NVARCHAR(10) NULL,
    Description NVARCHAR(255) NULL,
    Billable BIT NULL,
    Comments NVARCHAR(500) NULL,
    TotalHours DECIMAL(10,4) NULL, -- Allow NULL for validation
    StartTime DECIMAL(10,4) NULL,
    EndTime DECIMAL(10,4) NULL,
    BatchID INT NULL, -- Optional: Track ETL batch
    ErrorFlag BIT DEFAULT 0, -- Optional: Mark rows with issues
    ErrorMessage NVARCHAR(1000) NULL -- Optional: Store validation errors
);
drop  TABLE StagingTimesheet
TRUNCATE TABLE StagingTimesheet;

 CREATE TABLE Stage_LeaveRecords (
    StageLeaveID INT IDENTITY(1,1) PRIMARY KEY,            -- Optional surrogate key
    ConsultantID INT NULL,                                 -- Nullable for flexibility, validate in SSIS
    LeaveType NVARCHAR(50) NULL,                       -- Required
    StartDate DATE NULL,                                   -- Nullable (used in date check constraint)
    EndDate DATE NOT NULL,                                 -- Required
    NumberOfDays DECIMAL(5,2) NULL,                        -- Optional, computed if needed
    ApprovalObtained BIT NULL,                             -- Optional
    SickNote BIT NULL,                                     -- Optional
    AddressDuringLeave NVARCHAR(255) NULL,                 -- Optional

    -- Constraint to ensure dates make sense
    CONSTRAINT CHK_Stage_LeaveDates CHECK (
        StartDate IS NULL OR EndDate >= StartDate
    )
);
GO
drop TABLE AuditLog
ALTER TABLE Stage_LeaveRecords ALTER COLUMN EndDate DATE NULL;
CREATE TABLE AuditLog (
    AuditID int NOT NULL,
    ConsultantID nvarchar(100) NOT NULL,
    SubmissionMonth nvarchar(10) NOT NULL,
    SubmissionDate date NOT NULL,
    SubmissionType nvarchar(20) NOT NULL,
    ChangeType nvarchar(20) NOT NULL,
    AffectedTable nvarchar(20) NOT NULL,
    RecordCount int NOT NULL,
    AuditTimestamp datetime NOT NULL
);
CREATE TABLE AuditLog (
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    MessageName NVARCHAR(100),
    TaskName NVARCHAR(100),
    TableName NVARCHAR(50),
    RowsLoaded INT,
    RunDate DATETIME,
    ExecutedBy NVARCHAR(100),
    EmployeeName NVARCHAR(100),
    SheetName NVARCHAR(255)
);
EXEC sp_help 'AuditLog';
ALTER TABLE AuditLog
ALTER COLUMN MessageName nVARCHAR(50);
ALTER TABLE AuditLog
ALTER COLUMN TaskName nVARCHAR(50);

CREATE TABLE dbo.ErrorLog (
    ErrorLogID     INT IDENTITY(1,1) PRIMARY KEY,
    
    BatchID        INT NOT NULL,
    CONSTRAINT FK_ErrorLog_AuditLog_BatchID
        FOREIGN KEY (BatchID) REFERENCES dbo.AuditLog(AuditID),
    
    ErrorTimeUtc   DATETIME2(7) NOT NULL
        CONSTRAINT DF_ErrorLog_ErrorTimeUtc DEFAULT (SYSUTCDATETIME()),

    ComponentName  NVARCHAR(100) NOT NULL,   -- e.g., 'OLE DB Destination', 'Lookup ConsultantID'

    ErrorMessage   NVARCHAR(MAX) NOT NULL,   -- Full error message or exception text

    RowKey         NVARCHAR(200) NULL        -- Optional: key info to trace the data (e.g., EntryDate + ConsultantName)
);
GO
