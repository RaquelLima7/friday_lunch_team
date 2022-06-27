<h1 align="center">Friday Lunch Team</h1>
<br>

<p align="center">
  <a href="https://ruby-doc.org/core-3.0.1/">
    <img alt="Ruby Version" src="https://img.shields.io/badge/Ruby-3.0.1 -green.svg" target="_blank">
  </a>
  <a href="https://guides.rubyonrails.org/6_1_release_notes.html">
    <img alt="" src="https://img.shields.io/badge/Rails-~> 6.1.5-blue.svg" target="_blank">
  </a>
</p>

<br>

## Project

Friday Lunch Team is a Rails system to include employees in lunches according to the number of employees, allowing the inclusion of a new employee. When registering an employee, he/she must inform his/her unit and the preferred restaurant. By clicking on "New Blind Date" you must inform the day and the system will automatically sort the employees into groups and choose a leader. On the page to view all Blind Dates, the day will appear, and, clicking to view, you can see the separation by teams, its leader, employees, and restaurant (which is the restaurant informed by the leader).

## Screenshot
![](https://github.com/RaquelLima7/friday_lunch_team/blob/master/app/assets/images/friday-lunch-team.gif)
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