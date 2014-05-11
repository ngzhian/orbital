<section>
Git
===
Distributed version control system
</section>

<section>
Huh?
----
Software to keep track of your files, originally for code
</section>

<section>
Configuration
-------------
Tell git who you are
```
git config --global user.name "your name"
git config --global user.email "your email"
```

For Mac only
```
git config --global core.editor "open -t -W"
```
</section>

<section>
Initialize Git repository
-------------------------
- Windows: Fire up `Git Bash`
- Mac/Linux: `Terminal`

```
$ git init
Initialized empty Git repository in ...
```
</section>

<section>
Checking the status
-------------------
```
$ git status
On branch master

Initial commit

nothing to commit (create/copy files and use "git add" to track)
```
</section>

<section>
Adding files to be tracked
--------------------------
```
$ git add .
$ git status
On branch master

Initial commit

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)

        new file:   asdf
```
</section>

<section>
Ignoring files
--------------
A file that tells `git` what files/globs to ignore
```
$ touch .gitignore
```
</section>

<section>
Commit files
------------
```
$ git commit
# editor pops up
```
</section>

<section>
Commit messages
---------------
- Meaningful
- Describe changes made to code
</section>

<section>
Bad commit messages
-------------------
- Ooops!
- asdfasdfasdfasdfasdfasf
- It works!
[more @ whatthecommmit.com](http://whatthecommit.com/)
</section>

<section>
Good commit messages
--------------------
- Fix #113, software hangs when spacebar is pressed
- Move images to separate folder
- Separate test source from program source
</section>

<section>
See the history
---------------
```
$ git log
$ git log --oneline
```
</section>

<section>
See the differences
-------------------
```
$ git diff HEAD^
```
</section>

<section>
Git flow
--------
```
$ git status
$ git add .
$ git status
$ git commit
$ git status
```

We will get some practice when integrating Bootstrap
</section>

<section>
Collaborate
-----------
```
$ git clone
$ git push
```
</section>

<section>
References
----------
[Git for Beginners workshop by NUS Hackers](https://github.com/nushackers/git-for-beginners)

[Git Reference Manual](http://git-scm.com/doc)

[GitHub's Hello World Guide to GitHub](https://guides.github.com/activities/hello-world/)

[Try Git online](http://try.github.com)

[Inner workings of Git](http://eagain.net/articles/git-for-computer-scientists/)
</section>

