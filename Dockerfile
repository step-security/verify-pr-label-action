FROM python:3.14-alpine@sha256:016508ba505da24f7139765bc4bb669df4e88eb2f12eeadd571bf2f88d7533df

RUN pip3 install pygithub==2.3.0

COPY verify_pr_lables.py /verify_pr_lables.py

# Force stdin, stdout and stderr to be totally unbuffered.
# This warranty the order of output messages send to the console
ENV PYTHONUNBUFFERED=1

ENTRYPOINT ["/verify_pr_lables.py"]
