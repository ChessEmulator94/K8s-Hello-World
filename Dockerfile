FROM python:3.11

# makes a directory
RUN mkdir /app

# sets the working directory
WORKDIR /app/

# adds all our files from the current folder into the workdir
ADD . /app/

# runs the pip install command to get required libraries
RUN pip install -r requirements.txt

# runs the app
CMD ["python", "/app/main.py"]

