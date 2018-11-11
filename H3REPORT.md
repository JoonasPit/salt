## H3

This was all written in markdown, as the assignment ordered.
The machine used for the assigment was my Acer Aspire V laptop running a Xubuntu 18.04 LTS OS. Minions will be reported later on as
the exercise goes on.

The minion used was a virtualbox xubuntu 18.04 LTS machine called azazel.

To read this article with pictures go to my website https://www.bloglinux.me/node/12

# C) Put the /srv/salt/ folder in to github.

I started the exercise by running the git --conf user.email and user.name commands to create a git user on my personal machine
I had already installed git earlier to share some code with a friend of mine so no installation was required, but to install git run 

'sudo apt -y install git'

So after the configuration stuff I ran the command

'git init .'

This makes the '.' and '..' git folders, that make adding, committing pulling and pushing possible inside the current folder you're working in.

With 'git add .' I added everything I had in my current /srv/salt/ folder inside the '.' folder and with 'git commit'. I made the changes ready to be put in git.

After this I logged into my github account and created a /salt/ repository.

I struggled for a while because I kept getting the "can't merge unrelated histories" message when I pulled from the repository. But after some searching I found,

'git pull <name> --allow-unrelated-histories' which worked like a dream and I got the licence file from the github repository added to my salt folder.

After this I ran 'sudo git push <the link to my repository> master' gave my username and password and voila the components of the /srv/salt folder became a part of the repository.

# D) Using blame diff and log commands

So I just simply ran the 'git log' command inside the /srv/salt/ folder just to see the editing I'd done on this article I'm writing. Especially, because I'd made a typing error in a

previous command I wrote down and I wanted to highlight the change I made afterwards. 

I chose my logfile to be 

commit 2e52fd65f9a8f4df6a5c0958a0a6c3e184472767 (HEAD -> master)
Author: Joonas 
Date:   Sun Nov 11 14:57:31 2018 +0200

    Added a word to H3.md

# git log and git blame

As you can see the first row is what file we're talking about (happens to be this file). The second row Author is pretty self explanatory as it's who made the change.

Date specifies When the change was made, and the last line is what I wrote after the 'git commit' command to tell what I changed in the file.

Now After this I ran git blame master H3REPORT.md to see changes made to the file.

2e52fd65 (Joonas 2018-11-11 14:57:31 +0200 30) After this I ran 'sudo git push <the link to my repository> master' gave my username and password and voila the components of the /srv/salt folder became a part of the repository.

This was more specific about what had been edited and at what time. It also showed the specific line that had been edited.

(Stopped doing the assingment due to father's day dinner)

# git diff

'git diff <file>' is used to see changes between commits. 

I used this file again to see the changes I'd made. After running 'git diff H3REPORT.md' the response was.

diff --git a/H3REPORT.md b/H3REPORT.md
index 703717a..5bd5829 100644
--- a/H3REPORT.md
+++ b/H3REPORT.md
@@ -54,3 +54,6 @@ Now After this I ran git blame master H3REPORT.md to see changes made to the fil
 This was more specific about what had been edited and at what time. It also showed the specific line that had been edited.
 
 (Stopped doing the assingment due to father's day dinner)
+
+
+A change

The +-signs show which lines were added between commits.

# E) Something stupid 'git reset hard'

This task had us do something stupid in the /srv/salt/ folder and then reset it before committing.

I simply changed the top.sls files name to top.blaablaa.

Then I ran 'git add .' and before running 'git commit' I decided to reset and ran 

'git reset --hard' the result was a return to a previous state.

joonas@joonas:/srv/salt$ sudo git reset --hard
HEAD is now at 52756cf Merge https://github.com/JoonasPit/salt

# F) A new module

The goal of this exercise was just to create a new salt module.

The module I chose to create was a quick banner Hello for my minions with figlet.

First I made a folder with 'mkdir figlet'. Inside it I created the init.sls file and the necessary new bash.bashrc file named new-bashrc.

The bashrc remained otherwise unchanged but at the end of the script I added 


clear
figlet -f standard "Hello My Minion"

The init.sls file simply read 

figlet:
  pkg.installed

/etc/bash.bashrc:
   file.managed:
   - source: salt://figlet/new-bashrc

After running 'sudo salt azazel state.apply figlet' the message could be read in the terminal of my minion.


#sources

- http://terokarvinen.com/2018/aikataulu-%e2%80%93-palvelinten-hallinta-ict4tn022-3004-ti-ja-3002-to-%e2%80%93-loppukevat-2018-5p
- https://stackoverflow.com/questions/37937984/git-refusing-to-merge-unrelated-histories-on-rebase
- http://terokarvinen.com/2016/publish-your-project-with-github

