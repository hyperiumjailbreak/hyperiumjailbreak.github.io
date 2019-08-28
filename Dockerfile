FROM squidfunk/mkdocs-material:4.4.2

WORKDIR /home/

RUN pip install --upgrade pymdown-extensions
