FROM python:3.12.4
WORKDIR /api
COPY ./api /api
RUN pip install --no-cache-dir --upgrade -r /api/requirements.txt
RUN pip install "fastapi[standard]"
CMD ["fastapi", "run", "/api/main.py", "--port", "80"]