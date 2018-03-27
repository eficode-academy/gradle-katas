# Task rules

The `product` directory contains some subdirectories representing product variations. Create a task rule that does the following:

- Pick up tasks that follow the `build_<product>` scheme, printing the name of the product
- Throw an exception calls `build_<product>` with an invalid if the user tries to build a non existing product

_Hint_: Use `file('file/path').isDirectory()` to check if a path is a valid directory

- Run `gradle buildNimbus2000` and `gradle buildNimbus4300`
- Verify that the first build was successful and the second failed
