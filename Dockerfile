### copyright 2017-2021 Regents of the University of California and the Broad Institute. All rights reserved.
FROM genepattern/docker-python36:0.4

MAINTAINER Barbara Hill <bhill@broadinstitute.org>

# While you are debugging/iterating over your module code in the Module integrator comment out the secion below.
# When you are done, export your module, unzip and move your source files into the src directory in this local workspace.
# Then, update this section for you module and build using the docker build command below - again updated for your module.
# -----------------------------------
RUN mkdir /ExampleModule \
    && chown gpuser /ExampleModule

USER gpuser
COPY src/*.py /ExampleModule/

RUN /ExampleModule/ExampleModule.py
# -----------------------------------

# docker build --rm https://github.com/genepattern/ExampleModule#develop -f Dockerfile -t genepattern/example-module:2
# make sure this repo and tag match the manifest & don't forget to docker push!

# you can use this command to run Docker and iterate locally (update for your paths and module name, of course)
# docker run --rm -it --user gpuser -v /c/Users/MyUSER/PathTo/ExampleModule:/mnt/mydata:rw genepattern/example-module:<tag> bash