FROM python:3.8
RUN pip install pipenv
WORKDIR /app
COPY . .
RUN pipenv lock; pipenv install --system --deploy
CMD ["python", "-u", "ecrupdater.py"]
