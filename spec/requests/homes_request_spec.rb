require 'rails_helper'

RSpec.describe "Topページへのアクセス", type: :request do
  context 'topページを取得' do
    before { get root_path }
    it '正常なレスポンスが返る' do
      expect(response).to have_http_status 200
    end
    it "'Top | Qitta App'というタイトルを表示" do
      expect(response.body).to_not include 'Top | Qitta to do'
    end
  end
end

RSpec.describe "Aboutページへのアクセス", type: :request do
  context 'aboutページを取得' do
    before { get homes_about_url }
    it '正常なレスポンスが返る' do
      expect(response).to have_http_status 200
    end
    it "'About | Qitta App'というタイトルを表示" do
      expect(response.body).to_not include 'About | Qitta to do'
    end
  end
end

RSpec.describe "Helpページへのアクセス", type: :request do
  context 'helpページを取得' do
    before { get homes_help_url }
    it '正常なレスポンスが返る' do
      expect(response).to have_http_status 200
    end
    it "'Help | Qitta App'というタイトルを表示" do
      expect(response.body).to_not include 'Help | Qitta to do'
    end
  end
end