FROM python:3.11.4

ADD build /md
WORKDIR /md

RUN pip3 install .

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
