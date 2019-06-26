FROM jrpackages/jrNotes

RUN R -e "remotes::install_github('jr-packages/jrIntroduction', dependencies = TRUE)"
