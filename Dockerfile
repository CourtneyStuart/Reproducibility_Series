# first thing is install the R version
FROM r-base:4.1.0
WORKDIR /main
RUN R -e "options(repos = \
  list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/2021-06-09')); \
  install.packages('ggplot2'); install.packages('readr')"
CMD ["Rscript", "_Main_R.R"]


# all capitals words are Docker commands