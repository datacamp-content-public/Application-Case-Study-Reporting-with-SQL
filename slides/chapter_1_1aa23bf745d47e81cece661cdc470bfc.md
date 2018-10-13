---
title: Insert title here
key: 1aa23bf745d47e81cece661cdc470bfc

---
## Title Slide

```yaml
type: "TitleSlide"
key: "1ad85bdd93"
```

`@lower_third`
name: Name Surname
title: Instructor


`@script`
In the previous lesson, you may have noticed


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



---
## String Functions

```yaml
type: "FullSlide"
key: "0c8e618a96"
```

`@part1`



`@script`



---
## String Functions

```yaml
type: "FullSlide"
key: "9d2a8053c1"
disable_transition: true
```

`@part1`
![](https://assets.datacamp.com/production/repositories/3775/datasets/d7f7cc82a54ad38e9baa52e160b97ec85a5a1a4a/functions_1.png)


`@script`



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



---
## Replacing or Removing Characters

```yaml
type: "TwoColumns"
key: "14e3d5134f"
disable_transition: false
```

`@part1`
Current:
![](https://assets.datacamp.com/production/repositories/3775/datasets/fdc3e64c7ba39c475bda9e2258937ce1de7afa19/replace_table.PNG)

Goal:
![](https://assets.datacamp.com/production/repositories/3775/datasets/4965640c7f020c64ec70128669f693eb22f7c40d/replace_output.PNG)


`@part2`
Must remove all periods from the strings.{{1}}

Use the ```REPLACE()``` function to remove or replace characters.{{2}}

```sql
SELECT REPLACE(country,".","")
FROM country_orders
GROUP BY 1
```{{3}}


`@script`



---
## Parsing Strings

```yaml
type: "TwoColumns"
key: "eb8758a494"
disable_transition: true
```

`@part1`
Current:
![](https://assets.datacamp.com/production/repositories/3775/datasets/3dbee5e624d829e7950a085f0735f4a6f5c2a805/left_table.PNG)

Goal:
![](https://assets.datacamp.com/production/repositories/3775/datasets/79b64d1ed0b2ced379da4f944f348395fbd1ef2e/left_output.PNG)


`@part2`
Must only keep the left 2 characters.{{1}}

Use the ```LEFT()``` function to extract a set number of characters.{{2}}

```sql
SELECT LEFT(country,2)
FROM country_orders
GROUP BY 1
```{{3}}


`@script`



---
## Changing CASE

```yaml
type: "TwoColumns"
key: "3fd76c0e8b"
```

`@part1`
From:
![](https://assets.datacamp.com/production/repositories/3775/datasets/0aa354a7ab9aef85ae3c31fe3f5d39a3e20f8d64/upper_table.PNG)

To:
![](https://assets.datacamp.com/production/repositories/3775/datasets/6c5fddf16b295446f1f484fbb07b9947b223cd1b/upper_output.PNG)


`@part2`
Most turn all characters to upper case.{{1}}

Use the ```UPPER()``` function.{{2}}

```sql
SELECT UPPER(country)
FROM country_orders
GROUP BY 1
```{{3}}


`@script`



---
## Remove Extra Spaces

```yaml
type: "TwoColumns"
key: "45f98bef09"
```

`@part1`
From:
![](https://assets.datacamp.com/production/repositories/3775/datasets/1472212859b22f4b5daa39f05a1687472acf7153/trim_table.PNG)

To:
![](https://assets.datacamp.com/production/repositories/3775/datasets/d9f77d0675da42c7d8a3560bc4990cc36fc63e19/trim_output.PNG)


`@part2`
Must remove excess spaces.{{1}}

Use the ```TRIM()``` function.{{2}}

```sql
SELECT TRIM(country)
FROM country_orders
GROUP BY 1
```{{3}}


`@script`
You'll notice a standard process here: First, determine how the string needs to change. Second, identify what function to use.  Lastly, update the code.


---
## Final Slide

```yaml
type: "FinalSlide"
key: "f06e0482bb"
```

`@script`


