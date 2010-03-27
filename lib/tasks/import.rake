desc "import csv data from guardian"
task :importindie => :environment do
  require 'fastercsv'
  FasterCSV.foreach(RAILS_ROOT+"/lib/tasks/Museums.csv", :headers => :first_row) do |row|
    c = Venue.new
    row.each_with_index do |cell, index|
      c.update_attribute cell[0], cell[1] if c.attributes.include?(cell[0])
    end
    c.save!
  end
end

desc "import csv data from guardian"  
task :importgovt => :environment do
  require 'fastercsv'
  FasterCSV.foreach(RAILS_ROOT+"/lib/tasks/GovtFunded.csv", :headers => :first_row) do |row|
    c = Venue.new
    row.each_with_index do |cell, index|
      c.update_attribute cell[0], cell[1] if c.attributes.include?(cell[0])
    end
    c.save!
  end
end