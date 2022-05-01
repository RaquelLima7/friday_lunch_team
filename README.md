# Friday Lunch Team
<br>

Every Friday the employees are grouped to have lunch together in order to get to know each other better.Each group should have a leader that will choose a restaurant.

<p align="center">
  <a href="https://ruby-doc.org/core-3.0.1/">
    <img alt="Ruby Version" src="https://img.shields.io/badge/Ruby-3.0.1 -green.svg" target="_blank">
  </a>
  <a href="https://guides.rubyonrails.org/6_1_release_notes.html">
    <img alt="" src="https://img.shields.io/badge/Rails-~> 6.1.5-blue.svg" target="_blank">
  </a>
</p>

## Stack the Project

- **Ruby on Rails**
- **Bootstrap**
- **PostgreSQL**
- **Rspec**

## Building application

First you must have:

1. Postgres installed.

2. Ruby >= 2.7.3 installed.

As soon as you have everything done you can follow

### 1. Building everything

If you want to rock and create your dev environment and data, it's possible to go through the usual way:

1. And to *bundle* it with command:
```
bundle install
```

2. Create databases
```
rails db:create
```

3. Run migrations
```
rails db:migrate
```
4. Run to populate the database with the command:

```
rails db:seed
```

5. Run tests

```
rspec
```