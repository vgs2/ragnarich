FROM python:3
WORKDIR /code
COPY requirements.txt /code/
# RUN pip install pandas
RUN pip install -r requirements.txt
COPY app.py /code/
ENV FLASK_ENV=development
CMD [ "python", "/code/app.py" ]
# EXPOSE 5000