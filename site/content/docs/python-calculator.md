---
title: 'Python Calculator'
date: '2025-10-20T10:13:51-04:00'

weight: 3

draft: true
---

## In-Class Activity: Code Coverage

In this activity, you will practice writing tests for a simple calculator module and measuring code coverage.

### Step 1: Setup

1. Ensure Python is installed.
2. Install `pytest` and `coverage`
3. Create a folder for the activity and create the following files:
    * `calculator.py` – contains the functions to test
    * `test_calculator.py` – your test file

### Step 2: Functions

Your `calculator.py` should include functions like:

```python
def divide(a, b):
    if b == 0:
        return None
    return a / b

def is_positive(x):
    if x > 0:
        return True
    elif x == 0:
        return None
    else:
        return False

def max_of_three(a, b, c):
    if a >= b and a >= c:
        return a
    elif b >= a and b >= c:
        return b
    else:
        return c

def safe_sqrt(x):
    if x < 0:
        return None
    return x ** 0.5
```

### Step 3: Writing Tests

Write test cases in `test_calculator.py` using `pytest`. Aim to:

* Exercise each function
* Cover different branches (conditions)
* Achieve 100% statement and branch coverage

### Starter Tests (`test_calculator.py`)

These tests cover some basic functionality, but coverage is not yet complete:

```python
import pytest
from calculator import divide, is_positive, max_of_three, safe_sqrt

def test_divide_basic():
    assert divide(6, 3) == 2

def test_is_positive_basic():
    assert is_positive(5) == True

def test_max_of_three_basic():
    assert calculator.max_of_three(3, 2, 1) == 3

def test_safe_sqrt_basic():
    assert safe_sqrt(4) == 2
```

**Task:** Add additional test cases to cover all statements and branches.

### Step 4: Measure Coverage

1. Run tests with coverage:
    ```
    coverage run --branch --source=calculator -m pytest
    ```
2. View the coverage report:
    ```
    coverage report -m
    ```
3. Optionally, generate an HTML report:
    ```
    coverage html
    open htmlcov/index.html
    ```

### Deliverables

* Completed `test_calculator.py` with sufficient tests
* Coverage report (console output screenshots or HTML report) to `Drive → In-Class Activity → Code Coverage`

Have fun exploring different test cases and seeing how coverage changes!