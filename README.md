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
4. Check with <code>liquibase history</code>