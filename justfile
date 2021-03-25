heroku:
  pack build buildpacks-just --builder heroku/buildpacks:20  --path ./sample --buildpack ./ --buildpack heroku/procfile

build:
  pack build buildpacks-just --builder paketobuildpacks/builder:full --path ./sample --buildpack ./ --buildpack gcr.io/paketo-buildpacks/procfile

server:
   docker run --interactive --tty --rm -p 8080:8080 buildpacks-just

info:
  docker run --rm --entrypoint info buildpacks-just

shell:
  docker run -t -i --rm --entrypoint /bin/bash buildpacks-just
