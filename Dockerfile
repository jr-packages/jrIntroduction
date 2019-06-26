FROM jrpackages/jrnotes

RUN R -e "remotes::install_github('jr-packages/jrIntroduction', dependencies = TRUE)"
