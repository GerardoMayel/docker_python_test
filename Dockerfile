# Use an official Python runtime as a parent image
FROM python:3.8.3

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ./app/app.py ./app/app.py
COPY ./app/requirements.txt ./app/requirements.txt


# Install any needed packages specified in requirements.txt

RUN pip install -U pip && pip install -r app/requirements.txt
#RUN pip install -r ./app/requirements.txt

CMD ["python", "./app/app.py"]
