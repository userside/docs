alias sphinx-serve="./venv/bin/sphinx-autobuild --port 8080 --host 127.0.0.1 source build"

sphinx-build () {
    ./venv/bin/sphinx-build -M ${1} source public
}

python-venv-create () {
    python3 -m venv venv
    ./venv/bin/python -m pip install --upgrade pip setuptools
    ./venv/bin/pip install --upgrade -r requirements.txt
    source ./venv/bin/activate
}
