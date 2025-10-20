---
title: 'Python Test Doubles'
date: '2025-10-20T10:12:49-04:00'

weight: 1

draft: true
---

## In-Class Activity – Python Test Doubles (Dummies, Stubs, Fakes, Mocks)

### Objective

Practice using different types of test doubles in Python using `unittest`.

### Instructions

1. Create two files:
    * `order.py` → main code under test
    * `test_order.py` → test cases
2. Implement the test doubles as shown in the examples below.
3. Run the tests (`python -m unittest test_order.py`)and capture the output.

### System Under Test (SUT)

In `order.py`, paste the following:

```python
class Shop:
    def get_discount(self):
        # Imagine this goes to a remote API or DB
        raise NotImplementedError("Connect to external system!")

    def save_order(self, order):
        # Imagine saving order to database
        raise NotImplementedError("Not implemented yet")


class Order:
    def __init__(self, shop):
        self.shop = shop
        self.items = []

    def add(self, product_id, quantity, price):
        self.items.append((product_id, quantity, price))

    def get_total(self):
        subtotal = sum(q * p for _, q, p in self.items)
        discount = self.shop.get_discount()
        return subtotal * discount

    def save(self):
        self.shop.save_order(self)
```

This simulates a system where Order depends on Shop. Testing this directly is hard because Shop is incomplete → perfect use case for test doubles!

### Step 1 – Dummies

In `test_order.py`, start with a dummy that just fills the constructor but does nothing:

```python
import unittest
from order import Order, Shop

class DummyShop(Shop):
    def get_discount(self):
        return 1.0  # fixed value, won't affect much

    def save_order(self, order):
        pass  # do nothing


class TestOrderWithDummy(unittest.TestCase):
    def test_total_with_dummy(self):
        shop = DummyShop()
        order = Order(shop)
        order.add(101, 2, 10.0)  # 2 items at $10 each
        self.assertEqual(order.get_total(), 20.0)


if __name__ == "__main__":
    unittest.main()
```

This shows a dummy that provides the minimum implementation to let the test run.

### Step 2 – Stubs

A stub with configurable behavior:

```python
class StubShop(Shop):
    def __init__(self, discount=1.0):
        self.discount = discount

    def get_discount(self):
        return self.discount

    def save_order(self, order):
        pass


class TestOrderWithStub(unittest.TestCase):
    def test_discounted_total(self):
        shop = StubShop(discount=0.8)  # 20% discount
        order = Order(shop)
        order.add(101, 2, 10.0)
        self.assertEqual(order.get_total(), 16.0)
```

Here the stub provides controlled responses for testing different scenarios.

### Step 3 – Fake Objects

A simplified implementation of a dependency (like a fake database).

```python
class FakeShop(Shop):
    def __init__(self):
        self.saved_orders = []
        self.discount = 0.9

    def get_discount(self):
        return self.discount

    def save_order(self, order):
        self.saved_orders.append(order)


class TestOrderWithFake(unittest.TestCase):
    def test_save_order(self):
        shop = FakeShop()
        order = Order(shop)
        order.add(202, 1, 50.0)
        order.save()
        self.assertEqual(len(shop.saved_orders), 1)
```

### Step 4 – Mock Objects

Use mocks to verify interactions and method calls.

```python
from unittest.mock import MagicMock

class TestOrderWithMock(unittest.TestCase):
    def test_mock_discount_and_save(self):
        shop = MagicMock()
        shop.get_discount.return_value = 0.5  # 50% discount

        order = Order(shop)
        order.add(303, 2, 20.0)

        total = order.get_total()
        self.assertEqual(total, 20.0)  # 40 * 0.5 = 20

        order.save()
        shop.save_order.assert_called_once_with(order)
```

The mock both simulates behavior and verifies interactions (e.g., assert_called_once_with)

### Deliverables

* Python file with test doubles implementation.
* Test output showing that all test cases passed.
* Submit your Python file and test outputs to `Drive → In-Class Activity → Test Doubles`