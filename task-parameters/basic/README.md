# Task parameters (basic)

## Using passed in parameters

Modify the `hello` task to greet the `recipients` parameter.

- Run `gradle hello -Precipient=Earthlings`
- Q: Was the output as expected?

- Run `gradle hello`
- Q: Was the output as expected?

## Fallback values

Modify the `hello` task to greet the `recipients` parameter, or `"everyone"` if the parameter wasn't passed in.

- Run `gradle hello -Precipient=Earthlings`
- Q: Was the output as expected?

- Run `gradle hello`
- Q: Was the output as expected?

<br>
<br>

_Recommended continuation: *task-dependencies*_