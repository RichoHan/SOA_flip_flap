# Module that can be included (mixin) to create and parse TSV data
module TsvBuddy
  # @data should be a data structure that stores information
  #  from TSV or Yaml files. For example, it could be an Array of Hashes.
  attr_accessor :data

  # take_tsv: converts a String with TSV data into @data
  # parameter: tsv - a String in TSV format
  def take_tsv(tsv)
    lines = tsv.split("\n")
    @data = lines[1..-1].map do |line|
      items = line.split("\t")
      {
        'date' => items[0], 'student_id' => items[1],
        'languages' => items[2], 'best_language' => items[3],
        'app_experience' => items[4], 'tech_experience' => items[5]
      }
    end
  end

  # to_tsv: converts @data into tsv string
  # returns: String in TSV format
  def to_tsv
    str = "date\tstudent_id\tlanguages\t"\
      "best_language\tapp_experience\ttech_experience\n"
    @data.each do |student|
      str << "#{student['date']}\t#{student['student_id']}\t"\
        "#{student['languages']}\t#{student['best_language']}\t"\
        "#{student['app_experience']}\t#{student['tech_experience']}\n"
    end
    str
  end
end
