cd `dirname $0`

PIDFILE="tmp/pids/server.pid"

if [ -e "$PIDFILE" ]; then
  kill "$(cat "$PIDFILE")"
fi

bin/rails tmp:cache:clear
bin/rails assets:precompile RAILS_ENV=production
bin/rails db:migrate RAILS_ENV=production

bin/rails s -e production -b 0.0.0.0 -d
