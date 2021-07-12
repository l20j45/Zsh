1. 

2. Instalar git

   1. Configurar git

      1. ```
         git config --global user.email "l20j45_@gmail.com"
         git config --global user.name "Daniel Rojas"
         ```

   2. Crear llave ssh

      1. ```bash
         ssh-keygen -t rsa -b 4096 -C "l20j45_@hotmail.com"
         ```

      2. Copiar llave ssh

         1. En Wsl

            1. ```bash
               cat .ssh/id_rsa.pub | clip.exe
               ```

         2. En linux

            1. ```bash
               sudo apt-get install xclip
               xclip -sel clip < ~/.ssh/id_rsa.pub
               ```
      
    3. Copiar la llave a github
   
    4. Probar conexion con github
   
        1. ```bash
           ssh -T git@github.com
           ```
   
           

