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
Real-world data is often messy, especially when dealing with strings. Since there are many different ways to format strings, it's important to understand how to clean them correctly.


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

```sql
SELECT REPLACE(country,".","")
FROM country_orders
GROUP BY 1
```{{2}}


`@part2`



`@script`
Let's go over some examples.  Our report has two values for the UK, one of which includes periods. We need to remove these periods.  The REPLACE function allows us to replace a substring with a new substring. You can remove the substring completely by replacing with empty quotes, as shown.


---
## Parsing Strings

```yaml
type: "TwoColumns"
key: "eb8758a494"
disable_transition: false
```

`@part1`
![](https://assets.datacamp.com/production/repositories/3775/datasets/3dbee5e624d829e7950a085f0735f4a6f5c2a805/left_table.PNG)

Keep only the first 2 characters.{{1}}

```sql
SELECT LEFT(country,2)
FROM country_orders
GROUP BY 1
```{{3}}


`@part2`



`@script`
In this example, we have two values for china, one of which has extra characters. But we only care about the first two characters. You can extract only the first N characters using the LEFT function.  By setting N to 2, we can solve this problem.


---
## Changing CASE

```yaml
type: "TwoColumns"
key: "3fd76c0e8b"
```

`@part1`
![](https://assets.datacamp.com/production/repositories/3775/datasets/0aa354a7ab9aef85ae3c31fe3f5d39a3e20f8d64/upper_table.PNG)

CASE should should be consistent.{{1}}

```sql
SELECT UPPER(country)
FROM country_orders
GROUP BY 1
```{{2}}


`@part2`



`@script`
A common occurrence is inconsistent case among values. In this example, we have the US split up into two rows, one for upper case and one for lower. SQL will read these as separate values. We can use the UPPER or LOWER function to solve this one. In a lot of cases, good practice is to have all strings be of the same case.


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
Sometimes, data has some extra spaces, either at the start or the end of a string. The solution here is to use a TRIM function, which simply removes all leading and trailing spaces.  Note that this does keep spaces found within the string.


---
## Nesting Functions

```yaml
type: "TwoColumns"
key: "c1b8f964b8"
```

`@part1`
![](https://assets.datacamp.com/production/repositories/3775/datasets/5bb6381fe98fbdf50db0d592290157ae51ef282f/2.4_current_state.PNG)


`@part2`
Steps:{{1}}

```sql
REPLACE(country,".","")
```{{1}}

```sql
TRIM(country)
```{{1}}

```sql
LEFT(country,2)
```{{1}}

```sql
UPPER(country)
```{{1}}


`@script`
So there's a few ways you can alter string values.  Now often times, you may need to use multiple functions on the same field.  You do this by nesting functions.  Since each string function outputs a string, you can use it as the input of the next function. In our example, we need to include all 4 of these functions: REPLACE, TRIM, LEFT, and UPPER.


---
## Take it step-by-step

```yaml
type: "FullCodeSlide"
key: "8bc4671482"
```

`@part1`
Step-by-step:
```sql
REPLACE(country,".","")
```{{1}}

```sql
TRIM(REPLACE(country,".",""))
```{{2}}

```sql
LEFT(TRIM(REPLACE(country,".","")),2)
```{{3}}

```sql
UPPER(LEFT(TRIM(REPLACE(country,".","")),2))
```{{4}}

Final Code:
```sql
SELECT UPPER(LEFT(TRIM(REPLACE(country,".","")),2))
FROM country_orders
GROUP BY 1
```{{5}}


`@script`
Let's take this step by step.  First, we want to REPLACE the string.  Next, we want to TRIM it, so we add that OUTSIDE of the replace function.  We do the same thing to take the first two characters with LEFT.  And again for UPPER.  The final query is a good amount of code, but taking it step-by-step allows you to set it up in a clear, logical way.


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
![](https://assets.datacamp.com/production/repositories/3775/datasets/f3e18a46a77e6ec0d87e3597079669036d6a0018/2.4_left_error.PNG){{1}}


`@script`
Do note that the order of the nesting matters.  In our example, if you used the LEFT function first, it would incorrectly keep extra characters, such as periods or spaces. Take some time to think IN WHAT ORDER the functions should be nested.


---
## Time to build!

```yaml
type: "FinalSlide"
key: "f06e0482bb"
```

`@script`
So that's how you clean messy strings in your data.  Let's put this to action and use these tactics on our report.

