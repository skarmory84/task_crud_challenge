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

Create database

```sh
rails db:create
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

## Authentication

You can use default devise token methods to authenticate. Default auth path is `{{host}}`/auth

```sh
POST http://127.0.0.1:3000/auth/sign_in
Content-Type: application/json

{
  "email": "admin@admin.com",
  "password": "strongpassword"
}
```

Then, include the Authorization: Bearer in each request.

Devise token usage at https://devise-token-auth.gitbook.io/devise-token-auth/usage


## Task model description

A task has the following fields

* Name: Name for the task

* Description: Description of the object

* Status: Current status of the object

## Validations

A task has the following validations

* Name is required and must be only number, letters and spaces.

* Description is optional, but cannot be greater than 100 characters

* The name of a task in progress can't be updated