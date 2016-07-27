Paste your queries and results in this file
================================================================================
Release 0
SELECT * FROM books;
1|Rails 4 Test Prescriptions|1|1
2|Metaprogramming Ruby 2|2|1
3|Programming Ruby 1.9 & 2.0|3|1
4|Pragmatic Programmer|3|2
5|Practical Object Oriented Design in Ruby|4|2
6|The Rails 4 Way|5|2
7|Objective-C Programming|6|3
8|iOS Programming|6|3
9|JavaScript: The Good Parts|7|4
10|JavaScript: The Definitive Guide|8|4
11|Functional JavaScript|9|4
12|Build iOS Games with SpriteKit|10|1
13|Test iOS Apps with UI Automation|10|1
14|Design Patterns in Ruby|11|2
15|Eloquent Ruby|11|2
16|Web Design with HTML & CSS|12|5
17|JavaScript and jQuery|12|5
18|Well-Grounded Rubyist|13|6
19|Essential Algorithms|14|5
20|Introduction to Algorithms|15|7

Release 1
SELECT * FROM books WHERE title LIKE '%ruby%';
2|Metaprogramming Ruby 2|2|1
3|Programming Ruby 1.9 & 2.0|3|1
5|Practical Object Oriented Design in Ruby|4|2
14|Design Patterns in Ruby|11|2
15|Eloquent Ruby|11|2
18|Well-Grounded Rubyist|13|6

SELECT * FROM authors WHERE name LIKE '%Dav%';
3|Dave Thomas
8|David Flanagan
13|David Black

Release 2
1.
SELECT * FROM books
JOIN publishers ON publishers.id = books.publisher_id
WHERE publishers.name = 'Addison-Wesley';

4|Pragmatic Programmer|3|2|2|Addison-Wesley
5|Practical Object Oriented Design in Ruby|4|2|2|Addison-Wesley
6|The Rails 4 Way|5|2|2|Addison-Wesley
14|Design Patterns in Ruby|11|2|2|Addison-Wesley
15|Eloquent Ruby|11|2|2|Addison-Wesley

2.
SELECT * FROM books
JOIN authors ON authors.id = books.author_id
WHERE authors.name = 'Jonathan Penn'

12|Build iOS Games with SpriteKit|10|1|10|Jonathan Penn
13|Test iOS Apps with UI Automation|10|1|10|Jonathan Penn

3.
# show all the publishers where the book title contains "iOS"

# show all the publishers for the author "Sandi Metz"
SELECT * FROM publishers
JOIN publishers ON publishers.id = books.publisher_id
JOIN authors ON authors.id = books.author_id
WHERE authors.name = 'Sandi Metz'

Release 3
1.
INSERT INTO authors (id, name)
VALUES (16, 'Youna Yang')

1|Noel Rappin
2|Paolo Perrotta
3|Dave Thomas
4|Sandi Metz
5|Obie Fernandez
6|Aaron Hillegass
7|Douglas Crockford
8|David Flanagan
9|Michael Fogus
10|Jonathan Penn
11|Russ Olsen
12|Jon Duckett
13|David Black
14|Rod Stephens
15|Thomas Corman
16|Youna Yang

2.
INSERT INTO publishers (id, name)
VALUES (8, 'Acme Co.')

1|Pragmatic Programmers
2|Addison-Wesley
3|Big Nerd Ranch
4|O'Reilly
5|Wiley
6|Manning Publications
7|MIT Press
8|Acme Co.

3.
# add a new book to the books table with the new author and publisher you created in release 3

Release 4: UPDATE
# update the author named "David Black" to "David A. Black"
UPDATE authors SET name = 'David A. Black' WHERE name ='David Black';
1|Noel Rappin
2|Paolo Perrotta
3|Dave Thomas
4|Sandi Metz
5|Obie Fernandez
6|Aaron Hillegass
7|Douglas Crockford
8|David Flanagan
9|Michael Fogus
10|Jonathan Penn
11|Russ Olsen
12|Jon Duckett
13|David A. Black
14|Rod Stephens
15|Thomas Corman
16|Youna Yang

Release 5: DELETE
# Delete the book created in Release 3
DELETE FROM books
WHERE

# Delete the author created in Release 3
DELETE FROM authors
WHERE name = 'Youna Yang'
1|Noel Rappin
2|Paolo Perrotta
3|Dave Thomas
4|Sandi Metz
5|Obie Fernandez
6|Aaron Hillegass
7|Douglas Crockford
8|David Flanagan
9|Michael Fogus
10|Jonathan Penn
11|Russ Olsen
12|Jon Duckett
13|David A. Black
14|Rod Stephens
15|Thomas Corman

# Delete the publisher created in Release 3
DELETE FROM publishers
WHERE name = 'Acme Co.'
1|Pragmatic Programmers
2|Addison-Wesley
3|Big Nerd Ranch
4|O'Reilly
5|Wiley
6|Manning Publications
7|MIT Press














