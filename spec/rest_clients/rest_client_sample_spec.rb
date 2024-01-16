require 'rest_clients/rest_client_sample'
require 'benchmark'

rest_sample = RestClients::RestClientSample.new

RSpec.describe RestClients::RestClientSample, "#do_get" do
  context "with good responses" do
    it "shows a non empty joke" do
      puts Benchmark.measure {
        result = rest_sample.do_get
        puts result[:joke]
        expect(result[:status]).to be 200
        expect(result[:joke].split.size).to be > 3
      }
    end
  end
end

RSpec.describe RestClients::RestClientSample, "#do_post" do
  context "with good params" do
    it "returns ok" do
      result = rest_sample.do_post
      puts result
    end
  end
end
