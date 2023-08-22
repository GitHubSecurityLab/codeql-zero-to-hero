# Challenge 1 - add the Code Scanning GitHub action to a repository
In this challenge, we will enable code scanning on a fork of this repository and observe what vulnerabilities CodeQL finds. The repository contains several intentionally vulnerable code snippets, which should be found by code scanning. Follow Instructions-option A to enable code scanning on the fork. 

If you prefer, you can choose another open source project for this challenge. In that case, you can either fork it (Instructions-option B) or clone and upload to a new repository on your account (Instructions—option C).

You can also choose one of your own public projects instead. If you encounter problems, see documentation for [enabling code scanning](https://docs.github.com/en/code-security/code-scanning/automatically-scanning-your-code-for-vulnerabilities-and-errors/configuring-code-scanning-for-a-repository#configuring-code-scanning-automatically). 

Hint: If you can’t find a project, use the GitHub search functionality, e.g. type in the GitHub search bar “language:python  stars:>100 type:repositories”

## Instructions-option A—fork this repository and enable code scanning

1. Fork this repository
Note: If any of the steps below do not work or look different, check out the [documentation](https://docs.github.com/en/code-security/code-scanning/automatically-scanning-your-code-for-vulnerabilities-and-errors/configuring-code-scanning-for-a-repository#configuring-code-scanning-automatically).

2. Go to the 'Security' tab > click 'Set up code scanning' button.
![image](https://user-images.githubusercontent.com/102833689/236031191-09a7fc6e-cc6c-4001-853d-170d87c18a88.png)

3. You'll be moved to another page. Now in 'Code scanning' section click 'Set up' button, then 'Default'.
![image](https://user-images.githubusercontent.com/102833689/236031570-fd77279c-bb4f-422b-847c-f9d790929b1e.png)

4. A pop up should appear. Click 'Enable CodeQL'

![image](https://user-images.githubusercontent.com/102833689/236031879-815c0e57-d2d2-4d3d-bb4b-d7553c76de94.png)

5. Wait a few minutes for the scan to complete. Go to 'Security' tab and see the alerts that have been triggered.

## Instructions—option B—fork another open source repository and enable code scanning
Some open source projects will have their own Actions workflows defined. If you fork a repository with existing workflows, these workflows will be disabled by default. This is a security measure to protect you from potentionally [malicious workflows](https://securitylab.github.com/research/github-actions-preventing-pwn-requests/), to prevent errors and lower Actions minutes usage. 

That's why before you enable code scanning, it's better if you first delete all actions workflows from your fork (generally they can be found in the `.github/workflows` folder), then go to the Actions tab and make sure that Actions are enabled.

1. Fork an open source project. When forking, select the option `Copy the main branch only`.

2. Check if the `.github/workflows` folder exists and if it does, delete it from your fork.

3. Go to the Actions tab and make sure that Actions are enabled (if they are disabled, a big pop up will show up).

4. Go to the 'Security' tab > click 'Set up code scanning' button.
![image](https://user-images.githubusercontent.com/102833689/236031191-09a7fc6e-cc6c-4001-853d-170d87c18a88.png)

5. You'll be moved to another page. Now in 'Code scanning' section click 'Set up' button, then 'Default'.
![image](https://user-images.githubusercontent.com/102833689/236031570-fd77279c-bb4f-422b-847c-f9d790929b1e.png)

6. A pop up should appear. Click 'Enable CodeQL'

![image](https://user-images.githubusercontent.com/102833689/236031879-815c0e57-d2d2-4d3d-bb4b-d7553c76de94.png)

7. Wait a few minutes for the scan to complete. Go to 'Security' tab and see the alerts that have been triggered.

## Instructions—option C—clone another open source project and upload to a new repository on your account

In a similar way as in option B, we don't want unknown Actions workflows running on your account.
The code for this challenge has shamelessly been copied from the [CodeQL examples](https://github.com/github/codeql/blob/main/python/ql/src/Security/CWE-089/examples/sql_injection.py).

1. Create a new repository on your account.

2. Duplicate an open source repository following the instructions [here](https://docs.github.com/en/repositories/creating-and-managing-repositories/duplicating-a-repository). Make sure to check if the `.github/workflows` folder exists and if it does, delete it from your copy of the repository.

3. Go to the Actions tab and make sure that Actions are enabled (if they are disabled, a big pop up will show up).

4. Go to the 'Security' tab > click 'Set up code scanning' button.
![image](https://user-images.githubusercontent.com/102833689/236031191-09a7fc6e-cc6c-4001-853d-170d87c18a88.png)

5. You'll be moved to another page. Now in 'Code scanning' section click 'Set up' button, then 'Default'.
![image](https://user-images.githubusercontent.com/102833689/236031570-fd77279c-bb4f-422b-847c-f9d790929b1e.png)

6. A pop up should appear. Click 'Enable CodeQL'

![image](https://user-images.githubusercontent.com/102833689/236031879-815c0e57-d2d2-4d3d-bb4b-d7553c76de94.png)

7. Wait a few minutes for the scan to complete. Go to 'Security' tab and see the alerts that have been triggered.

Congrats on completing challenge 1! 🎉
