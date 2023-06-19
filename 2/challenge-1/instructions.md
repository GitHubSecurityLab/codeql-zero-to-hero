# Challenge 1 - add the Code Scanning GitHub action to a repository
In this challenge, we will enable code scanning on a fork of this repository and observe what vulnerabilities CodeQL finds. The repository contains several intentionally vulnerable code snippets.

If you prefer, you can choose another open source project, make a fork of it on your personal GitHub account and then enable Code Scanning on it. You can also choose one of your own public projects instead. If you encounter problems, see documentation for [enabling code scanning](https://docs.github.com/en/code-security/code-scanning/automatically-scanning-your-code-for-vulnerabilities-and-errors/configuring-code-scanning-for-a-repository#configuring-code-scanning-automatically). 

Hint: If you can’t find a project, use the GitHub search functionality, e.g. type in the GitHub search bar “language:python  stars:>100 type:repositories”

## Instructions:

1. Fork this repository.
Note: If anyone of the steps below do not work or look different, check out the [documentation](https://docs.github.com/en/code-security/code-scanning/automatically-scanning-your-code-for-vulnerabilities-and-errors/configuring-code-scanning-for-a-repository#configuring-code-scanning-automatically).
2. Go to the 'Security' tab > click 'Set up code scanning' button.
![image](https://user-images.githubusercontent.com/102833689/236031191-09a7fc6e-cc6c-4001-853d-170d87c18a88.png)

3. You'll be moved to another page. Now in 'Code scanning' section click 'Set up' button, then 'Default'.
![image](https://user-images.githubusercontent.com/102833689/236031570-fd77279c-bb4f-422b-847c-f9d790929b1e.png)

4. A pop up should appear. Click 'Enable CodeQL'

![image](https://user-images.githubusercontent.com/102833689/236031879-815c0e57-d2d2-4d3d-bb4b-d7553c76de94.png)

5. Wait a few minutes for the scan to complete. Go to 'Security' tab and see the alerts that have been triggered.

The code for this challenge has shamelessly been copied from the [CodeQL examples](https://github.com/github/codeql/blob/main/python/ql/src/Security/CWE-089/examples/sql_injection.py).

Congrats on completing challenge 1! 🎉
