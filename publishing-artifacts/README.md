# Publishing artifacts

## Setting up local publication

We'll be publishing artifacts to our local Maven repository (`~/.m2`). For this, the `maven-publish` plugin is a great help.

- Apply the `maven-publish` plugin
- Run the command `gradle tasks`
- Assert new publishing tasks appear

Now we need to zip up our artifact for publication.

- Configure the `bundleArtifact` task to zip up the `author.h` file created by the `buildHeader` task
- Run the command `gradle bundleArtifact`
- Assert the zip file was created and contains the header file

Up next is to define a publication, which will publish our zip file.

- Define a publication inside the publications closure
- Configure the zip file, or the `bundleArtifact` task as the publication's artifact
- Define the version, group id and artifact id for your publication
- Run the command `gradle publishToMavenLocal`
- Assert your publication was successful. Look inside your `~/.m2` directory.

_Hint_: shorten long task names to make them easier to run:

- `gradle pTML`
- `gradle pubToMavLoc`

--- Extra Credits ---
- Create an implied task dependency from publish, via bundleArtifact, to buildHeader.
- Bump the version of the the artifact. Re-publish and verify how it looks like in the .m2 repository
- Append a new field to the pom file. (suggestion description: build time) Look for withXml syntax: https://docs.gradle.org/current/dsl/org.gradle.api.publish.maven.MavenPublication.html
