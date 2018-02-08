# Build phases

The `build.gradle` script in this exercise contains a property and two tasks:
    - `setTheValue` changes the value of `theValue`
    - `printTheValue` prints the value of `theValue`

Predict the outcome of the following commands:
    - `gradle printTheValue`
    - `gradle setTheValue printTheValue`

Run the commands and note the printed values.
 - Q: Did the output match your expectations? If not, what tripped you up?

Either modify the `printTheValue` value task to lazily evaluate `theValue`, or redesign the tasks to avoid relying on execution-time knowledge during the configuration phase.

<br />
<br />

_Recommended continuation: *TODO*_
