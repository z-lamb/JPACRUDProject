## JPACRUDProject

#### Created By Zachary Lamb

### Summary
This program allows a user to do full CRUD of a database from a web browser. My inspiration for the database was a from the board game Monopoly (see bottom of README for copyright information). The requirements for the project were to build a database with one table. The table I created was based off of a property you would land on in the game Monopoly. I created this program from scratch for our weekend project after week 8 in the bootcamp. I would say this project helped solidify the process of building a full stack application. One of the big differences in this project from our previous projects was having separate projects in our workspace for the JPA and MVC.


### Overview
The program has full web-based C.R.U.D. functionality using Spring MVC and the DAO pattern. The DAO implementation uses JDBC to persist and retrieve data.

#### Package/Class/File Overview
![Alt text](https://github.com/z-lamb/JPACRUDProject/FileTree/JPAMonopolyFileTree.png "JPAMonopoly File Tree")


#### Operation/Description of how the program works:

You are start at the landing page of the website. This gives you a few option on how you would like to proceed. You are able to look up:
- A property by its id
- A property based on color and status
- Add a new p
If you look up a film by id or keyword you will see one or more films as requested. You will be given the option to edit or delete the film of your choice. You are always given the option to go to the home page at the top of the screen. If you elect to edit a film it will bring you to another page where you will be able to edit all of the fields of the film. If you elect to delete a film it confirm if the film was deleted.



#### Technologies/Techniques Used
- created an instance of the main application to be able to launch the app inside of the main and have that be the only method in there.
- call other methods from classes and pass information to and from them
- declare and create new objects
- overloaded method
- getters/setters
- toString
- constructors
- Interface
- for loop
- hashCode
- equals
- if statements
- array list
- exceptions
- try/catch
- driver to access database
- Connection to database
- SQL queries
- Prepared Statement
- Result set
- STS
- MAMP
- MySQLWorkbench

#### Lessons Learned
- One lesson that took some time to research how to do was to add multiple sql statements in one connection to the database. To do this though you had to execute the first statement before you could declare the second one.
- Keep things simple... One way for things to become complicated is when you make something more complicated than it needs to be.
- Although difficult at times it was good to work on a project with other people. It was helpful for other people to bring their strengths to the group which.

#### Problems/Issues
- We had a hard time getting the update to work. The issue was making the controller retain the information that the film had and passing it on to the new page where a user could do the update.
- We had used code from the previous project in the package com.skilldistillery.film.dao. The SQL Query for the add method had "SELECT ... FROM film JOIN film\_category ..." We had the program to that point to a greater extent. The problem came when we would add a new film but we would not be able to search for that film. We could prove that it was in the database but our website was not able to find it. It was because when we added a film we did not also add a film_category. The fix was to add a second sql statement and execute after the first one so that we could add to a different table. This solved the problem.
- When a user would choose to list all of the movies that an actor was in the actor would not show at the top of the page but all of the films would be listed.

#### Things we was unable to add or incorporate
- Test Driven Development with JUnit tests
- A user can add an Actor to the database
- A user can update or delete an actor
- A user can add an actor to a film
- A user can choose to list all inventory items for a film
- A user can choose to list all rentals of a film, including the customer name and location
- Use Bootstrap to make the website look better
- It would have been nice to allow the user to select what details of a movie they would like to see instead of a basic print out of the film or all of the details of a film

#### Copyright / Trademark Information
All rights and trademarks belong to respective parties including but not limited to Hasbro. I do not own the name Monopoly and use of the name does not imply any affiliation with or endorsement by them.