1. In /var/www/virtual/$name/ create two directories:
    ./published/
    ./$name.git/

2. In $name.git 'git init --bare'
3. In $name.git/hooks/post-receive add the following:
    
    #!/bin/sh
    GIT_WORK_TREE=/home/shell-username/example.com git checkout -f
    
4. Clone the (now empty) repository for initialisation:
    'git clone ssh://user@$host/var/www/virtual/$name/$name.git'
    
