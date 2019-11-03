1. In `/var/www/virtual/$name/` create two directories:
    `./published/`
    `./$name.git/`
2. In `$name.git` do `git init --bare'`
3. In `$name.git/hooks/post-receive` add the following:
```
    #!/bin/sh
    GIT_WORK_TREE=/var/www/virtual/$name/published git checkout -f
```
4. Clone the (now empty) repository for initialisation: `git clone ssh://user@$host/var/www/virtual/$name/$name.git`

https://community.atlassian.com/t5/Sourcetree-questions/How-to-create-a-GIT-repository-in-existing-folder-full-of-files/qaq-p/264461
