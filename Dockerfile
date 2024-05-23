FROM python:3.9

RUN apt-get update
RUN pip3 install --no-cache-dir fastapi==0.110.3
RUN pip3 install --no-cache-dir 'uvicorn[standard]'

COPY ./main.py /oss_week11/main.py

ENV STUDENT_ID=2022311890

WORKDIR /oss_week11

ENTRYPOINT ["python", "main.py"]
