#!/bin/bash

read -d '' CONTENTS << EOF
/* The amount of foo files to generate */
ext.fooCount = 10

task generateFoos {
    group 'Foo creation'
    description 'Generates the foo files'

    def targetDirectory = file('foo/generated')

    doLast {
        println("[generateFoos] Generating " + fooCount + " foo files")
        targetDirectory.mkdirs()
        (0..fooCount-1).each { num ->
            new File(targetDirectory, "foo-" + num).text = "This is foo file #" + num
        }
        println '[generateFoos] Finished!'
    }
}

task transformFoos {
    group 'Foo creation'
    description 'Transforms the foo files'

    dependsOn generateFoos

    def sourceDirectory = file('foo/generated')
    def targetDirectory = file('foo/transformed')

    doLast {
        println '[transformFoos] Transforming foo files'
        targetDirectory.mkdirs()
        sourceDirectory.listFiles().each { sourceFile ->
            def targetFile = new File(targetDirectory, sourceFile.name + "-t")
            targetFile.text = sourceFile.text.toUpperCase()
        }
        println '[transformFoos] Finished!'
    }
}
EOF

source ../../.shared/utils.sh
initkata "$CONTENTS"
