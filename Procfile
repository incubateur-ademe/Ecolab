#web: bundle exec puma -C config/puma.rb

# with nginx
web: bin/start-nginx bundle exec puma -e ${RACK_ENV:-development}