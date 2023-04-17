#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM notlumiere/Ayiin-Userbot:buster

RUN git clone -b Lumiere-ubot https://github.com/NotLumiere/Lumiere-ubot /home/lumiereubot/ \
    && chmod 777 /home/Lumiereubot \
    && mkdir /home/Lumiereubot/bin/

COPY ./sample_config.env ./config.env* /home/lumiereubot/

WORKDIR /home/lumiereubot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
