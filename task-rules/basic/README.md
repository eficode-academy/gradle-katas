# Task rules

 A flexible way of providing build support for a dynamic product

### Examine the product folder
 Each subfolder represent a variation within the product line

### Create a task rule
    - The task rule should follow these criterias:
        - Detect every task that starts with the phrase _build_
        - The task should throw an exception if the user tries to build a non existing product
            - _Hint: use file('path').isDirectory()_

### Execute local build script
    - In the execution phase, change the working directory to 'products/<id>'
    and run the build file present in the directory.
