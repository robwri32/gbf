require 'csv'
desc "Imports a CSV file into an ActiveRecord table"
task :import, [:filename] => :environment do
    CSV.foreach('db/demo.csv', :headers => true) do |row|
      Beer.create!(row.to_hash)
    end
end
