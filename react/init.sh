#!/bin/sh
ROOT_DIR="/usr/src/app"
APP_DIR="$ROOT_DIR/my-app"

if [ ! -e $APP_DIR ]; then
    cd $ROOT_DIR
    echo "[START] create react app..."
    npx -y create-react-app my-app
    echo "[END] create react app"
fi

cd $APP_DIR
echo "[START] npm start..."
npm start

exec "$@"