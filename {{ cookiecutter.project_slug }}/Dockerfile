FROM debian:stable-slim as build

RUN mkdir /root/quicklisp 
ADD https://beta.quicklisp.org/quicklisp.lisp /root/quicklisp/quicklisp.lisp

RUN set -x; \
  apt-get update; \
  apt-get install --no-install-recommends -y sbcl sbcl-source build-essential git ca-certificates ; \
  apt-get install --no-install-recommends -y libzstd-dev libsqlite3-dev apt-utils; \
  rm -rf /var/lib/apt/lists/*; \
  git clone https://github.com/sbcl/sbcl.git /root/sbcl; \
  bash -c "cd /root/sbcl ; ./make.sh --prefix=/opt/sbcl && ./install.sh --prefix=/opt/sbcl"; \
  rm -fr /root/sbcl; \
  /opt/sbcl/bin/sbcl --load /root/quicklisp/quicklisp.lisp \
  --eval '(quicklisp-quickstart:install)' \
  --quit; \
  rm /root/quicklisp/quicklisp.lisp

FROM debian:stable-slim

COPY --from=build /root/quicklisp /root/quicklisp
COPY --from=build /opt/sbcl /opt/sbcl
COPY ./dot.sbclrc /root/.sbclrc 

RUN set -x; \
  apt-get update; \
  apt-get install -y --no-install-recommends git ca-certificates sqlite3 libzstd; \
  rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . /app

WORKDIR /
COPY ./scripts/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["/opt/sbcl/bin/sbcl"]
