require "anagrams"

describe Anagrams do
  describe ".anagrams" do
    sample = Anagrams.new
    all_anagrams = sample.find_anagrams(["cile","mile","pile","LEMI","drakos","drako's"])
    it 'should get all anagrams' do
      expect(all_anagrams.count).to be 2
    end

    it 'should be case insensitive' do
      test_arr = ["mile", "LEMI"]
      expect(all_anagrams).to include(test_arr)
    end

    it 'should be non-letter insensitive' do
      test_arr = ["drakos", "drako's"]
      expect(all_anagrams).to include(test_arr)
    end
  end

  describe ".read" do
    sample = Anagrams.new
    file = sample.read("spec/simple-anagrams.txt")
    it 'should read file as array' do
      expect(file).to eql ["cile\n","mile\n","pile\n","LEMI\n","drakos\n","drako's\n"]
    end
  end
end
