# Task flow (basic)

## Controlling task flow

Make the `goodbye` task always run after the `hello` task in case both are executed.

- Q: Which method did you use, and why?
- Run `gradle goodbye`
- Q: Was the output as expected?
    
## Task dependencies

Make the `hello` task always run before the `goodbye`, disregarding whether it was explicitly called or not.

- Run `gradle goodbye`
- Q: Was the output as expected? 

_Recommended continuation: *task-parameters/basic*_
