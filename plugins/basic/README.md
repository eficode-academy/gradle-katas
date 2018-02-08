##Gradle plugins

Why recreate something someone has done better than you?

### Reasearch potential useful plugins

[Collection of useful Gradle plugins](https://github.com/ksoichiro/awesome-gradle)

Find a plugin and the related documentation of a plugin that solves a problem of yours.

    - eg. the C language plugin


### Apply plugin

- Apply the plugin to your build.gradle
- Q: Did new tasks appear in your task list?

### The C plugin
With the C plugin, you get tasks for compilation, build and clean.

It is strict in where it looks for the source files. Something like this
```
src
└── main
    └── c
        ├── author.h
        └── main.c

```


- 