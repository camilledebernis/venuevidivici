Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.

Here’s a sheet recapitulating how to merge well :) more info here

Starting a new feature

⇒ Create your own branch
(master) git status (CLEAN)
(master) git checkout -b my-feature
Push this new feature on master branch
⇒ last commit
⇒ create a pull request
⇒ go back to master branch
(my-feature) git add .
(my-feature) git commit -m 'XXXX'
(my-feature) git push origin my-feature
(my-feature) git status (CLEAN)
(my-feature) hub browse
# GO CREATE A PULL REQUEST ON GITHUB
(my-feature) git checkout master
(master)     git pull origin master
(master)     git sweep
(master)     git checkout -b my-new-feature

How to solve conflicts

⇒ when you can’t merge because of conflicts
⇒ try to resolve conflicts on gitHub. If not, follow these steps:
(my-feature) git status (CLEAN)
(my-feature) git checkout master
(master) git pull origin master
(master) git checkout my-feature
(my-feature) git merge master
# NOW IT'S TIME TO SOLVE ALL THE CONFLICTS
# OPEN SUBLIME TEXT AND FIX THEM: locate them with cmd+shift+f
(my-feature) git add .
(my-feature) git commit -m "Fix conflicts"
(my-feature) git push origin my-feature
hub browse
# GO ON GITHUB, NOW THE PULL REQUEST CAN BE MERGED
(my-feature) git checkout master
(master) git pull origin master
(master) git sweep
(master) git checkout -b my-new-feature
