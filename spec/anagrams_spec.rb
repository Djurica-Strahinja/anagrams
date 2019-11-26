require "anagrams"

describe Anagram do
  describe ".anagrams" do
    sample = Anagram.new
    all_anagrams = sample.anagrams("simple-anagrams.txt")
    it 'should get all anagrams' do
      expect(all_anagrams.count).to be 2
    end

    it 'should include test_arr' do
      test_arr = ["mile\n", "LEMI\n"]
      expect(all_anagrams).to include(test_arr)
    end

    it 'should be case insensitive' do
      test_arr = ["mile\n", "LEMI\n"]
      expect(all_anagrams).to include(test_arr)
    end

    it 'should be non-letter insensitive' do
      test_arr = ["drakos\n", "drako's\n"]
      expect(all_anagrams).to include(test_arr)
    end
  end
end
