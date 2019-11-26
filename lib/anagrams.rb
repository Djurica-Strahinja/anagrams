class Anagram
  def anagrams(file_name)
    dictionary = read(file_name)
    all_anagrams = dictionary.group_by {|word| word.downcase.delete("^a-z").each_char.sort}.values
    result = all_anagrams.select { |element| element.length > 1 }
    result
  end

  def print_anagrams(file_name)
    anagrams = anagrams(file_name)
    anagrams.each do |line|
      print "#{line.each {|word| word.delete!("\n")}.join(", ")}\n"
    end
  end

  private
  def read(file_name)
    Dir.chdir(File.dirname(__FILE__))
    File.open(file_name) do |file|
      file.readlines()
    end
  end
end
