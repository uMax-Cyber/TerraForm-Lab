FROM hashicorp/terraform:latest
WORKDIR /workspace
COPY . .
ENTRYPOINT ["terraform"]
CMD ["--version"]
