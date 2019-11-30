---
title: "Python3 and the Benefits of Static Type-Checking"
date: 2019-11-30
tags: dev python
---
If you come from a language such as Java or C++, you're well familiar with the rules that these languages impose around
forcing the developer to specify the types of all written expressions. First-time developers learning Python often learn
this aspect of different programming languages later in their coding journey. They may scoff at the notion of having to
define types for all variables and expressions that they declare because to them, it may appear tedious and unnecessary.
This is actually a new feature of Python3 and not many people have started taking advantage of utilizing this in their
codebases. However, if possible, people should start adding this simple update. As a result, the benefit of doing this
is three-fold and outlined in the list below. 

1. Reduction of bugs caught at run-time -- this is especially important in production level systems especially if you
   can't anticipate inputs that may be produced
2. Catch errors at compile time
3. Makes the code more readable/documentable (As a rule of thumb - comments in code never tell the truth)
4. Less time debugging production errors means more time for tacos - YES, if this won't convince you that this is the
   way, then I don't know what will.

The rest of this post will cover code examples exhibiting the differences between type annotated code in Python3 and
show how to apply static analysis tools against this code in capturing bugs ahead of time.

## The Python2 Way
Let's start with an example of un-annoted code below.
```python
def add_numbers(number_one, number_two):
    """Function that adds two numbers together

    Args:
        number_one (int): The first parameter.
        number_two (int): The second parameter.

    Returns:
        int: The return value
    """
    return number_one + number_two

# Example usage 
sum = add_numbers(1, 2)
```
This is a properly commented function with a function docstring that explains what the function intends to do and
provides the appropriate parameters and corresponding types to pass in. The return variable type is also provided here.
This is fine if we are comfortable with this function and description, but what happens when this function evolves? I
like lists and let's list out all the possiblilities for the following scenario: we decide to update the return type to
`str` type. What could possibly happen from a developer's perspective? 

1. No static-type checking means that you have to manually find all depending variables that depend on the output of
   this function and manage their resulting types. If you use an IDE, it won't check for these references at all.
2. You miss updating type references and now a bug is introduced into production code. 
3. Also, remember when I said documentation lies, but code doesn't. A person updating this function could forget to
   update the docstrings and you may think it still returns `int` type.
4. Mo problems, less time for tacos

## The Python3 Way
Here is the code from above with type annotations the Python3 way. As you can see from the function definition, you can
see right away what the input and return types are right away from reading the function definition. You didn't even
have to dive into the docstring to know this!
```python
# example.py
def add_numbers(number_one: int, number_two: int) -> int:
    """Function that adds two numbers together

    Args:
        number_one (int): The first parameter.
        number_two (int): The second parameter.

    Returns:
        int: The return value
    """
    return number_one + number_two

# Example usage 
sum_numbers: int = add_numbers(1, 2)
```

### Code Evolution
Here in this example, we're going to purposefully write the code in a way that it will fail. We'll change the function
to return a `str` type and any previous variable references from the output of this function will not be updated. We can
expect that this piece of code will fail to run as it will expect an integer type but receives a string type. You'll see
this below.

We'll then execute a static analysis using a tool on the code itself and show you where it captures the failure in the
code.

```python
# example_evolved.py
def add_numbers(number_one: int, number_two: int) -> str:
    """Function that adds two numbers together

    Args:
        number_one (int): The first parameter.
        number_two (int): The second parameter.

    Returns:
        # We're purposefully not update this docstring here. Documentation lies, code doesn't!
        int: The return value
    """
    return str(number_one + number_two) # Update the return type to str

sum_numbers: int = add_numbers(1,2) # We should expect to this to fail
sum_again: int = add_numbers(sum_numbers, 1) # Static analysis would reveal two incorrect types being passed in here
``` 

### Running a Static Analysis
We're going to run a static analysis on the code itself and show how it can capture these type errors during the
development lifecycle. The tool that will be used here is `mypy`. It was a tool created at Dropbox which does the
static-checking analysis at compile time. 

Assuming you know how to set up a virtualenv using Python3, the command to install mypy is
```sh
pip install mypy
```

#### example.py analysis
To run analysis on the `example.py` code above, we execute the following on the command line which results in the
following output.
```console
foo@bar:~$ mypy example.py
Success: no issues found in 1 source file
```
As expected, mypy does not generate any errors and the code is ready to ship.

#### example_evolved.py analysis
The resulting static analysis from running mypy is provided below. At this go-around, we can see that there are type
mismatches that were found when the code was being refactored. This allows us to quickly check what things will break
as code is updated in the repository.

```console
foo@bar:~$ mypy example.py
example_evolved.py:14: error: Incompatible types in assignment (expression has type "str", variable has type "int")
example_evolved.py:15: error: Incompatible types in assignment (expression has type "str", variable has type "int")
Found 2 errors in 1 file (checked 1 source file)
```

## Conclusion
From the one lone example above, it has been demonstrated that the utility in adding static typing to your python code
going forward will result in easier maintenance and overall less headaches in debugging programs, especially if they are
production level applications. 