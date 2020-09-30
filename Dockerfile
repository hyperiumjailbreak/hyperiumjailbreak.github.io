FROM squidfunk/mkdocs-material:6.0.1

WORKDIR /home/

COPY ./requirements.txt /home/

RUN \
    pip install -r requirements.txt && \
    rm -rf ~/.cache
