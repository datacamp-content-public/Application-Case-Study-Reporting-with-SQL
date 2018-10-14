---
title: Insert title here
key: 1aa23bf745d47e81cece661cdc470bfc

---
## Report 2 - Cleaning Strings

```yaml
type: "TitleSlide"
key: "1ad85bdd93"
```

`@lower_third`

name: Tyler Pernes
title: DataCamp Instructor


`@script`
Real-world data is often messy, especially when dealing with strings. Since there are many different ways to format strings, it's important to understand how to clean them accordingly.


---
## Where we are...

```yaml
type: "TwoColumns"
key: "1f5003d939"
```

`@part1`
**Current Report:**

![](https://assets.datacamp.com/production/repositories/3775/datasets/5bb6381fe98fbdf50db0d592290157ae51ef282f/2.4_current_state.PNG){{1}}


`@part2`
**Goal Report:**

![](https://assets.datacamp.com/production/repositories/3775/datasets/ae048851b15c2447aeccb2b6b9280d2a2cb53a45/2.4_goal_state.PNG){{2}}


`@script`
Here’s where we currently are with our report.  You’ll notice there are multiple rows for each country.  Our goal is to clean up these values so that we accurately output only 1 row for each country.


---
## String Functions

```yaml
type: "FullSlide"
key: "9d2a8053c1"
disable_transition: false
```

`@part1`
![](https://assets.datacamp.com/production/repositories/3775/datasets/d7f7cc82a54ad38e9baa52e160b97ec85a5a1a4a/functions_1.png){{1}}


`@script`
We clean up string values using STRING FUNCTIONS.  There’s a number of SQL functions at our disposal.  In order to figure out what function to use, identify what action should be taken on the string.  If we need to replace or remove part of a string, we can use the REPLACE function.


---
## String Functions

```yaml
type: "FullSlide"
key: "bf980fdbeb"
disable_transition: true
```

`@part1`
![](https://assets.datacamp.com/production/repositories/3775/datasets/47f9751e4fba8eed1092e432a7b05869f66a39e8/functions_2.png)


`@script`
To parse out a portion of the string, leverage the LEFT, RIGHT, or MID functions.


---
## String Functions

```yaml
type: "FullSlide"
key: "a91f77bf1a"
disable_transition: true
```

`@part1`
![](https://assets.datacamp.com/production/repositories/3775/datasets/15848121ce578d94e94ea069c8f0165e8eb65183/functions_3.png)


`@script`
For consistent CASE of our strings, we can use the UPPER, LOWER, or PROPER functions.


---
## String Functions

```yaml
type: "FullSlide"
key: "d992576321"
disable_transition: true
```

`@part1`
![](https://assets.datacamp.com/production/repositories/3775/datasets/6eafc1440220f1c82557b8d06a5129586990ae9d/functions_4.png)


`@script`
And to remove extra spaces, we use the TRIM function.


---
## Replacing or Removing Characters

```yaml
type: "TwoColumns"
key: "14e3d5134f"
disable_transition: false
```

`@part1`
![](https://assets.datacamp.com/production/repositories/3775/datasets/fdc3e64c7ba39c475bda9e2258937ce1de7afa19/replace_table.PNG)

Must remove all periods from the strings.{{1}}

```REPLACE()``` function can remove characters.{{2}}

```sql
SELECT REPLACE(country,".","")
FROM country_orders
GROUP BY 1
```{{3}}


`@part2`



`@script`
Let’s dig deeper into these functions.  In our report, we have multiple rows for the UK, one of which includes periods. We need to clean the country field by removing these periods.  The replace function can allow us to replace a substring, in this case a period, with a new substring.  By replacing an empty string, you can remove the character entirely.  This is a great way to remove any stray characters from your report.


---
## Parsing Strings

```yaml
type: "TwoColumns"
key: "eb8758a494"
disable_transition: true
```

`@part1`
![](https://assets.datacamp.com/production/repositories/3775/datasets/3dbee5e624d829e7950a085f0735f4a6f5c2a805/left_table.PNG)

Keep only the first 2 characters.{{1}}

```LEFT()``` function extracts first N characters.{{2}}

```sql
SELECT LEFT(country,2)
FROM country_orders
GROUP BY 1
```{{3}}


`@part2`



`@script`
Here, we have some extra characters.  We only care to take the first two characters to get an abbreviated country.  Using the LEFT function, we can select only the first two characters and ensure our report shows just the abbreviation.  The RIGHT and MID functions can work as well, depending on what part of the string you need to parse out.


---
## Changing CASE

```yaml
type: "TwoColumns"
key: "3fd76c0e8b"
```

`@part1`
![](https://assets.datacamp.com/production/repositories/3775/datasets/0aa354a7ab9aef85ae3c31fe3f5d39a3e20f8d64/upper_table.PNG)

All values should be uppercase.{{1}}

```sql
SELECT UPPER(country)
FROM country_orders
GROUP BY 1
```{{2}}


`@part2`



`@script`
Often times, you’ll notice that data does not have consistent CASE.  That is, some letters are lowercase and some are uppercase in an inconsistent way.  The same value with different cases will appear as two separate rows within our report.  In most cases, these should be grouped into the same row.  We can use the UPPER, LOWER, or in some cases PROPER functions to convert the case of all string values to be consistent.  A best practice is to have all strings be either UPPER or LOWER if you feel cases may be inconsistent.


---
## Remove Extra Spaces

```yaml
type: "TwoColumns"
key: "45f98bef09"
```

`@part1`
![](https://assets.datacamp.com/production/repositories/3775/datasets/1472212859b22f4b5daa39f05a1687472acf7153/trim_table.PNG)

Remove trailing spaces.{{1}}

```sql
SELECT TRIM(country)
FROM country_orders
GROUP BY 1
```{{2}}


`@part2`



`@script`
Another common problem is data that is entered with extra spaces.  These are particularly dangerous because it could be invisible to the eye that the two values are different, and when you see it in a report, you can have two separate rows that appear to contain the same value.  The solution here is to use a TRIM function, which simply removes all leading and trailing spaces while keeping all inner spaces. You'll notice a standard process here: First, determine how the string needs to change. Second, identify what function to use.  Lastly, update the code.


---
## Nesting Functions

```yaml
type: "TwoColumns"
key: "c1b8f964b8"
```

`@part1`
![](https://assets.datacamp.com/production/repositories/3775/datasets/5bb6381fe98fbdf50db0d592290157ae51ef282f/2.4_current_state.PNG)


`@part2`
Steps:

```sql
REPLACE(country,".","")
```

```sql
TRIM(country)
```

```sql
LEFT(country,2)
```

```sql
UPPER(country)
```


`@script`
You may find that a given field needs multiple functions acted on it.  In our example, in order to update all values in one query, we need the country field to include all four functions.  Replace, LEFT, UPPER, and TRIM.  To do this, you need to nest function together.  Remember that these string functions output a new string.  This means the output of one string function can be the input of another.  Taken step by step, you can combine them, as so.  Do take a moment to think about the order here.  If you were to use LEFT function first, then you would incorrectly output spaces and periods.


---
## Nesting Order Matters

```yaml
type: "TwoColumns"
key: "b739d7c240"
disable_transition: true
```

`@part1`
![](https://assets.datacamp.com/production/repositories/3775/datasets/5bb6381fe98fbdf50db0d592290157ae51ef282f/2.4_current_state.PNG)


`@part2`
![](https://assets.datacamp.com/production/repositories/3775/datasets/f3e18a46a77e6ec0d87e3597079669036d6a0018/2.4_left_error.PNG)


`@script`



---
## Take it step-by-step

```yaml
type: "FullCodeSlide"
key: "8bc4671482"
```

`@part1`
Final Code:
```sql
SELECT UPPER(LEFT(TRIM(REPLACE(country,".","")),2))
FROM country_orders
GROUP BY 1
```

Step-by-step:

```sql
REPLACE(country,".","")
```

```sql
TRIM(REPLACE(country,".",""))
```

```sql
LEFT(TRIM(REPLACE(country,".","")),2)
```

```sql
UPPER(LEFT(TRIM(REPLACE(country,".","")),2))
```


`@script`



---
## Final Slide

```yaml
type: "FinalSlide"
key: "f06e0482bb"
```

`@script`


