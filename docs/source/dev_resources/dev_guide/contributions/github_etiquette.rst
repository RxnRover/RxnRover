GitHub Etiquette
================

This section outlines best practices for collaborating on `Rxn Rover's GitHub <https://github.com/RxnRover/RxnRover>`__ repository.

Following these guidelines ensures a productive and respectful environment for all contributors, especially given the unique challenges of working with LabVIEW and visual codebases.

General Guidelines
------------------

- **Be respectful and constructive**  
  Treat all contributors with courtesy. Provide feedback that is helpful, specific, and supportive.

- **Use descriptive commit messages**  
  Write clear, concise commit messages that explain what and why changes were made.

- **Keep issues focused**  
  Open issues that are clearly scoped to a single problem, bug, or feature request.

- **Beware big commits**  
  LabVIEW is notoriously difficult to manage with source control. Because LabVIEW saves files as binaries, even minor changes can result in large diffs. Avoid committing unnecessary file changes.

- **Save your work carefully**  
  Be cautious with `Save All` in LabVIEW—it can unintentionally overwrite files and obscure the real changes you've made. Save only what you’ve actively worked on.

Working with Pull Requests
--------------------------

- **Always work on a feature branch**  
  Never make direct commits to the `main` or `master` branch. Use clearly named branches like `feature/integrate-valve` or `fix/timer-logic`.

- **Keep pull requests focused and small**  
  Because visual diffs for LabVIEW are hard to review, keep PRs limited to small, well-defined changes. As a general rule, try to keep under 5–15 changed files per PR.

- **Document your changes diligently**  
  Include a clear and detailed description in your pull request. Specify:
  
  - What files were changed  
  - What the change accomplishes  
  - Any relevant dates or test notes

- **Request a review before merging**  
  Always tag another developer for review, especially when your changes impact shared resources or behavior.

Working with Issues
-------------------

- **Search before creating a new issue**  
  Look through open and closed issues to avoid duplicates and to contribute to existing discussions when applicable.

- **Separate issues, separate branches**  
  Avoid bundling multiple unrelated fixes into one branch or PR. This makes reviewing and debugging more difficult.

- **Close resolved issues**  
  Once your PR addressing an issue has been merged, make sure to close the related issue or link it properly in the PR description (`Closes #123`).

Thank You for Contributing!
---------------------------

Your contributions—big or small—help improve Rxn Rover for everybody. Thank you!
