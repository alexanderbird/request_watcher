require 'spec_helper'

describe RequestsController do
  context "listening for requests" do
    it "listens for posted data" do
      params = {foo: :bar}
      post 'watch', params.to_json, { 'CONTENT_TYPE' => 'application/json' }
      expect(Request.first.body).to eq params.to_json
    end
  end

end
