require 'csv'

namespace :csv do

  desc "Import CSV Data"
  task :import_stuff => :environment do

    csv_file_path = 'db/demo.csv'

    CSV.foreach(csv_file_path) do |row|
      Model.create!({
        :column1 => row[0],
        :column2 => row[1],
        :column3 => row[2],
        :column4 => row[3],
        :column5 => row[4],
        :column6 => row[5],
        :column7 => row[6],
        :column8 => row[7],
        :column9 => row[8],
        :column10 => row[9],
      })
      puts "Row added!"
    end
  end
end
