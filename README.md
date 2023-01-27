# liquibase-fundamentals

https://learn.liquibase.com/unit/view/id:2147

--

## Terminology

* changesets are what you want to do
* changelogs write changes you made with your changesets
* push changes with liquibase commands
* track changes with databasechangelog tracking tables
* protect your changes with databasechangeloglock table

## Available commands

* update - applies to all unrun changes.
* updateSql - see what will be done before run update.
* rollback - reverts (rolls back) changes you have made to your database.
* snapshot - used when you want to quickly compare changes in your database or keep a record of your current database state. 
* diff - allows you to compare two databases of the same type or different types to one another.
* diff-changelog - used when you want to create a deployable changelog to synchronize multiple databases. 
* history - a helper command that lists out all your deploymentIds and all changesets associated with each deploymentId. 
* generateChangeLog - use on an existing database to retrieve its current state. It creates a changelog file that has a sequence of changesets.

## Usual workflow

1. Write the change <code>changelog-h2.sql</code>
2. Inspect the change <code>liquibase --changeLogFile=changelog-h2.sql updateSQL</code>
3. Run with <code>liquibase --changeLogFile=changelog-h2.sql update</code>
4. Tag the database <code>liquibase tag *whatever*</code>
5. Check with <code>liquibase history</code>

## Rollback

1. You need to declare the rollback commands as comments <code>--rollback *whatever*</code>
    1.1 You can have multiple commands
2. Then inspect the rollback to be executed <code>liquibase --changeLogFile=changelog-h2.stores.sql rollback-sql v2</code>

    2.1 the *v2* piece is the tag to **which you want to return**

    2.2 in a nutshell, it will execute the rollback commands in the change log file and delete the entry corresponding to it in the databasechangelog table.

    2.3 there is no check if the tag specified and the changeLogFile are related. Example:

    > you run f1 -> tag 1
        
    > you run f2 -> tag 2
        
    > you run f3 -> tag 3
        
    > if you run rollback for file f3 and put tag 1, it will run  successfully, deleting whatever was on f3 **but it will not be on the state corresponding to tag 1**
    
    3. Run with <code>liquibase --changeLogFile=changelog-h2.stores.sql rollback v2</code>
