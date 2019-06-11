# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Response.delete_all
Employee.delete_all 

drivers = ['Role Clarity', 'Career Growth', 'Company Policies', 'Manager Support']
departments = ['Sales', 'Marketing', 'Engineering', 'Support', 'Operations']
location = ['Bangalore', 'Mumbai', 'San Francisco']
gender = ['Male', 'Female']

departments.each do |department|
  (0..10).each do |employee|
    e = Employee.create(
      name: FFaker::Name.name, 
      email: FFaker::Internet.email,
      department: department,
      location: location.sample,
      gender: gender.sample,
      age: (22..50).to_a.sample
    )
    
    puts "Created #{e.name}"
    drivers.each do |d|
      Response.create(driver_name: d, score: (1..5).to_a.sample, employee: e)
    end
    
  end
end
