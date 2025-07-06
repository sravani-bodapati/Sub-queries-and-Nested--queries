# Sub-queries-and Nested-queries

Overview
The Student database is a sample database designed to demonstrate the use of SQL subqueries and nested queries. The database consists of one table: `students`.

Table
- *Students Table:*
    - student_id (primary key)
    - name
    - department
    - marks

Subqueries
The database supports various types of subqueries, including:

- *Subquery in WHERE:* Filter data based on conditions specified in a subquery.
- *Subquery with IN:* Retrieve data based on a list of values returned by a subquery.
- *Correlated Subquery:* Use a subquery that references the outer query to filter data.
- *Subquery in FROM (Derived Table):* Use a subquery as a derived table to retrieve data.
- *EXISTS:* Check if at least one student exists based on a condition.
