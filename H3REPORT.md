## H3

This was all written in markdown, as the assignment ordered.
The machine used for the assigment was my Acer Aspire V laptop running a Xubuntu 18.04 LTS OS. Minions will be reported later on as

the exercise goes on.


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

After this I ran 'sudo git push <the link to my repository>' gave my username and password and voila the components of the /srv/salt folder became a part of the repository.
