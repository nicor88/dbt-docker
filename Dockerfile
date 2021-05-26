ARG python_version=3.8.10

FROM python:${python_version}-slim-buster AS base

FROM base as builder

RUN adduser dbt
RUN mkdir /deps
RUN chown dbt:dbt /deps

USER dbt

WORKDIR /deps
COPY --chown=dbt:dbt requirements.txt requirements.txt
RUN pip3 install --prefix=/deps --no-warn-script-location -r requirements.txt

FROM base
RUN adduser dbt
USER dbt
COPY --chown=dbt:dbt --from=builder /deps /usr/local
WORKDIR /dbt

CMD ["dbt"]
