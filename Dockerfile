FROM squidfunk/mkdocs-material:4.4.0

WORKDIR /home/

RUN \
    pip install virtualenv \
    && virtualenv venv \
    && source ./venv/bin/activate \
    && pip install --upgrade pymdown-extensions
