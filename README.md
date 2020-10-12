# Ecolab

[Ecolab](https://ecolab.ademe.fr) est un service lancé par l'[ADEME](https://www.ademe.fr) et [Beta.gouv](https://beta.gouv.fr) pour apporter l'information environnementale au plus près des citoyens.

Nos autres dépôts sont :

* [ecolab-transport](https://github.com/betagouv/ecolab-transport) : pour le code et les données du [simulateur transport](https://ecolab.ademe.fr/apps/transport)
* [ecolab-climat](https://github.com/betagouv/ecolab-climat) : pour le code du [simulateur Nos GEStes Climat](https://ecolab.ademe.fr/apps/climat)
* [ecolab-data](https://github.com/betagouv/ecolab-data) : pour les données des simulateurs (facteurs d'émissions carbone...)
* [ecolab-alimentation](https://github.com/betagouv/ecolab-alimentation) : pour le code et les données Agribalyse du secteur alimentation
* [ecolab-agribalyse](https://github.com/betagouv/ecolab-agribalyse) : pour le code de l'application de recherche dans la base Agribalyse (exemple de ré-utilisation des donnée plus haut)
* [ecolab-batiment](https://github.com/betagouv/ecolab-batiment) : pour le code et les données du secteur du batiment

N'hésitez pas à les regarder, nous faire part de vos retours et même de vos contributions !


## For developers

Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.

To get it running :

Install ruby, e.g. using [`rbenv`](https://github.com/rbenv/rbenv#installation).

`rbenv install [ruby version]` the ruby version is specified in [.ruby-version](https://github.com/JenniferStephan/Ecolab/blob/master/.ruby-version).

Install nodejs, e.g. using [NVM](https://github.com/nvm-sh/nvm).

Install [Yarn](https://yarnpkg.com/lang/en/docs/install/#windows-stable).

Install postgresql. For ubuntu, run  :

```
sudo apt install -y postgresql postgresql-contrib libpq-dev build-essential
sudo -u postgres psql --command "CREATE ROLE `whoami` LOGIN createdb;"
```

Run `bin/setup`. This script will setup the Rails app for you, including loading the database.

Finally, `rails server` will let you use the app at `localhost:3000` 😎.
