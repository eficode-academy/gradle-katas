# Checking properties

## Checking if a property exist

Modify the `propertyCheck` task to print `Yes, we have foo!` when the project has a property called `foo`, and print `Sorry, we're out of foo!` when it doesnt.

- Run `gradle propertyCheck`
- Assert the task prints `Sorry, we're out of foo!`
- Run `gradle propertyCheck -Pfoo=bar`
- Assert the task prints `Yes, we have foo!`

## Safely fetching property values

Modify the `propertyCheck` task to print the value of `foo`, or `Still out of foo!` if the property doesn't exist or is empty.

- Run `gradle propertyCheck`
- Assert the task prints `Still out of foo!`
- Run `gradle propertyCheck -Pfoo`
- Assert the task still prints `Still out of foo!`
- Run `gradle propertyCheck -Pfoo=bar`
- Assert the task now prints `bar`
- Q: Can you write a solution that doesn't rely on `project.hasProperty()`
