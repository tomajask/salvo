FROM python:3-alpine

RUN apk add --no-cache gcc musl-dev
RUN pip install salvo

CMD "salvo"
