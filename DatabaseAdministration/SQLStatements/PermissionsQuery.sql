-- Granting CONTROL permission on the "Sales" schema to the user 'sqluser01'.
GRANT CONTROL ON SCHEMA::Sales TO sqluser01;

-- Impersonating the user 'sqluser01' to check the permissions they have on the "Sales" schema.
EXECUTE AS USER = 'sqluser01';

-- Querying the permissions that the impersonated user has on the "Sales" schema.
SELECT * FROM fn_my_permissions ('Sales', 'SCHEMA');

-- Reverting back to the original user after impersonation.
REVERT;

GO  -- Marks the end of the batch.

-- Revoking the CONTROL permission that was previously granted on the "Sales" schema.
REVOKE CONTROL ON SCHEMA::Sales TO sqluser01;

-- Denying the EXECUTE permission on the "Sales" schema to the user 'sqluser01'.
DENY EXECUTE ON SCHEMA::Sales TO sqluser01;

GO

-- Granting CONTROL permission on the "Sales" schema to the user 'sqluser01' again.
-- Impersonating the user 'sqluser01' to check their permissions again on the "Sales" schema.
-- (Commented out) Query to check the permissions of the impersonated user on the "Sales" schema.
-- SELECT * FROM fn_my_permissions ('Sales', 'SCHEMA');
-- Selecting data from the "CreditCard" table in the "Sales" schema, assuming the user has SELECT permissions on this table.
-- Reverting back to the original user after impersonation.
GRANT CONTROL ON SCHEMA::Sales TO sqluser01;
EXECUTE AS USER = 'sqluser01';
SELECT * FROM [Sales].[CreditCard];
REVERT;

GO  
-- Revoking the UPDATE permission on the "Sales" schema from the user 'sqluser01'.
REVOKE UPDATE ON SCHEMA::Sales TO sqluser01;


DENY EXECUTE ON SCHEMA::Sales TO sqluser01;

GO

-- Granting SELECT permission on the "Sales" schema to the user 'sqluser01'.
GRANT SELECT ON SCHEMA::Sales TO sqluser01;

-- Impersonating the user 'sqluser01' to check the permissions again on the "Sales" schema.
EXECUTE AS USER = 'sqluser01';

-- Querying the permissions of the impersonated user on the "Sales" schema.
SELECT * FROM fn_my_permissions ('Sales', 'SCHEMA');

-- (Commented out) Query to select data from the "CreditCard" table in the "Sales" schema.


-- Reverting back to the original user after impersonation.
REVERT;

GO  -- Marks the end of the batch.

-- Revoking the UPDATE permission on the "Sales" schema from the user 'sqluser01'.
REVOKE UPDATE ON SCHEMA::Sales TO sqluser01;

-- Denying the SELECT permission on the "Sales" schema to the user 'sqluser01'.
DENY SELECT ON SCHEMA::Sales TO sqluser01;

GO
