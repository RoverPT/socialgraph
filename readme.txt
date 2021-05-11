Part I
The purpose of this task is to create a method of examining a social network. You are given
data (socialGraph.php) representing a group of people, in the form of a social graph. Each
person listed has one or more connections to the group.
Come up with a database structure to store the information found in socialGraph.php.
You must then create a page and PHP API which provides functionality to choose a person
within the group stored in the database and display the following information about this
person:
• Direct friends: those people who are directly connected to the chosen user
• Friends of friends: those who are two steps away from the chosen user but not directly
connected to the chosen user
• Suggested friends: people in the group who know 2 or more direct friends of the chosen user
but are not directly connected to the chosen user
Part II
Each user has also visited 0 or more cities and has a % rating for each city visited. Implement
an algorithm which recommends cities to a user based on the social graph. The user must not
have visited any city which is recommended to them.
--------------------------------------------------------------------------------------------
use socialgraph.sql to create table on mysql
