### 101

1. Configure git locally:
```
% git config --global user.name "Henrik"
% git config --global user.email hest@hest.hest
% git config --global credential.helper store
```
(use `cache` instead of `store` to do it on a per session basis)

2. Create repository on Github [https://github.com/boegh?tab=repositories](https://github.com/boegh?tab=repositories)
3. Clone repository: `git clone https://github.com/boegh/repository`
4. `% git add random.file`
5. `% git commit -m "Random"`
6. `% git push`

### Add stuff

* `% git add -A`: All changes
* `% git add .`: New files + modifications (no deletions!)
* `% git add -u`: Modifications + deletions (no new files!)

### Git with live-updates to manage webserver

1. In `/var/www/virtual/$name/` create two directories:
    `./published/`
    `./$name.git/`
2. In `$name.git` do `git init --bare'`
3. In `$name.git/hooks/post-update` add the following:
```
    #!/bin/sh
    GIT_WORK_TREE=/var/www/virtual/$name/published git checkout -f
```
4. Clone the (now empty) repository for initialisation: `git clone ssh://user@$host/var/www/virtual/$name/$name.git`

### (the end)

https://community.atlassian.com/t5/Sourcetree-questions/How-to-create-a-GIT-repository-in-existing-folder-full-of-files/qaq-p/264461
