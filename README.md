# Zsh

1. Instalar ohmyzsh

   1. Instalamos zsh
      
      ```
      sudo apt-get install zsh
      ```
      Instalamos OH MY ZSH

      ```
      wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
      ```
      Cambiar terminal a zsh
      ```
      chsh -s $(which zsh)
       ```

2. Instalar antigen

   1. instalar antigen

   2. ```
      curl -L git.io/antigen > antigen.zsh
      ```

3. borramos el archivo de .zshrc
      
      ```
      rm ~/.zshrc
      ```

4. ejecutar el archivo de bash cp
      ```
      cpConfig.sh
      ```
