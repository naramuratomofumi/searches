require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録ができる時' do
      it 'ニックネーム,メールアドレス,パスワード,パスワード(確認),好きな色の6つが存在すれば登録できる' do
      end
    end

    context 'ユーザーの新規登録ができない時' do
      it 'ニックネームが空だと登録できない' do
      end
      it 'メールアドレスが空だと登録できない' do
      end
      it 'すでに登録されたメールアドレスだと登録できない' do
      end      
      it 'メールアドレスに「@」が入っていないと登録できない' do
      end
      it 'パスワードが空だと登録できない' do
      end
      it 'パスワードは5文字以下だと登録できない' do
      end
      it 'パスワードは半角数字のみでは登録できない' do
      end
      it 'パスワードは半角英字のみでは登録するできない' do
      end
      it 'パスワードは半角カタカナでは登録できない' do
      end
      it 'パスワードは全角英字では登録できない' do
      end
      it 'パスワードは全角数字では登録できない' do
      end
      it 'パスワードは漢字では登録できない' do
      end
      it 'パスワードは全角ひらがなでは登録できない' do
      end
      it 'パスワードは全角カタカナでは登録できない' do
      end
      it 'パスワードとパスワード(確認)が一致しなければ登録できない' do
      end
      it '好きな色が「---」(id=1)だと登録できない' do
      end
      it '' do
      end
    end
  end
end
