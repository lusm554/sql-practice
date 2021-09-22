# Tasks for junior pl/sql

Database schema.
[Database schema](readme-imgs/schema.png)

## Tasks
1. Registration dates <br>
Display the number of contracts registered in the system for each day over the last 5 days.
2. Status report <br>
Display the number of contracts for each value of the contract status from the list: A - active, B - blocked, C - terminated. <br>
Result: status, "verbal" name of the status, the number of contracts.
3. "Empty" branches <br>
Display the names of branches that do not have a single active contract.
4. Draft <br>
According to the contract (v_ext_ident = ‘XXX’), after each event (service rendered, payment), an invoice is issued, in which the debt is displayed in the f_sum field. <br>
It is required to display the subscriber's debt on an arbitrary date.
5. Service <br>
Write a procedure to retrieve data from the SERVICE table so that it can take the service ID (pID variable) as input. Pay attention to the fact that it can be null - in this case, you need to display all records. At the exit, the procedure must return a cursor (variable dwr) in the form of fields ID_SERVICE, V_NAME, CNT (the number of such services for subscribers) sorted by.
6. Cursor <br>
Write a CUR cursor, which for fetching rows from SERVICES according to the conditions ID_SERVICE is not equal to 1234 and ID_TARIFF_PLAN is equal to 567, will change the DT_STOP field to the beginning of the current day.
7. Unique services <br>
Display the names of services that are unique within the branches, i.e.
services that are available only in a specific branch and in no other.
8. Popular services <br>
Display the names of tariff plans for the 5 most popular services.

