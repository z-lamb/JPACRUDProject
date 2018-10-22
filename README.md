## JPACRUDProject

#### Created By Zachary Lamb

### Summary
This program allows a user to do full CRUD of a database from a web browser. My inspiration for the database was a from the board game Monopoly (see bottom of README for copyright information). The requirements for the project were to build a database with one table. The table I created was based off of a property you would land on in the game Monopoly. I created this program from scratch for our weekend project after week 8 in the bootcamp. I would say this project helped solidify the process of building a full stack application. One of the big differences in this project from our previous projects was having separate projects in our workspace for the JPA and MVC.


### Overview
The program has full web-based C.R.U.D. functionality using Spring MVC and the DAO pattern. The DAO implementation uses JDBC to persist and retrieve data.

#### Operation/Description of how the program works:

You are start at the landing page of the website. This gives you a few option on how you would like to proceed. You are able to look up:
- A property by its id
- A property based on color and status
- Add a new property
- Select a property to look at from the list
<p>Any time that you make a request the final page will be the results page to see your request. There is also a home link on every page that will bring you back to the landing page. If you select to add or edit a property you will be brought to a new page that will allow you to do that.</p>

#### File Overview
![JPAMonopoly File Tree](https://github.com/z-lamb/JPACRUDProject/blob/master/FileTree/JPAMonopolyFileTree.png "JPAMonopoly File Tree")

![MVCMonopoly File Tree](https://github.com/z-lamb/JPACRUDProject/blob/master/FileTree/MVCMonopolyFileTree.png "MVCMonopoly File Tree")

#### Technologies/Techniques Used

| New Technologies   | Technologies       |
| ------------------ | ------------------ |
| JPA                | MVC                |
| JDBC               | Sprint Tools Suite |
| AWS                | Enums              |
| Creating Database  | Gradle             |
|                    | Entities           |
|                    | Interface          |
|                    | HTML               |
|                    | MAMP               |
|                    | MySQL Workbench    |
|                    | JUnit Jupiter      |
|                    | Tomcat Server      |

#### Lessons Learned
- If your program blows up, just scrap it and start over (see Problems/Issues).
- I have a pretty good idea of how everything is connected now. Before this project I was not quit sure how it all worked but now I understand better how the whole process works from the front end to the back.
- When getting a list of array objects back from the database you need to receive them as `List<Object[]>` instead of the type of object they actually are. It will not work any other way. Then I needed to get the array objects out so that I could actually use them. I was able to use a foreach and I would grab the information from each index and add it to a new object. This object was put into a new list and I returned that list to the .jsp so that I could grab the specific information from the object. When I originally tried to do this I made the items in the array list into one big string so that I could print out the string on the .jsp. But I wanted more control of formating on the front end so that is when I came up with creating a new object instead.
- Coding always takes more time than you expect.
- One thing that I defintely learned was that I am not a fan of front end work with our current technologies. By the time that I get to the point of wanting to add front end stuff I am just not interested in adding in all of the CSS stuff that is needed to make a good front end.

#### Problems/Issues
- We got most of the project all set up during class so that we could get started on the project for the weekend. By the time I left class I was getting a 404 Page Not Found each time I tried to access the webpage. I tried fixing this in multiple ways but I don't think any of it worked. Eventually I started a 500 error and based on the course material it provided different trouble shooting techniques. As I tired to do the suggested troubleshooting it made everything worse. I believe the fixes I was trying to do were not going to solve the problem and just made things worse. I finally went nuclear and trashed the whole workspace and started over. I actually believe this was a benefit to me so that I learned how to do everything myself instead of following the instructors instructions when setting up the project.
- After making the whole project again I was still not able to get to the landing page. I was able to figure out that my issue was either in the web.xml or one of the servlets. I broke my servlets up into the app-context.xml to control the back end connection and Monopoly-servlet.xml to control the front end information. It came down to not having `<context-param>` or `<listener>` in the web.xml. After I added those the program started working.
- I never incorporate enough time to doing the README.md and I was unable to figure out how to update the size of the file trees.

#### Things we was unable to add or incorporate
- Provide more ways of searching for properties
- Use Bootstrap to make the website look better
- Add another table to figure out how that process works but we will be learning that this coming week

#### Copyright / Trademark Information
All rights and trademarks belong to respective parties including but not limited to Hasbro. I do not own the name Monopoly and use of the name does not imply any affiliation with or endorsement by them.