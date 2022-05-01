module BlindDatesHelper
  def create_groups
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
    date = Date.new params[:blind_date]['date(1i)'].to_i, params[:blind_date]['date(2i)'].to_i, params[:blind_date]['date(3i)'].to_i
    @blind_date = BlindDate.new(event: date, teams: teams, employees: employees, restaurants: restaurants, leaders: leaders)
  end
end
