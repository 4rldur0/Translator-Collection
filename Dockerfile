# start with python:latest image
FROM python:latest
# copy the contents to /app
WORKDIR /app
COPY . /app
# install poetry and the project's dependencies
RUN pip install poetry
RUN poetry config virtualenvs.create false
RUN poetry install --no-dev
# make the entrypoint
EXPOSE 8000
# uvicorn parameter
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
