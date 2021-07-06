## Atajos Git

| g    | git                                                          |                                                       |
| ---- | ------------------------------------------------------------ | ----------------------------------------------------- |
| gaa  | `git add --all`                                              | agrega todos los documentos de repositorio            |
| gbd  | `git branch -d`                                              | borra una rrama                                       |
| gcam | `git commit -a -m`                                           | crea un comentario  agrega todo lo del repositior     |
| gcb  | `git checkout -b`                                            | crea una rama y pasa a ella                           |
| gco  | `git checkout`                                               | cambia de commit o branch                             |
| gd   | `git diff`                                                   | muetras las diferencias entre los dos achivos         |
| ggl  | `git pull origin $(current_branch)`                          | trae de remote lo que tenga en el repositorio         |
| ggp  | `git push origin $(current_branch)`                          | sube a remote lo que tenga en local                   |
| glg  | `git log --stat`                                             | me muestras los estadisticos                          |
| glol | `git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'` | muentra deanera grafica los cambios en el repositorio |
| gm   | `git merge`                                                  | une dos ramas                                         |
| grm  | `git rm`                                                     | borra un archivo del repositorio                      |
| grs  | `git restore`                                                | de un archivo borralo lo restaura                     |

##  Common Aliases

| l    | `ls -lFh`              | muestra en formato humano el contenido de un directorio |
| ---- | ---------------------- | ------------------------------------------------------- |
| cp   | `cp -i`                | copia copia en recursivo                                |
| t    | `tail -f`              | muestra los cambios de un archivo                       |
| fd*  | `find . -type d -name` | busca un directorio por nombre                          |
| ff   | `find . -type f -name` | busca un archivo por nombre                             |
| grep | `grep --color`         | busca y encuentra con grep                              |

## alias-finder

```
alias-finder "command"
```

## Rsync

| *rsync-copy*        | `rsync -avz --progress -h`                       | copia con rsync     |
| ------------------- | ------------------------------------------------ | ------------------- |
| *rsync-move*        | `rsync -avz --progress -h --remove-source-files` | mueve con rsync     |
| *rsync-update*      | `rsync -avzu --progress -h`                      | actualiza con rsync |
| *rsync-synchronize* | `rsync -avzu --delete --progress -h`             | sincroniza          |

## atajos visual studio code

![image-20210419110409360](C:\Users\winda\AppData\Roaming\Typora\typora-user-images\image-20210419110409360.png)

![image-20210419110548725](C:\Users\winda\AppData\Roaming\Typora\typora-user-images\image-20210419110548725.png)

![image-20210419110656672](C:\Users\winda\AppData\Roaming\Typora\typora-user-images\image-20210419110656672.png)

## Emmet

| nav>ul>li            | `<nav>    <ul>        <li></li>    </ul> </nav>`             |      |
| -------------------- | ------------------------------------------------------------ | ---- |
| div+p+bq             | `<div></div> <p></p> <blockquote></blockquote>`              |      |
| div+div>p>span+em^bq | `<div></div> <div>     <p><span></span><em></em></p>     <blockquote></blockquote> </div>` |      |
| ul>li.item$*5        |                                                              |      |
| ul>li.item$@-*5      | `<ul>    <li class="item5"></li>    <li class="item4"></li>    <li class="item3"></li>    <li class="item2"></li>    <li class="item1"></li> </ul>` |      |
| a{Click me}          | `<a href="">Click me</a>`                                    |      |

