require 'faraday'
require 'json'

module RestClients
  class FaradaySample

    def do_get
      url = 'https://icanhazdadjoke.com/'
      response = Faraday.get(url, {a: 1}, {'Accept' => 'application/json'})
      JSON.parse(response.body, symbolize_names: true)
    end

    def do_post
      url = 'https://jsonplaceholder.typicode.com/posts'
      response = Faraday.post(
        url,
        {
          :title => "Why I love Hitchhiker's Guide to the Galaxy", 
          :body => "42", 
          :userId => 42
        }
      )
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end