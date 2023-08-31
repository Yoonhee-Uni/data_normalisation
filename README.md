# Top Model

## Learning Objectives

-   To be able to refactor a table to 1NF, 2NF and 3NF
-   To be able to implement a star schema
-   To be able to implement an ERD

Congratulations! You've been hired by the Northcoders Modelling Agency! 💅
All of the data we have on our models are currently being held in one big SQL table which you can create locally by running `models.sql`.

---

## Our first task is to normalise the data **without mutating** our original data:

-   Create new files for each of your Normal Forms
-   Remember that you can print the output of the file to a new file with the command below:

```
psql -f file_name.sql > file_name.txt
```

## Day 1 - OLTP

---

### 1. First Normal Form (1NF)

The rules we can follow are:

-   We must have no duplicate rows
-   Each cell must only contain a single value
-   Each value cannot be split down further

Print the result to a txt file called `1NF.txt`

<br>

### 2. Second Normal Form (2NF)

We will then need to refactor to 2NF:

-   Table must not violate the rules set out by 1NF
-   No partial dependencies - Non-prime attributes must be fully dependant on the candidate key.

Print the result to a txt file called `2NF.txt`

<br>

### 3. Third Normal Form (3NF)

Lastly refactor to 3NF:

-   Table must not violate the rules set out by 2NF
-   No transitive dependencies - fields must be determined by the primary / composite key

Print the result to a txt file called `3NF.txt`

<br>

### 4. Entity Relationship Diagram (ERD)

An `ERD` is a helpful visual representation of how relational tables fit together in a database.
Use the following free software to build an ERD to document the database in it's three forms.
https://dbdiagram.io/home
You can save a screen shot to this repo.

<br>

### 5. Third Normal Form Queries

 Update your Third Normal Form to reflect the following request, please do so by using queries to the database and _not mutating_ the original data:

1. A new brand 'Atlantis Doromania' has hit the scene and wants to work with all models from London.

2. Verity has too much work and needs an assistant in their area, update the agents table to reflect the new team member. Verity's assistant will take over the models that work for Dior.

3. Sam Pagne has been dropped by Harrods due to questionable social media posts about Bounties in Celebrations, update the data accordingly.

4. A new model has hit the scene and will be working with Rose and Aldi. They're a fan of the central aisle of delights and charge just £20 per event. Their rating is `4` and their trait is `Browser`. Update the data accordingly.


## Day 2 - OLAP

### 1. Building a star schema

We want to make our database easier and more efficient to analyse.
We should redesign the database into a star schema.

Things to consider:

-   **dimensions** - what can we extract? What metrics will these allow us to measure?
-   **facts** - what does this table look like? How can we create the link to dimensions.

<br>

### 2. Entity Relationship Diagram (ERD)

Create another ERD to represent how our tables now link together.

<br>

### 3.  Query the star schema for the following request:

1. Which agent has the lowest rated models?

2. Which model has worked the most events based on how much they charge per event and the total revenue so far?

3. Which quarter is the busiest for our models?

4. What is the total revenue for that quarter?

5. Which category bring in the most revenue?

6. How many brands are represented by models from London? 

7. How much does it cost to hire all models that are represented by Paul & Rose?

8. Which agent works with the most number of brands? 

