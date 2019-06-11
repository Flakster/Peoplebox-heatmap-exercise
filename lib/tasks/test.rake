require 'pp'
desc "Example of a task with namespaced prerequisites"
task :heatmap => :environment do
  resp = Response.joins(:employee)
  .select('employees.department', 'responses.driver_name', 'avg(responses.score) as avg_score')
  .group('employees.department', 'responses.driver_name').group_by{|f| f.driver_name}
  .map{ |k, v| { driver: k, scores: Hash[v.map{ |e| [e.department, e.avg_score.round(2) ]}]}}
  
  pp resp
end
