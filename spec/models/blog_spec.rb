require 'rails_helper'

RSpec.describe Blog, type: :model do
  before do
    @blog = FactoryBot.build(:blog)
  end

  describe 'タイトルの保存' do
    context 'タイトルが保存できる場合' do
      it 'タイトルを入力すれば保存できる' do
        @blog.title = 'メッセージ'
        expect(@blog).to be_valid
      end
    end

    context 'タイトルが保存できない場合' do
      it 'タイトルが空では保存できない' do
        @blog.title = ''
        @blog.valid?
        expect(@blog.errors.full_messages).to include("Title can't be blank")
      end
    end
  end
end