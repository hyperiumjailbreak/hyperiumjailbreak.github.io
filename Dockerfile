FROM squidfunk/mkdocs-material:4.4.0

WORKDIR /home/

RUN pip install pymdown-extensions
