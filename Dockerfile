#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b Ayiin-Userbot https://github.com/NotLumiere/Lumiere-ubot /home/Lumiereubot/ \
    && chmod 777 /home/Lumiereubot \
    && mkdir /home/Lumiereubot/bin/

COPY ./sample_config.env ./config.env* /home/Lumiereubot/

WORKDIR /home/Lumiereubot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
