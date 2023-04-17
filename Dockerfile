#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b Ayiin-Userbot https://github.com/NotLumiere/Lumiere-ubot /home/Lumiereubot/ \
    && chmod 777 /home/lumiereubot \
    && mkdir /home/lumiereubot/bin/

COPY ./sample_config.env ./config.env* /home/Lumiereubot/

WORKDIR /home/lumiereubot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
