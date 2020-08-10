README to texlive docker image
===

This is dockerization of TexLive


# Environment variables

|Available variables      |Description                                                |
|-------------------------|-----------------------------------------------------------|
|`LOCAL_UID`              | The id of the local user running the container            |
|`LOCAL_GID`              | The id of the local group running the container           |

# command

```console
docker run \
  -e "LOCAL_UID=1000" \
  -e "LOCAL_GID=1000" \
  -v "/path/to/texsource":"/data" \
  denmor/latex pdflatex [FILE]

```

# License

The repository contains the TexLive (see https://www.tug.org/texlive/copying.html).

The repository itself is under MIT licence.
