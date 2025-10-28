#set dotenv-load := true
# default
default:
    just -l

verify:
    bluebuild validate ./recipes/recipe-arm64.yml
    bluebuild validate ./recipes/recipe-amd64.yml

build-arm64:
    bluebuild build --platform linux/arm64 recipes/recipe-arm64.yml

build-amd64:
    bluebuild build --platform linux/amd64 recipes/recipe-amd64.yml
