# Get Started

## Installation

[<img width="296" alt="image" src="https://user-images.githubusercontent.com/2530982/110723937-82aa8900-81da-11eb-9eba-d560bde568f1.png">](https://github.com/purplefi-sh/quickstart-rails/generate)

1. Click the button above to create a new repo with this template
1. Clone the repo into your local dev environment & `cd` into the new directory
1. Login to Font Awesome and find your 'Pro Package Token' ([located here](https://fontawesome.com/account), [more info here](https://fontawesome.com/how-to-use/on-the-web/setup/using-package-managers#installing-pro))
1. Run `./bin/setup`
1. Find-and-replace "quickstart" (case-insensitive) with your app name

## Running the App
1. Run `docker-compose up -d` (`dcup` if you have the aliases below) to spin up Postgres & Redis
1. Run `rails s` to spin up the Rails server
1. Run `./bin/webpack-dev-server` to spin up the Webpack Dev Server
1. Run `bundle exec sidekiq` to spin up Sidekiq if needed

## Helpful Aliases
```shell
alias dcdown='docker-compose down'
alias dcps='docker-compose ps'
alias dcup='docker-compose up -d'
```
