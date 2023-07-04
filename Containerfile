FROM registry.redhat.io/rhel8/httpd-24

# Add application sources
ADD index.html /var/www/html/index.html
# RUN chown -R 1001:0 /tmp/src
USER 1001
# The run script uses standard ways to run the application
CMD run-httpd