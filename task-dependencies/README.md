## Task dependencies and ordering
_The tasks in a build.gradle file can be viewed as a DAG  - directed acyclic graph. Built in methods like *dependsOn, finalizedBy, mustRunBefore* is frequently used in Gradle to support this structure_
    

## Make the task 'followUpGreeting' to always run after the 'hello' task
- Q: Which method did you use, and why?
- run the command 'gradle -q hello'
- Q: Was the output as expected?
    
## Make the task 'followUpGreeting' dependent on 'hello'
- run the command 'gradle -q followUpGreeting'
- Q: Was the output as expected? 