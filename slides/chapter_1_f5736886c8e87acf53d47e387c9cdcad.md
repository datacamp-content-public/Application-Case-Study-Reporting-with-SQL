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
So far for this report, we have handled null values and converted data types.  We're almost done.  In previous exercises, may have noticed that some of the strings looked odd, which is common in practice. To clean these messy strings, we need to leverage STRONG PARSING functions.


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
Here's it the current state of our report.  Several of the values include extra characters, and groupings do not exist where they should.  Our goal is to get to this stage on the right, where we only include one row for each country.


---
## String Functions

```yaml
type: "TwoRows"
key: "84fe86d634"
```

`@part1`
![](https://assets.datacamp.com/production/repositories/3775/datasets/58b76f5155d5f39f9a75e21082f46effa7093da0/str_parsing_ex_1.png)


`@part2`



`@script`
A string function must take a string field as the input...


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
One way you can alter strings is through replacing part of it.  We do this with the replace function.  You simply select the text you want to replace, indicate what substring to replace, and replace it with a new substring.  In this example, we are replacing the "wich" of sandwich to "paper".  Doing this changes our output string to "Sand Paper".


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
You can also use the REPLACE function to remove characters by replacing with empty quotes. Let's use an example from our data here.  In this example, we are replacing all periods with an empty string.  This completely removes the period and is a good way to remove characters from our strings.


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
Another way to alter strings is through parsing functions.  The LEFT, RIGHT, and MID functions allow you to pull a set number of characters of your string.  In this example, we are taking the left 4 characters of the word "Sandwich" to output "sand".  Right and MID work in similar ways, they just start at different points in the string.


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
A a B b C c... all different.

```LOWER()``` and ```UPPER()``` changes case.

```sql
SELECT UPPER(country)
FROM orders
```

![](https://assets.datacamp.com/production/repositories/3775/datasets/e4d415cfb994adc3ee6c6d1990be0179b0c4555c/upper.png)


`@part2`



`@script`
SQL is case sensitive.  That is, a lower case B is considered different than an upper case b.  Often times, the same data is entered in different cases.  If case does not matter for your data, starting all strings with UPPER or LOWER is good practice to keep data consist.


---
## Final Slide

```yaml
type: "FinalSlide"
key: "3aa5d8f480"
```

`@script`


