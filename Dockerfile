FROM okteto/node:10 as dev
WORKDIR /okteto
RUN npm install -g @11ty/eleventy

FROM dev as build
COPY shiveenp.com .
# generate the website in _site
RUN eleventy --formats=liquid,html,jpg,gif

FROM bitnami/nginx as website
COPY --from=build /okteto/_site /app
