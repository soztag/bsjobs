FROM rocker/verse:3.5.2

RUN apt-get update \
  && apt-get install -y \
  libgsl0-dev \
  libudunits2-dev

RUN install2.r gtrendsR \
  printr \
  ggraph \
  rtweet \
  tidytext \
  topicmodels \
  textstem
