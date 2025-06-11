FROM python:3.13-slim
RUN useradd -u 1001 flaskuser
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
USER flaskuser
CMD ["python", "app.py"]
