FROM squidfunk/mkdocs-material:4.4.1

WORKDIR /home/

RUN pip install pymdown-extensions
