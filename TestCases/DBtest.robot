*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Library           DatabaseLibrary
Library           OperatingSystem
Suite Setup       Connect to Database   pymysql     ${DBName}      ${DBUser}    ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown    Disconnect from Database
*** Variables ***
${LOGIN URL}      https://the-internet.herokuapp.com/dropdown
${BROWSER}        Chrome
${DBName}       mydb
${DBUser}       root
${DBPass}       root
${DBHost}       127.0.0.1
${DBPort}       3306
*** Test Cases ***
Create Person Table
    ${output}=  execute sql string    Create table person(id integer,first_name varchar(20), last_name varchar(20));
    log to console    ${output}
    should be equal as strings    ${output}     None
insert data Table
    ${output}=  execute sql string    Insert into person values(101,"john","canaday");
    log to console    ${output}
    should be equal as strings    ${output}     None
    #multiple records
    ${output}=  execute sql script   ./TestData/dbdata.sql
    log to console    ${output}
    should be equal as strings    ${output}     None
check david is present
    check if exists in database    select * from mydb.person where first_name="David";
check record not in db
    check if not exists in database    select * from mydb.person where first_name="hhh";
check person table exist in mydb database
    table must exist    person
verify row count is zero
    row count is 0    select * from mydb.person where first_name="xss";
verify row count is equal to some value
    row count is equal to x    select * from mydb.person where first_name="xss";    1
verify row count is greater than some value
    row count is greater than x    select * from mydb.person where first_name="xss";    1
verify row count is less than some value
    row count is less than x       select * from mydb.person where first_name="xss";    1
update record in person table
    ${output}=  execute sql string    Update mydb.person set first_name="jio" where id=104;
    log to console    ${output}
    should be equal as strings    ${output}     None
Retrieve records from person table
    @{queryResults}=    query    slect * from mydb.person;
    log to console      many    @{queryResults}
Delete record from person table
    ${output}=  execute sql string    delete from mydb.person;

    should be equal as strings    ${output}     None
