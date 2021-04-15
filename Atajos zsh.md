## Atajos Git

| g    | git                                                          |      |
| ---- | ------------------------------------------------------------ | ---- |
| gaa  | git add --all                                                |      |
| gbd  | git branch -d                                                |      |
| gcam | git commit -a -m                                             |      |
| gcb  | git checkout -b                                              |      |
| gco  | git checkout                                                 |      |
| gd   | git diff                                                     |      |
| ggl  | git pull origin $(current_branch)                            |      |
| ggp  | git push origin $(current_branch)                            |      |
| glg  | git log --stat                                               |      |
| glol | git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' |      |
| gm   | git merge                                                    |      |
| grm  | git rm                                                       |      |
| grs  | git restore                                                  |      |

##  Common Aliases

| l    | `ls -lFh`              |      |
| ---- | ---------------------- | ---- |
| cp   | `cp -i`                |      |
| t    | `tail -f`              |      |
| fd*  | `find . -type d -name` |      |
| ff   | `find . -type f -name` |      |
| grep | `grep --color`         |      |

## alias-finder

```
alias-finder "command"
```

## Rsync

| *rsync-copy*        | `rsync -avz --progress -h`                       |      |
| ------------------- | ------------------------------------------------ | ---- |
| *rsync-move*        | `rsync -avz --progress -h --remove-source-files` |      |
| *rsync-update*      | `rsync -avzu --progress -h`                      |      |
| *rsync-synchronize* | `rsync -avzu --delete --progress -h`             |      |

## Sysadmin

| ping | `ping -c 5` | Sends only 5 ICMP Messages |
| ---- | ----------- | -------------------------- |
|      |             |                            |