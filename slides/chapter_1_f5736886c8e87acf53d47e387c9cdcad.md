---
title: Insert title here
key: f5736886c8e87acf53d47e387c9cdcad

---
## Report 2 - Cleaning Strings

```yaml
type: "TitleSlide"
key: "d14e755113"
```

`@lower_third`

name: Tyler Pernes
title: Business Intelligence Manager


`@script`
In the previous lesson, you may have noticed that some of the strings looked messy, which is common in practice. To clean these messy strings, we need to leverage string functions.


---
## Where we are: Report 2

```yaml
type: "TwoColumns"
key: "4f3fcac7e0"
disable_transition: false
center_content: false
```

`@part1`
![](https://assets.datacamp.com/production/repositories/3775/datasets/0cf03e1b3a8aaaa27b8f4baa4b855820086c7659/2.4_current_state.PNG)


`@part2`
![](https://assets.datacamp.com/production/repositories/3775/datasets/bbdf7c578bef677413722267295f0f26cc629b61/2.4_goal_state.PNG){{1}}


`@script`
Here's where we currently are with report two.  You'll notice several rows that represent the same country are split out. Our goal is to clean up these strings so they group correctly, as shown in our goal table.


---
## String Functions

```yaml
type: "TwoRows"
key: "84fe86d634"
```

`@part1`
![](https://assets.datacamp.com/production/repositories/3775/datasets/58b76f5155d5f39f9a75e21082f46effa7093da0/str_parsing_ex_1.png){{1}}


`@part2`



`@script`
To alter strings, we use a string function. A string function takes a string as an input...


---
## String Functions

```yaml
type: "TwoRows"
key: "38aab2ca03"
disable_transition: true
```

`@part1`
![](https://assets.datacamp.com/production/repositories/3775/datasets/c8b9b0d83c3699d0fa7f42e40e9394dd684690e9/str_parsing_ex_2.png)


`@part2`



`@script`
Alter the string in some way....


---
## String Functions

```yaml
type: "TwoRows"
key: "1ebabff014"
disable_transition: true
```

`@part1`
![](https://assets.datacamp.com/production/repositories/3775/datasets/e9e8a7040b8cef450434d69949f2eef3b73fd832/str_parsing_ex_3.png)


`@part2`



`@script`
To give an output.  There's a number of different ways you can alter strings.


---
## Replacing a substring

```yaml
type: "TwoRows"
key: "d766fa0596"
```

`@part1`
Replace a substring with a new substring with ```REPLACE()```

```sql
SELECT REPLACE("Sandwich","wich"," Paper")
```{{1}}

![](https://assets.datacamp.com/production/repositories/3775/datasets/738ff9219cbf37ab01a31948e3c38dee6cb255e3/str_replace.png){{2}}


`@part2`



`@script`
One way you can alter strings is through replacing substrings.  We do this with the replace function, which replaces part of our string with a new substring.  In this example, we are looking at the string "sandwich" and replacing the "wich" substring with "paper".  Doing this changes our output string to "Sand Paper".


---
## Removing a substring

```yaml
type: "TwoRows"
key: "4606bca65b"
```

`@part1`
Remove a substring by replacing with an empty string.

```sql
SELECT REPLACE(country,".","")
FROM orders
GROUP BY 1
```{{1}}

![](https://assets.datacamp.com/production/repositories/3775/datasets/dff2eb2e7732557d549dde641cda1668a30fbf94/str_parsing_remove.png){{2}}


`@part2`



`@script`
You can also use the REPLACE function to remove characters by replacing with empty quotes. Let's use an example from our data here.  By replacing with empty quotes, this example completely removes the period. Replace is a great way to remove stray characters from our strings.


---
## Parsing a string

```yaml
type: "TwoRows"
key: "5d2607792b"
```

`@part1`
```LEFT()```, ```RIGHT()```, and ```MID()``` allows you to pull out a portion of a string.

```sql
SELECT LEFT("Sandwich",4)
```{{1}}

![](https://assets.datacamp.com/production/repositories/3775/datasets/182701764d84becf7fc1805cc50c3ac9bc247342/str_left.png){{2}}


`@part2`



`@script`
Another way to alter strings is through parsing functions.  The LEFT function allow you to pull a set number of characters starting from the left of your string.  In this example, we are taking the left 4 characters of the word "Sandwich" to output "sand".  Right and MID work in similar ways, they just start at different points in the string.


---
## Trimming Spaces

```yaml
type: "TwoRows"
key: "f42bb6c144"
```

`@part1`
![](https://assets.datacamp.com/production/repositories/3775/datasets/f6d727a7bab07e2631098e1b5b9b48748e61c856/trim_1.png)


`@part2`



`@script`
Sometimes, the data is entered with extra spaces at the start or the end.  This causes two values that should be identical to be separated out.  In this example, although both values clearly show UK....


---
## Trimming Spaces

```yaml
type: "TwoRows"
key: "664d8efb5a"
disable_transition: true
```

`@part1`
![](https://assets.datacamp.com/production/repositories/3775/datasets/9b17e7df3c84350f4e8cbd314edecf45fbff3955/trim_2.png)


`@part2`



`@script`
...The second row has a leading space, causing the report to output two separate values.


---
## Trimming Spaces

```yaml
type: "TwoRows"
key: "25a5e8476c"
```

`@part1`
```TRIM()``` removes all trailing and leading spaces.

```sql
SELECT TRIM(" Sand Paper ")
```{{1}}

![](https://assets.datacamp.com/production/repositories/3775/datasets/3f6ad3e47a5b7b028528763051f22aa475b293c9/trim_example.png){{2}}


`@part2`



`@script`
We can fix this issue using the TRIM function, which removes all trailing and leading spaces.  In this example, we remove the extra space at the start and end of sand paper.  Note that we keep the middle space.


---
## Changing Case

```yaml
type: "TwoRows"
key: "7722f2d14d"
```

`@part1`
```A a B b C c``` ... are all unique characters.

```LOWER()``` and ```UPPER()``` changes case.{{1}}

```sql
SELECT UPPER(country)
FROM orders
```{{2}}

![](https://assets.datacamp.com/production/repositories/3775/datasets/e4d415cfb994adc3ee6c6d1990be0179b0c4555c/upper.png){{3}}


`@part2`



`@script`
SQL is case sensitive.  That is, a lower case B is considered different than an upper case b.  Often times, the same data is entered in different cases.  If case does not matter for your data, starting all strings with UPPER or LOWER is good practice to keep data consist.


---
## Nesting Functions

```yaml
type: "TwoRowsTwoColumns"
key: "443bee32e9"
disable_transition: true
```

`@part1`
_Input:_{{1}}
```
   U.S. - United States
```{{1}}
_Output:_{{2}}
```
US
```{{2}}


`@part2`
1) Remove Periods{{3}}
```sql
REPLACE(country,".","")
```{{3}}

2) Trim Spaces{{4}}
```sql
TRIM(REPLACE(country,".",""))
```{{4}}

3) Left Two Characters{{5}}
```sql
LEFT(TRIM(REPLACE(country,".","")),2)
```{{5}}


`@part3`



`@part4`



`@script`
In some cases, you may need multiple string functions on the same field.  To do this, we will need to nest together multiple functions.  For example, lets say we need turn this large string into a simple, upper case US.  We need to remove the periods, trim the trailing space, and only take the left 2 characters.  Since each string function outputs a new string, you can have the output of one function be the input of another.  It's important to think about ordering when you nest functions in this way.  For example, we need to trim before we parse the string, as the leading space should not be counted during our left function. Although the code may get complicated here, thinking about it in a step-by-step fashion should make it easier to understand.


---
## Lets Build!

```yaml
type: "FinalSlide"
key: "3aa5d8f480"
```

`@script`
That's it for string functions.  Now lets use what we learned and finish up report 2.

