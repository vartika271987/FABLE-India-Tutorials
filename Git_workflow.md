# Git workflow

## Cloning

1\. **To clone new git repository** 

`git clone git@github.com:myfork/magpie.git` the link copied from users Github forked repository. The command is valid only if the *ssh* connection to the Github account is established (preferable). If this is not the case, use the *https* address. 

2\. **To set remote tracking to the upstream repositories**

`git remote add upstream git@github.com/magpiemodel/magpie.git` 

this will set two tracking links for you, both for your fork and for the main model. (alternatively use the *https* address if ssh is not set up)

`git remote -v`

this will show you to which remote repositories your local repository is connected. Usually it should be two repositories: the *origin* which is your forked repository, and the *upstream* which is the main repository which was added by the previous command. 

## Updating

1. **To get most updated version from main repository**

`git checkout develop`

it is recommended to update from the *develop* branch as most of the new features are included thare before the newest release. Therefore use the command above to checkout to a local *develop* branch (if it doesn't exist, see bellow how to create a branch) and pull the updates from the *upstream develop* branch by: 

`git pull upstream develop` 

After updating the local repository, it's a good practice to update the fork repository *origin/develop*, by simply pushing the newest changes

`git push`

 2\. **To create new branch**

`git branch branch_name` 

this will create a new branch *branch_name*. It will be a copy of a currently checked-out branch (you can see at which branch you are by `git status`). Next checkout the new branch to work on: 

`git checkout (name of new branch)`

If you want to see what are all the branches you have locally, in the origin and upstream, you can do that by: 

`git branch -a`

## Merging 

1\. **To merge to**

## Committing

1\. **To stage changes and updates from your work on local system on the branch for a commit** 

`git add file_name`

If there are many similar file names, use `*` as a joker replacement of the text. Also use `git status` to check what else needs to be staged, and what is already staged for a commit.  

2\. **To commit your changes to your branch on local system** 

`git commit –m “Commit message”` 

after all files are staged for a commit, you can commit by the command above. Make sure you provide a meaningful commit message. There are currently hooks implemented which might prevent you from committing in case there are warning from the code. You can still commit by bypassing the hook by: 

`git commit –nm “Commit message”` 

This will commit your changes to the local repository. The remote repositories *origin* and *upstream* are not aware of this. The next steps explain this briefly.

3\. **To push updates from your local repository to the Github website (fork)** 

`git push` 

4\. **To push updates from your fork (origin) to the main (upstram) repository**

create a *Git Pull Request (PR)*