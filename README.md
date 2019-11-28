# Ecolab

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