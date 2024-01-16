require 'rest-client'
require 'json'

module RestClients
  class RestClientSample
    def do_get
      url = 'https://icanhazdadjoke.com/'
      response = RestClient.get(url, headers = {'Accept' => 'application/json'})
      JSON.parse(response.body, symbolize_names: true)
    end

    def do_post
      url = 'https://jsonplaceholder.typicode.com/posts'
      response = RestClient.post(
        url,
        :body => {
          :title => "Why I love Hitchhiker's Guide to the Galaxy", 
          :body => "42", 
          :userId => 42
        }
      )
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
