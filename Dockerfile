FROM andrefernandes/docker-devel-base

MAINTAINER Andre Fernandes

# based on work from jr@runningthematrix.com
# right now this is a shameful copy

RUN yum -y install libxml2-devel libxslt-devel && \
    yum clean all
RUN curl -L https://www.opscode.com/chef/install.sh | bash
RUN echo "gem: --no-ri --no-rdoc" > ~/.gemrc
RUN /opt/chef/embedded/bin/gem install -r berkshelf

