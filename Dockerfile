FROM python:3.11.4

RUN groupadd -r mduser && useradd -r -g mduser mduser

ADD build /md
WORKDIR /md

RUN pip3 install .

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh


USER mduser

ENTRYPOINT ["/entrypoint.sh"]
