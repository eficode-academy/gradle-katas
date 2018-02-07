# Task properties

## Using local defined properties

Add a property, `recipient` in the properties.gradle.
Modify the `hello` task to greet the newly defined property
- Run `gradle hello`
- Q: Was the output as expected?

## Passing in parameters at runtime

When passing a property at runtime, you overwrite the existing property value or create a new if not existing.

- Run `gradle hello -Precipient=Earthlings`
- Q: Was the output as expected?

- Run `gradle hello`
- Q: Was the output as expected?

## Fallback values

Remove the property in the properties.gradle file and see the result without fallback values
Modify the `hello` task to greet the `recipient` parameter, or `"everyone"` if the parameter wasn't passed in.

- Run `gradle hello -Precipient=Earthlings`
- Q: Was the output as expected?

- Run `gradle hello`
- Q: Was the output as expected?

<br>
<br>

_Recommended continuation: *task-types/basic*_