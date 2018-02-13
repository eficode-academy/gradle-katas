## Setup local publishing

### Apply plugin
- **In order to use some predefined publishing task, apply the 'maven-publish' plugin**
- Q: When you execute the command 'gradle tasks', do new tasks show up?

### Define repository
- **In the repositories closure, define a maven local respository**

### Create zip task
- **Create a task that zips the author.h file**
- Q: Unzip the file and verify the content

### Create a publication
- **Inside the publications closure, create a publication**
- Q: When you execute the command 'gradle tasks', do new tasks show up?
- **Reference the zip task ( artifact <zipTask>)**
- Q: What is happening here?
- **Define version, groupId and artifactId for your publication**
- Q: When you execute 'gradle bH pTML', is your publication successful? 
