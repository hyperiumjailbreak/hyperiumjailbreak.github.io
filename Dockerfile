FROM squidfunk/mkdocs-material:5.5.0

WORKDIR /home/

COPY ./requirements.txt /home/

RUN \
    pip install -r requirements.txt && \
    rm -rf ~/.cache
