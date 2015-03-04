# DroneSpotting
School Project, IDE and CMS, Groovy on Grails   
We are working in a team of 2  

## Requirements ##

As we understood we are either to 
- use the liferay CMS and embed an applet, making full use of user roles, groups and create some form of internal communication, like a calendar. Users of different roles should be able create different content.
- or create our own Java CMS that allows for similar use 

We decided to use Groovy on Grails to build a CRUD application, since it is a fully featured modern framework on top of Spring that allows for a lot of control, scaffolding code on demand.   
We believe that it is very similar to other MVC frameworks, thus allowing us to practice skills that are very much in demand.   
For the user authentication we will work with the [spring security core] (http://grails.org/plugin/spring-security-core) plugin.   
Our teacher indicated (but did not include in the exam specifications) that consuming a SOAP API is desirable. We will use a REST API for drone strikes, but try to find a use case for a freely available SOAP web service as well.

## Migrations ##

`grails dbm-gorm-diff nameOfMigration.groovy -add` **or** `grails dbm-generate-gorm-changelog changelog.groovy` (first time)

`grails dbm-update`

`grails dbm-changelog-sync`
