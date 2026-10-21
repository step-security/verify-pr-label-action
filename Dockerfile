FROM python:3.15-alpine@sha256:2699b90f4d562a22e2dd076c82f964032f64814204bff36d271a54ba4cc2c7e2

RUN pip3 install pygithub==2.3.0

COPY verify_pr_lables.py /verify_pr_lables.py

# Force stdin, stdout and stderr to be totally unbuffered.
# This warranty the order of output messages send to the console
ENV PYTHONUNBUFFERED=1

ENTRYPOINT ["/verify_pr_lables.py"]
