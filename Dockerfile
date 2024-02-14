FROM python:3.11.4

ADD build /md

WORKDIR /md

RUN pip3 install .

ENTRYPOINT ["moodle-dl", "--path", "/files"]
