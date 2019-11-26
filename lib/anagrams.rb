class Anagrams
  def find_anagrams(word_list)
    all_anagrams = word_list.group_by {|word| word.downcase.delete("^a-z").each_char.sort}.values
    result = all_anagrams.select { |element| element.length > 1 }
    result
  end

  def print_anagrams(file_name)
    anagrams = find_anagrams(read(file_name))
    anagrams.each do |line|
      puts "#{line.each {|word| word.delete!("\n")}.join(", ")}\n"
    end
  end

  def read(file_name)
    File.open(File.expand_path(file_name)) do |file|
      file.readlines
    end
  end
end
