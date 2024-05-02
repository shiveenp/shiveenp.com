FROM pierrezemb/gostatic
RUN npm run build
COPY ./_site/ /srv/http/
