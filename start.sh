#!/bin/bash -e
set -e -x

# run this container only for testing integrety
echo remember to: docker push logicmoo/logicmoo_starter_image:latest \
 && echo docker run -v /sys/fs/cgroup/:/sys/fs/cgroup:ro --cap-add SYS_ADMIN --security-opt=seccomp:unconfined logicmoo/logicmoo_starter_image --privileged

#CMD /sbin/init ; service redis-server start ; systemctl enable butterfly.socket ; systemctl start butterfly.socket ; systemctl start apache2
systemctl enable butterfly.socket
system apache2 start # sleep 10000000

# if command starts with an option, prepend the default command and options
if [ "${1:0:1}" = '-' ]; then
  set -- butterfly.server.py --unsecure --host=0.0.0.0 --port=${PORT:-57575} "$@"
elif [ "$1" = 'butterfly.server.py' ]; then
  shift
  set -- butterfly.server.py --unsecure --host=0.0.0.0 --port=${PORT:-57575} "$@"
fi

# Set password
echo "root:${PASSWORD:-password}" | chpasswd

echo exec "$@"

echo "starting supervisor in foreground"
supervisord -c /etc/supervisor/supervisord.conf -n
