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

## Task model description

A task has the following fields

* Name: Uniq name for the task

* Description: Description of the object

* Status: Current status of the object

## Validations

A task has the following validations

* Name is required and must be uniq. It is case sensitive.

* Description is optional, but cannot be greater than 100 characters

* The name of a task in progress can't be updated