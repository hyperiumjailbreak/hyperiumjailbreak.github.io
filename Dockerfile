FROM squidfunk/mkdocs-material:4.4.2

WORKDIR /home/

COPY ./requirements.txt /home/

RUN \
    pip install -r requirements.txt && \
    rm -rf ~/.cache
