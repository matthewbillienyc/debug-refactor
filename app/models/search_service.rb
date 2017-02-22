class SearchService
  def self.search(params)
    {
      results: {
        people: [
          { name: 'bobby' },
          { name: 'billy' }
        ]
      }
    }.to_json
  end
end
