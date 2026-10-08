# Display the full table of raw_data
SELECT * FROM raw_data;

# Counts number of entries for each Country
SELECT Country, COUNT(*) AS 'Entries'
FROM raw_data
GROUP BY Country
ORDER BY Country
DESC;

# Displays all of the Industries
SELECT Industry, COUNT(*) AS 'Total'
FROM raw_data
GROUP BY Industry
ORDER BY Industry
DESC;

# Displays all of the Company Sizes
SELECT Company_Size, COUNT(*) AS 'Total'
FROM raw_data
GROUP BY Company_Size
ORDER BY Company_Size
DESC;

# Displays all of the Job Roles
SELECT Job_Role, COUNT(*) AS 'Total'
FROM raw_data
GROUP BY Job_Role
ORDER BY Job_Role
DESC;

# Displays all of the Age Groups
SELECT Age_Group, COUNT(*) AS 'Total'
FROM raw_data
GROUP BY Age_Group
ORDER BY Age_Group
DESC;

# Displays all of the AI Agent Usage Levels
SELECT AI_Agent_Usage, COUNT(*) AS 'Total'
FROM raw_data
GROUP BY AI_Agent_Usage
ORDER BY AI_Agent_Usage
DESC;

# Displays all of the AI Agent Types
SELECT AI_Agent_Type, COUNT(*) AS 'Total'
FROM raw_data
GROUP BY AI_Agent_Type
ORDER BY AI_Agent_Type
DESC;

# Displays counts of Automated Tasks by AI Agent Type
SELECT AI_Agent_Type, 
	SUM(Task_Automated) AS 'Tasks Automated', 
	ROUND(SUM(Hours_Saved_Per_Week),2) AS 'Saved Hours',
    ROUND(AVG(Productivity_Change_Percent),2) AS 'Average Productivity Change'
FROM raw_data
GROUP BY AI_Agent_Type
ORDER BY AI_Agent_Type
DESC;