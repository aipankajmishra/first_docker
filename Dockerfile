FROM python:3.9-slim

WORKDIR /app/

COPY . .

ENV VIRTUAL_ENV=/app/venv


RUN python3 -m venv ${VIRTUAL_ENV} 

ENV PATH="${VIRTUAL_ENV}/bin:${PATH}"


RUN pip3 install -r requirements.txt

CMD ["python3","scripts/test.py"]
