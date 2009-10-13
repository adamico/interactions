namespace :import do

  desc "Import IAM classes from a csv file"
  task :classes => :environment do
    require 'fastercsv'

    file = "#{RAILS_ROOT}/private/classes.csv"

    iam_classes_array = FasterCSV.read(file, :col_sep => "|", :quote_char => '"', :headers => :first_row)

    iam_classes_hash = {}
    iam_classes_array.each { |k, v| iam_classes_hash[k] = v }

    iam_classes_array.each do |line|
    classe = Classe.find_or_create_by_name(line['Name'])
    classe.save
    end
  end

end
