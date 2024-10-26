FROM l.gcr.io/google/bazel:latest

WORKDIR /code

RUN git clone https://github.com/bazel-contrib/rules_dotnet.git

WORKDIR /code/rules_dotnet/src

COPY bin .

RUN bazel clean

ENV TMP X:/

CMD ["run", ":BazelApp"]
