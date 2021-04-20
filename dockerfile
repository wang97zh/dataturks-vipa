FROM klimentij/dataturks
ENV LOCAL_BAZAAR_DIR=./bazaar
ENV BAZAR_PARENT_DIR=/home/dataturks

# update java service to docker after run build
# COPY ./hope/target/dataturks-1.0-SNAPSHOT.jar /home/dataturks

#Copy Bazaar.

COPY $LOCAL_BAZAAR_DIR/src $BAZAR_PARENT_DIR/bazaar/src
COPY $LOCAL_BAZAAR_DIR/api $BAZAR_PARENT_DIR/bazaar/api
COPY $LOCAL_BAZAAR_DIR/webpack $BAZAR_PARENT_DIR/bazaar/webpack
COPY $LOCAL_BAZAAR_DIR/semantic $BAZAR_PARENT_DIR/bazaar/semantic
COPY $LOCAL_BAZAAR_DIR/bin $BAZAR_PARENT_DIR/bazaar/bin
COPY $LOCAL_BAZAAR_DIR/build $BAZAR_PARENT_DIR/bazaar/build
COPY $LOCAL_BAZAAR_DIR/static $BAZAR_PARENT_DIR/bazaar/static

COPY $LOCAL_BAZAAR_DIR/js $BAZAR_PARENT_DIR/bazaar/js
COPY $LOCAL_BAZAAR_DIR/css $BAZAR_PARENT_DIR/bazaar/css
#COPY $LOCAL_BAZAAR_DIR/img $BAZAR_PARENT_DIR/bazaar/img
COPY $LOCAL_BAZAAR_DIR/vendor $BAZAR_PARENT_DIR/bazaar/vendor

COPY $LOCAL_BAZAAR_DIR/.babelrc $BAZAR_PARENT_DIR/bazaar/.babelrc
COPY $LOCAL_BAZAAR_DIR/server.babel.js $BAZAR_PARENT_DIR/bazaar/server.babel.js

COPY $LOCAL_BAZAAR_DIR/semantic.json $BAZAR_PARENT_DIR/bazaar/semantic.json
COPY $LOCAL_BAZAAR_DIR/package.json $BAZAR_PARENT_DIR/bazaar/package.json
COPY $LOCAL_BAZAAR_DIR/onprem.php $BAZAR_PARENT_DIR/bazaar/onprem.php