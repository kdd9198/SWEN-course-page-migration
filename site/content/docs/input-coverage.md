---
title: 'Input Coverage with Hypothesis'
date: '2025-10-20T10:14:24-04:00'

weight: 4

draft: true
---

## In-Class Activity: Input Coverage with Hypothesis

In this activity, we will practice **input coverage** using [Hypothesis](https://hypothesis.readthedocs.io/en/latest/), a property-based testing library for Python.

### Step 1. Install Dependencies

```
pip install hypothesis 
```

### Step 2. Code Under Test (`calculator.py`)

Here’s a simple divide function with some constraints:

```python
def safe_divide(a: int, b: int) -> float:
    """
    Divides a by b with some input constraints:
    - b cannot be 0
    - both a and b must be between -1000 and 1000
    """
    if b == 0 or abs(a) > 1000 or abs(b) > 1000:
        raise ValueError("Invalid input")
    return a / b
```

### Step 3. Baseline Unit Tests (`test_calculator.py`)

```python
import pytest
from calculator import safe_divide

def test_normal_division():
    assert safe_divide(10, 2) == 5

def test_divide_by_zero():
    with pytest.raises(ValueError):
        safe_divide(10, 0)

def test_out_of_range_inputs():
    with pytest.raises(ValueError):
        safe_divide(2000, 10)
```

These tests check specific cases but don’t give us much **input coverage**.

### Step 4. Add Hypothesis Property-Based Tests

Now, let’s use Hypothesis to systematically explore input partitions.

```python
from hypothesis import given, strategies as st
from calculator import safe_divide

@given(st.integers(min_value=-2000, max_value=2000), st.integers(min_value=-2000, max_value=2000))
def test_safe_divide_property(a, b):
    print(f"Testing with: a={a}, b={b}")
    if b == 0 or abs(a) > 1000 or abs(b) > 1000:
        with pytest.raises(ValueError):
            safe_divide(a, b)
    else:
        result = safe_divide(a, b)
        assert abs(result * b - a) < 1e-8
```

Here Hypothesis will generate **hundreds of input combinations**, covering both valid and invalid partitions.

### Step 5. Run the Tests

```
pytest -v -s
```

### Deliverables

When you’ve finished, take a screenshot of your Terminal and upload it to `Drive → In-Class Activity → 6 Input Coverage`