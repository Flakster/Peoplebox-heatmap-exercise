# Build a Heatmap API

- Peoplebox collects feedback from employees about different dimensions of employee happiness - like Performance Management, Culture, Vision & Leadership, Manager Support etc.
- These are questions like - 'How happy are you with your company culture?' and this is on the scale of 5
- As a backend rails developer, you have to provide API data to the Frontend React Engineer who has to build an interface like below.

![image](https://user-images.githubusercontent.com/39259/89119488-759f1c00-d4cc-11ea-80ad-8a7792f73000.png)

# Models

## Employee Model
```
class Employee < ApplicationRecord
  attr_accessor :email
  attr_accessor :department # Has values - Sales, Engineering
  attr_accessor :location
  attr_accessor :gender
  attr_accessor :age
  attr_accessor :date_of_joining
end
```

## Response Model (from Survey)

```
class Response < ApplicationRecord
  attr_accessor :driver_name # Values - Role Clarity, Manager, etc
  attr_accessor :score # Values - 1,2,3,4,5
  belongs_to :employee
end
```

# Sample Data
## Sample Employee Table

| id | email          |	department   | location |	gender |age |	date_of_joining |
|----|----------------|--------------|----------|--------|----|-----------------|
| 1	 | rahul@acme.com |	Sales	| Bangalore |	Male |	25 |	25-01-2018 |
| 2	 | divya@acme.com |	Engineering |	New Delhi |	Female |	27 |	11-08-2018 |

## Sample Responses Table
| id |	employee_id	| driver |	score |
|----|--------------|--------|--------|
| 1  |   1	| Career Growth	| 4 |
| 2  |	1	| Role Clarity |	5 |
| 3	 | 1	| Vision & Leadership |	3 |
| 4  |	2	| Role Clarity |	3 |
