require "anagrams"

describe Anagram do
  describe ".anagrams" do
    sample = Anagram.new
    all_anagrams = sample.anagrams(["cile","mile","pile","LEMI","drakos","drako's"])
    it 'should get all anagrams' do
      expect(all_anagrams.count).to be 2
    end

    it 'should include test_arr' do
      test_arr = ["mile", "LEMI"]
      expect(all_anagrams).to include(test_arr)
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
    sample = Anagram.new
    file = sample.read("simple-anagrams.txt")
    it 'should get all anagrams from file' do
      expect(sample.anagrams(file).count).to be 2
    end
  end
end
