require('rspec')
require('MyHash')


describe(MyHash) do
  describe('#fetch') do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.store("tiger", "roar")
      expect(test_hash.fetch("tiger")).to(eq("roar"))
    end
  end

  describe('#store') do
    it("accepts a desired key value pair into the underlying hash") do
      test_hash = MyHash.new()
      test_hash.store("dog", "woof")
      expect(test_hash.fetch("dog")).to(eq("woof"))
    end
  end

  describe('#merge') do
    it("merges two hashes together") do
      test_hash_1 = MyHash.new()
      test_hash_2 = MyHash.new()
      test_hash_1.store("dog", "woof")
      test_hash_1.store("tiger", "roar")
      test_hash_2.store("cat", "purr")
      test_hash_2.store("monkey", "shriek")
      expect(test_hash_1.merge(test_hash_2)).to(eq([["dog", "woof"],["tiger", "roar"],["cat", "purr"],["monkey", "shriek"]]))
    end
  end
end
