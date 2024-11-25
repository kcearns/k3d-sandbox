FROM squidfunk/mkdocs-material:latest

WORKDIR /docs

COPY ./docs .

RUN mkdocs build

ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]