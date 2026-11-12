FROM python:3.12-alpine@sha256:e064671ca452259bab50e8e2c7bd896e39e9a343bb06ca25234adf6fe18d0fc7

RUN pip3 install pygithub==2.3.0

COPY verify_pr_lables.py /verify_pr_lables.py

# Force stdin, stdout and stderr to be totally unbuffered.
# This warranty the order of output messages send to the console
ENV PYTHONUNBUFFERED=1

ENTRYPOINT ["/verify_pr_lables.py"]
