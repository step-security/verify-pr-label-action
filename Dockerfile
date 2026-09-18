FROM python:3.12-alpine

RUN pip3 install pygithub==2.3.0

COPY verify_pr_lables.py /verify_pr_lables.py

# Force stdin, stdout and stderr to be totally unbuffered.
# This warranty the order of output messages send to the console
ENV PYTHONUNBUFFERED=1

ENTRYPOINT ["/verify_pr_lables.py"]
