## Setup local publishing

### Apply plugin
In order to use some predefined publishing tasks, you need a dedicated plugin

- Apply the 'maven-publish' plugin
- Run the command `gradle tasks`
- Q: Did the new publishing tasks appear?

### Create zip task
- Create a task that zips the author.h file
- Run the command `gradle bundleArtifact`
- Q: Unzip the .zip file manually and verify the content

### Create a publication
- Inside the publications closure, create a publication
- Reference the zip task to the artifact
    - _Hint: artifact bundleArtifact)_
- Q: What is happening here?
- Define version, groupId and artifactId for your publication
- Run the command `gradle bH pTML`
- Q: is your publication successful?
    - _Hint: look inside your ~/.m2 folder_
