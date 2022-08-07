# UIS API

## Prerequisites
[![Ruby Style Guide](https://img.shields.io/badge/Ruby-3.1.2-red)](https://www.ruby-lang.org/en/news/2022/04/12/ruby-3-1-2-released)
[![Ruby Style Guide](https://img.shields.io/badge/Rails-7.0.3-brightgreen)](https://rubygems.org/gems/rails)

### First-time setup
1. Install Ruby
2. Download and install postgresql.
3. Run the following command.
```bash
$ gem install rails
```
```bash
$ bundle install
```

### Setup Database
```bash
$ rails db:create db:migrate db:seed
```

The server will run on **localhost:3000**.
