FROM python:3.11-slim
/WORKDIR /app
copy requirements.txt .
run pip install --no-cache-dir -r requirements.txt
copy . .
expose 5000
cmd ["python", "app.py"]
