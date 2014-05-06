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
``` bash
git config --global user.name "your name"
git config --global user.email "your email"
```

For Mac only
``` bash
git config --global core.editor "open -t -W"
```
</section>

<section>
Initialize Git repository
-------------------------
``` bash
git init
```
</section>

<section>
Checking the status
-------------------
``` bash
git status
```
</section>

<section>
Adding files to be tracked
--------------------------
``` bash
git add .
```
</section>

<section>
Ignoring files
--------------
``` bash
touch .gitignore
```
</section>

<section>
Commit files
------------
``` bash
git commit
```
</section>

<section>
Git flow
--------
``` bash
git status
git add .
git status
git commit
git status
```
</section>

<section>
Commit messages
---------------
- Meaningful
- Describe changes made to code
</section>

<section>
See the history
---------------
``` bash
git log
```
</section>

<section>
See the differences
-------------------
``` bash
git diff
```
</section>

<section>
Collaborate
-----------
``` bash
git clone
git push
```
</section>

<section>
References
----------
[Git for Beginners workshop by NUS Hackers](https://github.com/nushackers/git-for-beginners)

[Git Reference Manual](http://git-scm.com/doc)

[Try Git online](http://try.github.com)

[Inner workings of Git](http://eagain.net/articles/git-for-computer-scientists/)
</section>

