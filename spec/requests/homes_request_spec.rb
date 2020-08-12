require 'rails_helper'

RSpec.describe "Topページへのアクセス", type: :request do
  context 'topページを取得' do
    before { get root_path }
    it '正常なレスポンスが返る' do
      expect(response).to have_http_status 200
    end
    it "'Qitta_app'というタイトルを表示" do
      expect(response.body).to_not include ' | Qitta_app'
      expect(response.body).to include 'Qitta_app'
    end
  end
end

RSpec.describe "Aboutページへのアクセス", type: :request do
  context 'aboutページを取得' do
    before { get homes_about_url }
    it '正常なレスポンスが返る' do
      expect(response).to have_http_status 200
    end
    it "'About | Qitta_app'というタイトルを表示" do
      expect(response.body).to_not include 'About | Qitta_app'
    end
  end
end

RSpec.describe "Helpページへのアクセス", type: :request do
  context 'helpページを取得' do
    before { get homes_help_url }
    it '正常なレスポンスが返る' do
      expect(response).to have_http_status 200
    end
    it "'Help | Qitta_app'というタイトルを表示" do
      expect(response.body).to_not include 'Help | Qitta_app'
    end
  end
end