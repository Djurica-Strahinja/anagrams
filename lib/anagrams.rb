class Anagram
  def read(file_name)
    Dir.chdir(File.dirname(__FILE__))
    File.open(file_name) do |file|
      file.readlines()
    end
  end

  def anagrams
    dictionary = read("anagrams-wordlist.txt")
    dictionary.group_by{|word| word.downcase.delete("^a-z").each_char.sort}.values
  end

  def print_anagrams
    anagrams = anagrams()
    anagrams.each do |line|
      if line.length > 1
        print "#{line.each {|word| word.delete!("\n")}.join(", ")}\n"
      end
    end
  end
end
