## Setup local publishing

### Apply plugin
In order to use some predefined publishing task, you need a plugin

- Apply the 'maven-publish' plugin
- Run the command `gradle tasks`
- Q: Did the new publishing tasks appear?

### Create zip task
- Create a task that zips the author.h file
- Q: Unzip the .zip file manually and verify the content

### Create a publication
- Inside the publications closure, create a publication
- Q: When you execute the command 'gradle tasks', do new tasks show up?
- Reference the zip task ( artifact <bundleArtifact>)
- Q: What is happening here?
- Define version, groupId and artifactId for your publication
- Run the command `gradle bH pTML`
- Q: is your publication successful?
- __Hint: look inside your ~/.m2 folder__
