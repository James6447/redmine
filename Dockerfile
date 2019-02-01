FROM redmine

RUN apt-get update && apt-get install -y zip && apt-get install -y unzip

# Dowlowad Theme
RUN wget https://github.com/Nitrino/flatly_light_redmine/archive/master.zip
RUN unzip master.zip && rm -rf master.zip
RUN mv flatly_light_redmine-master ./public/themes

