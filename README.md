## Getting Started

1. Vérifiez que vous avez Ruby d'installé sur votre machine, ainsi que sqlite:

        $ ruby -v
        
    Si c'est bon vous pouvez installer Bundler et Rails:
    
        $ gem install bundler
        $ gem install rails
        
2. Clonez notre application puis déplacez vous dans le dossier de l'appliaction:

        $ git clone https://github.com/gwenaelCruz/twitter_ruby.git
        $ cd twitter_ruby

3. Mettez à jour l'application:

        $ bundle install
        $ rake db:setup

4. Lancer l'application:

        $ rails server

5. Utilisez votre navigateur préféré, allez sur `http://localhost:3000`:
"C'est terminé !"
