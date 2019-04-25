# Gradle plugins

## Finding useful plugins

We're looking for a plugin that can help us with finding bugs in static Java code.

The plugin we are looking for is called `spotbugs`

![spotbugs](https://spotbugs.github.io/images/logos/spotbugs_logo_300px.png)

Look through Gradle plugin repositories for a plugin that can solve our problem:

- [docs.gradle.org](https://docs.gradle.org/current/userguide/standard_plugins.html)
- [plugins.gradle.org](https://plugins.gradle.org/)
- [ksoichiro/awesome-gradle](https://github.com/ksoichiro/awesome-gradle)

- Locate the spotbugs plugin

## Applying plugins

- Run `./gradlew tasks`
- Apply the plugin to your `build.gradle` build script
- Run `./gradlew tasks`
- Q: How did you apply your plugin? Are there other ways of doing so?

## Running the plugin

Under the `Verification tasks` part of the tasks list, spotBugs have added new functionality in the task called: `check - Runs all checks.`
Run that and check the result in the `build` folder.

## Configuring plugins

So the result you get is a bunch of XML files, that is not very user-friendly. So we would like the HTML version to be generated instead.

Configure the spotbugs plugin to use HTML instead, use the following configuration snippit

``` groovy
// To generate an HTML report instead of XML
tasks.withType(com.github.spotbugs.SpotBugsTask) {
  reports {
    xml.enabled = false
    html.enabled = true
  }
}
```

Run the check task again, and assert that you now have a html file as well.
