# Git Course
## Getting started
### Installing git
#### Linux
If you have admin user rights in your computer, use `sudo apt-get install`.
Otherwise download and run `script.sh` from this repository.
#### Mac
Download and install from [Git website](https://git-scm.com/download/mac).
### Configuring your profile
First check that git is properly installed by typing `git` in your terminal.
Then set your name and e-mail address:
```Shell
git config --global user.name "Homer Simpson"
git config --global user.email "homer@springfieldpower.com"
```
I also recommend adding an alias that makes `git log` much prettier:
```Shell
git config alias.hist "log --pretty=format:\"%h %ad | [%an] %s%d\" --graph --date=short"
```
And then use `git hist` in place of `git log`.
## First repo
### Init the repository
Make a new directory for your project and then let's `git init` the repository!
```Shell
mkdir project
cd project
git init
```
You'll get a confirmation that an empty repository has been created.
### Adding files to the project
To add a file to your project, you first need to add them in the `stage`. The stage is a temporary space where files are added before commiting them. You can freely add and remove files to the stage before finally commiting them to the repository. Once the staged files are commited, their current versions remain in your repository and you'll be able to recover them in the future, but the commit can no longer be modified.
Let's start by creating an empty file.
```Shell
touch file.txt
```
Now check the `status` of the repository with
```Shell
git status
```
You will see that `file.txt` appears in the list of _Untracked files_. This means that `file.txt` does not belong to the repository and git is not tracking the changes made on this file. To add it to the project, we first need to add them to the staging area using `git add`.
```Shell
git add file.txt
git status
```
Voila! See that now `file.txt` is in the _Changes to be commited_? That means that we are only one step away from permanently storing `file.txt` in its current version! Let's make a commit to add `file.txt` to the project:
```Shell
git commit -m "Add file.txt"
```
Now we have added `file.txt` to the repository and git will track the changes made to this file. If you immediately type `git status` git will report _nothing to commit, working directory clean_. This means that all the tracked files are in their latest versions. Let's now update `file.txt` and see how git reacts...
```Shell
echo "Hello!" > file.txt
git status
```
Note that `file.txt` is now in the list of file that have _changes not staged for commit_, that means that the file differs from its latest version (the last commit). We use `git diff` to see which changes have been made to any file since the last commit:
```Shell
git diff file.txt
```
