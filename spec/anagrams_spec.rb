require "anagrams"

describe Anagram do
  describe ".anagrams" do
    sample = Anagram.new
    all_anagrams = sample.anagrams
    it 'should get all anagrams' do
      expect(all_anagrams.count).to be 50070
    end

    it 'should include test_arr' do
      test_arr = ["reamed\n", "remade\n"]
      expect(all_anagrams).to include(test_arr)
    end

    it 'should be case insensitive' do
      test_arr = ["A\n", "a\n"]
      expect(all_anagrams).to include(test_arr)
    end

    it 'should be non-letter insensitive' do
      test_arr = ["impeacher's\n", "impeachers\n"]
      expect(all_anagrams).to include(test_arr)
    end
  end
end
