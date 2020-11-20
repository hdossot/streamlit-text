FROM python:3.8-slim

ENV PORT 8501

COPY app.py app.py

COPY requirements.txt requirements.txt 

COPY start.sh start.sh

RUN pip install -r requirements.txt

EXPOSE 8501

CMD ["bash", "start.sh"]

