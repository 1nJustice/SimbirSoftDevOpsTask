FROM python:3
RUN git clone https://github.com/anfederico/Flaskex 
WORKDIR /Flaskex
RUN pip3 install -r requirements.txt
##Библиотека WTForms обновилась и Flask-приложение не запускается,
##поэтому вручную удаляем новую версию и устанавливаем более старую
RUN pip3 uninstall WTForms -y
RUN pip3 install WTForms==2.3.3 
ENTRYPOINT ["python3", "app.py"]
