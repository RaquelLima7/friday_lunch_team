20.times do |i|
  Employee.create(name: Faker::Name.name, unit: [0, 1, 2].sample, restaurant: Faker::Restaurant.name)
end

puts '20 employees were created'

10.times do |i|
  employees = Employee.all

  employees_groups = employees.shuffle.in_groups(5)
  teams = []
  leaders = []
  restaurants = []
  employees = []

  employees_groups.each_with_index do |groups, index|
    team = Team.create(name: "Team #{index + 1}")
    teams << team.name
    MappingEmployeeTeam.create(team_id: team.id)

    employees_group = []

    groups.each do |employee|
      employee = employee.nil? ? ' ' : employee.name
      employees_group << employee
    end
    employees << employees_group

    groups.delete(nil) if groups.include?(nil)

    leader = groups.sample(1)[0]
    leaders << leader.name
    restaurants << leader.restaurant
  end

  if BlindDate.last.present?
    date = BlindDate.last.event + 7.days
  else
    date = Date.current + 1.day
  end

  BlindDate.create!(event: date, teams: teams, employees: employees, restaurants: restaurants, leaders: leaders)
end

puts '10 blind dates were created'
