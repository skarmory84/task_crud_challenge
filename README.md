# Task CRUD Challenge

Developed with:

* Ruby 3.0.5

* Rails 7.0.5

* SQLite Database

## Initialization:

First, install project dependencies

```sh
bundle install
```

Run migrations

```sh
rails db:migrate
```

Get a default user and some tasks examples (optional)
```sh
rails db:seed
```

Finally, start the server
```sh
rails s
```

## Validations

A Task has the following validations

* Name is required and must be uniq

* Description is optional, but cannot be greater than 100 characters

* The name of a task in progress can't be updated