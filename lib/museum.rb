class Museum
  attr_reader :name,
              :exhibits,
              :patron

  def initialize(name)
    @name = name
    @exhibits = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    recommended_exhibits = []
    @exhibits.each do |exhibit|
      patron.interests.each do |interest|
        if exhibit.name == interest
          recommended_exhibits << exhibit

        end
      end
    end
    recommended_exhibits.uniq
  end
end
