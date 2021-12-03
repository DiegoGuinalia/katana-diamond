Diamond Kata
============

The Diamond Kata is a TDD exercise. We have already provided a small collection of unit tests that
correctly assert the expected behaviour of the application.

The task is to get all the tests passing and have the code generate the expected string for a given
single character input.

Examples
--------

    input:
      A
    output:
      A

    input:
      B
    output:
      _A_
      B_B
      _A_

    input:
      E
    output:
      ____A____
      ___B_B___
      __C___C__
      _D_____D_
      E_______E
      _D_____D_
      __C___C__
      ___B_B___
      ____A____

Usage
-----

To run the tests you need to do the following:

1. Ensure you are using a compatible ruby version (>= 2.3.0)
2. `bundle install`
3. `bin/rspec`
