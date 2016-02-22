# Your Ride is Here

It is a well-known fact that behind every good comet is a UFO. These UFOs often come to collect loyal supporters from here on Earth. Unfortunately, they only have room to pick up one group of followers on each trip. 

They do, however, let the groups know ahead of time which will be picked up for each comet by a clever scheme: they pick a name for the comet which, along with the name of the group, can be used to determine if it is a particular group's turn to go (who do you think names the comets?). 

The details of the matching scheme are given below; your job is to write a program which takes the names of a group and a comet and then determines whether the group should go with the UFO behind that comet.

Both the name of the group and the name of the comet are converted into a number in the following manner: _the final number is just the product of all the letters in the name, where "A" is 1 and "Z" is 26_. 

For instance, the group "USACO" would be 21 * 19 * 1 * 3 * 15 = 17955. 

If the group's number mod 47 is the same as the comet's number mod 47, then you need to tell the group to get ready! 

Write a program which reads in the name of the comet and the name of the group and figures out whether according to the above scheme the names are a match, printing **"GO"** if they match and **"STAY"** if not. 

The names of the groups and the comets will be a string of capital letters with no spaces or punctuation, up to 6 characters long.

### Examples

Given the following inputs:

    group = "COMETQ"
    comet = "HVNGAT"
    ride(group, comet) => "GO"
    
Convert the letters to numbers:

	C O  M  E T  Q
	3 15 13 5 20 17  
	
	H V  N  G A T
	8 22 14 7 1 20
	
Then calculate the product mod 47:

	3 * 15 * 13 * 5 * 20 * 17 = 994500 mod 47 = 27
	8 * 22 * 14 * 7 * 1 * 20  = 344960 mod 47 = 27    
	
Since both products are the same (27) when modded by 47, the mission is a "GO".


## Language and test case support

Test cases for this challenge are not assumed to be fully complete.  Meaning, the full test suite I will run against your code will include more tests and variations of tests.  The tests provided are meant as a starting point and example.  You are free to add your own tests as well

Test cases (or pseudo-test cases) have been provided below for the following languages:

  * [Clojure](./your_ride_is_here_test.clj)
  * [Ruby](./your_ride_is_here_test.rb)
  * [JavaScript](./your_ride_is_here_test.js)
  * [Python](./your_ride_is_here_test.py)
  * [Haskell](./your_ride_is_here_test.hs)
  * [Go](./your_ride_is_here_test.go)
  * [Rust](./your_ride_is_here_test.rs)

### Solution submission

You are welcomed and encouraged to try to implement a solution in one or more languages. To submit a solution, send me a link to a gist with your code at [craig@mojotech.com](mailto:craig@mojotech.com?subject=your-ride-is-here) with a subject line of `your-ride-is-here`.
