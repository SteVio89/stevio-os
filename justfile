#set dotenv-load := true
# default
default:
    just -l

verify:
    bluebuild validate recipes/*
