#!/bin/sh
export SECRET_KEY_BASE=`RAILS_ENV=production bundle exec rake secret`
bin/rails db:migrate RAILS_ENV=production
bin/rails assets:clobber RAILS_ENV=production
bin/rails assets:precompile RAILS_ENV=production
bundle exec puma -t 5:5 -e production -C config/puma.rb
