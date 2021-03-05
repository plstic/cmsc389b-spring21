# J

## Preliminaries

J scripts have the extension `*.ijs`.

We are using J version `9.02`.

This assignment is due **Friday, March 26th at 11:59pm on Gradescope**.
You will submit one `hw.ijs` to the `J` Gradescope assignment.
You will be graded on public tests -- make sure you're passing each test locally before you submit.

### Main Console

You can run `jconsole` or `ijconsole` in your container to bring up a command-line terminal/REPL.
You can/will also use this to execute your J scripts.
Use `ctrl+d` to exit.

### Documentation

Refer to lecture notes -- **read the notes and the available documentation**.

### VSCode

This one provides some syntax highlighting:

[extension](https://marketplace.visualstudio.com/items?itemName=tikkanz.language-j)

## Assignment

J, like MATLAB, is useful for abstract computation.
As such, we aim to implement functions that compute things.
The file `hw.ijs` contains everything you need to get started.
Each function you have to implement has comments describing expected inputs and outputs.

### Testing

Public tests:
```txt
$ jconsole tests-pub.ijs
```

### Evaluation

ez.

* 100% public tests

Remember, though, that if you do any form of hard-coding, then you will be docked points.
For example, if you don't properly implement merge-sort and you rely on `/:~~`.
Or if you hard-code the solutions to the tests.
