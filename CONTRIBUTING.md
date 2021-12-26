# Contribution
This document provides guidelines for contributing to the project.

## Pull Request
Pull requests are the best way to propose changes to the codebase (we use ["fork-and-pull" Git workflow](https://github.com/susam/gitpr)). We actively welcome your pull requests:

1. Fork the repository to your own Github account.
2. Clone the project to your machine.
3. Create a branch locally with a succinct but descriptive name.
4. Commit changes to the branch following any formatting and testing guidelines specific to this repo.
5. Push changes to your forked repository.
6. Open a Pull Request in our repository.

## Guidelines

### Commit Message Guidelines
Use the combination of "Commit context" and "Commit summary" with an optional "Commit description".

* Commit context: Use 1-3 prefixes to describe the context of your commit Like add/update/remove.
* Commit summary: Always use the imperative present tense. Don’t capitalize the first letter of the commit message. Don’t use a period at the end of your text.
```
Ex: Suppose, You updated a file. So, the commit message could be -
    [update] readme file updated
```

### PR Guidelines
Format: [Branch Name][Action] Comment

```
Ex: Suppose, You added some functionality. So, the title could be -
    [master][add] added function to read input from user
```

### Coding Guidelines
* Try to put comments in your code.
* Try to follow DRY (Don't Repeat Yourself) principle.

## Report Bugs
We use GitHub issues to track bugs. Report a bug by opening a new issue.

## Linting and Formatting
All of the terraform configuration files in the repository must be linted or formatted using `terraform fmt` to maintain a standard of quality.

## License
By contributing, you agree that your contributions will be licensed under its MIT License.