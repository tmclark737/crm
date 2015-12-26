require 'csv'

desc "I add new tasks."
task :add_tasks => :environment do
  # All your magic here
  # Any valid Ruby code is allowed


    CSV.foreach(File.join(Rails.root, 'db', 'seeds_csv', 'task_seeds.csv'), :headers => true) do |row|
     t = Task.create!(row.to_hash)
     puts "task created!"     

     t.before.split(",").each do |ref_id|
     	t.child_tasks << Task.find(ref_id.to_i + 1)
     end
    end

    
  end