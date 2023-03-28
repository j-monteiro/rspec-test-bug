# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'PingControllers', type: :request do
  describe 'POST /index' do
    let(:params) do
      {
        example_array: [
          { inner_objekt: ['value'], id: 'cenas' },
          { inner_objekt: ['value'], id: 'coisas' }
        ]
      }
    end

    let(:perform) { post '/ping', params: }

    it 'returns http success' do
      perform

      expect(response).to have_http_status(:success)
      expect(response.body).to eq(params.to_json)
    end
  end
end
