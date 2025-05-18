#set dotenv-load := true
# default
default:
    just -l

verify:
    bluebuild validate ./recipes/recipe-arm64.yml
    bluebuild validate ./recipes/recipe-amd64.yml

build:
    bluebuild build --platform linux/arm64 recipes/recipe-arm64.yml
