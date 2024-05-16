# desktop-website-link-shortcut

## Instructions d'utilisation :

1. Exécution du script :
- Assurez-vous que le script est exécutable en utilisant la commande chmod +x create_website_shorcut.sh.
- Exécutez le script en utilisant la commande ./create_website_shorcut.sh.

2. Suivez les instructions :
- Le script vous demandera d'entrer le nom du site et son URL.
- Un fichier .desktop sera automatiquement créé sur le bureau avec les informations fournies.

3. Exécution du raccourci :
- Une fois le raccourci créé, vous pouvez simplement double-cliquer dessus pour ouvrir le site web dans votre navigateur par défaut.

## Étapes pour ajouter le script en tant qu'alias :
1. Déplacer le script vers un emplacement approprié.
2. Ouvrir le fichier de configuration de votre shell :
- Si vous utilisez Bash, ouvrez ~/.bashrc_aliases :
```bash
nano ~/.bashrc_aliases
```
- Si vous utilisez Zsh, ouvrez ~/.zshrc_aliases :
```bash
nano ~/.zshrc_aliases
```
> 🚧
>
> Vérifier que le ficier de configuration .bashrc ou .zshrc prends compte du fichier des alias, avec ces lignes :
>
> ```bash
> if [ -f ~/.bash_aliases ]; then
>    . ~/.bash_aliases
>  fi
> ```
> Ou
> > ```bash
> if [ -f ~/.zsh_aliases ]; then
>    . ~/.zsh_aliases
>  fi
> ```
3. Ajouter l'alias au fichier de configuration :
- Ajoutez la ligne suivante à la fin du fichier de configuration. Cela définit un alias appelé creer-raccourci qui exécute votre script :
```bash
alias creer-raccourci='/path/to/create_website_shorcut.sh.'
```
4. Recharger le fichier de configuration :
- Pour Bash, exécutez la commande suivante pour recharger le fichier .bashrc :
```bash
source ~/.bashrc_aliases
```
- Pour Zsh, exécutez la commande suivante pour recharger le fichier .zshrc :
```bash
source ~/.zshrc_aliases
```
