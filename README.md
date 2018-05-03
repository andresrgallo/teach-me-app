# Problem Definition and Solution
## Problem

With today's highly competitive market, a convenient, feasible and efficient way of learning is needed.  

People seeking to upskill in remote areas or even in big cities need to commute to educational institutions,spending not only precious time but also monetary resources.

In many cases people can't afford education, or commuting is not an option, or perhaps they have a phisical limitation.  

From the Upskill side perspetive, many people are passionate about mentoring and sharing their skills, however they might encounter the some or all of the same problems listed above.   

Given all these, a solution that meet both needed is found with **Teachme**.

## Solution

Create an online only Tutor/student app where Upskill people can share their skills and get remunerated and students can learn about any skill they want to get or improve.

### Why Online?

* Costs
Costs are saved by not commuting.
* Time
By not commuting time can be utilized in learning more skills.
* Any Subject
People will be able to list any skill they want to share and search for any sill they are interested on.
* Comfort
Tutors and students can arrange their most suitable meeting time regardless of the place they are located.
* Self-paced
Students can arrange with tutors the number of lessons they wish at a desired pace.

### Detailed User Stories

***Any one is able to see a list of Subjects and browse within each subject***

**Feature** Browse app for Categories without login in

- When I type the app url I without login in 
- I want to see a list of Categories so I can search for 
- the category I am interested in

**Feature** Browse app within Categories without login in

- When clicking over a category I am interested in
- I want to see a list of all Lessons available in that category

***User should be able to edit their own profile***

**Feature:** Edit Profile

- As a User I want to edit my profile
- Because I want to keep my details up to date

**Scenario:** User edits profile

- As a logged User when I change any of my details
- I want to be able to see my changes after on the screen

***User should not be able to edit a profile that is not theirs***

**Feature:** Unable to edit other user's profile
- As a User I want nobody other than me to be able to edit my profile
- Because I want to have control over my profile details

**Scenario:** User attempts to edit another user's profile
- As a logged in user I wont be able to see an edit option to edit
- Someone elses profile either through a button on the screen or 
- through a url path

***User should be able to edit a Lesson listing that is theirs***

**Feature:** Edit Lesson Listing
- As a Tutor I want to edit my Lesson's listing
- in case I want to change the description or price.

**Feature:** Edit Lesson Listing
- As a Tutor I want to edit my Lesson's listing
- in case I want to change the description or price.

**Scenario:** User edits book listing
- Given I'm a logged in User
- When I go to the edit page for a book listing that is mine
- And I change the text in the text fields and/or upload a new book image
- And I click "Update book"
- Then I should see the detailed view page for that book
- And the details should be updated

---

***User should not be able to edit a book listing that is not theirs***

**Feature:** Unable to edit other user's book listing
- As a User
- I want nobody other than me to be able to edit my book listings
- Because I want to have control over my book listings

**Scenario:** User attempts to edit another user's book listing
- Given I'm a logged in User
- When I go to the edit book page for another user's book listing
- Then I am redirected back to the detailed view page for that book listing

---

***User should be able to delete a book listing that is theirs***

**Feature:** Delete Book Listing
- As a User
- I want to delete one of my book listings
- Because I have decided not to sell it

**Scenario:** User deletes book listing
- Given I'm a logged in User
- When I go to the edit page for a book listing that is mine
- And I click 'delete book'
- Then the book listing should be deleted from the database

---


***User should not be able to open a message conversation with themselves***

**Feature:** Unable to message self
- As a User
- I do not want to see an option to message myself
- Because this would be pointless functionality

**Scenario:** User visits messages page
- Given I'm a logged in User
- When I go to the messages page
- Then my username is not listed as an option to message

---

***User should not see a 'message reader' button on their own profile***

**Feature:** No 'message reader' button on own profile
- As a User
- I do not want to see an option to message myself
- Because this would be pointless functionality

**Scenario:** User visits their profile page
- Given I'm a logged in User
- When I go to my profile page
- Then I do not see a 'message reader' button

---

***User should be able to view book listings on homepage without logging in***

**Feature:** Homepage viewable without login
- As a User
- I want to view book listings without signing in
- Because I want to know it's worth signing up before I do so

**Scenario:** User visits homepage
- Given I'm a logged out user
- When I go to the homepage
- Then I can view the book listings

---

***User should be able to view detailed book listing without logging in***

**Feature:** Detailed book view viewable without login
- As a User
- I want to view book listings without signing in
- Because I want to know it's worth signing up before I do so

**Scenario:** User visits detailed book view page
- Given I'm a logged out user
- When I go to the detailed book view page
- Then I can view the detailed book view page

---

***User should not be able to view Messages page without logging in***

**Feature:** User must be logged in to view messages page
- As a User
- I want to know that only users who are logged in can message me
- Because I don't want to get spammed

**Scenario:** User visits messages page
- Given I'm a logged out user
- When I go to the messages page
- Then I am redirected to the login page

---

***User should not be able to view New Book form page without logging in***

**Feature:** User must be logged in to see the add new book form
- As site Admin
- I want users to be required to log in in order to add a book listing
- Because I want to encourage users to create an account on the site

**Scenario:** User visits add new book page
- Given I'm a logged out user
- When I go to the add new book page
- Then I am redirected to the login page

---

***When logged in, user should not be able to view any page other than 'create profile' until they have created a profile***

**Feature:** User must create a profile upon signup in order to interact on the site
- As site Admin
- I want all users to be required to have a profile
- Because it builds a sense of community

**Scenario:** User without a profile attempts to visit any page
- Given I'm a logged in user
- And I don't have a profile
- When I go to any page other than the create profile page
- Then I am redirected to the create profile page

## Style Guide

### Colour Scheme

![GitHub Logo](Colour_Scheme.png)

### Font

![GitHub Logo](Font_Roboto.png)



