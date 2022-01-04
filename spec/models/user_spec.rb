require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録ができる時' do
      it 'ニックネーム,メールアドレス,パスワード,パスワード(確認),好きな色の6つが存在すれば登録できる' do
        expect(@user).to be_valid
      end
    end

    context 'ユーザーの新規登録ができない時' do
      it 'ニックネームが空だと登録できない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include 'ニックネームを入力してください'
      end
      it 'メールアドレスが空だと登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include 'メールアドレスを入力してください'
      end
      it 'すでに登録されたメールアドレスだと登録できない' do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include 'メールアドレスはすでに存在します'
      end
      it 'メールアドレスに「@」が入っていないと登録できない' do
        @user.email = 'aaabbbcccdddeeecom'
        @user.valid?
        expect(@user.errors.full_messages).to include 'メールアドレスは不正な値です'
      end
      it 'パスワードが空だと登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワードを入力してください'
      end
      it 'パスワードは5文字以下だと登録できない' do
        @user.password = 'aaa00'
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワードは6文字以上で入力してください'
      end
      it 'パスワードは半角数字のみでは登録できない' do
        @user.password = '123456'
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワードは英字と数字の両方を含めて設定してください'
      end
      it 'パスワードは半角英字のみでは登録するできない' do
        @user.password = 'aaaAAA'
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワードは英字と数字の両方を含めて設定してください'
      end
      it 'パスワードは半角カタカナでは登録できない' do
        @user.password = 'ｱｲｳｴｵｱｲｳｴｵabcdef123456'
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワードは英字と数字の両方を含めて設定してください'
      end
      it 'パスワードは全角英字では登録できない' do
        @user.password = 'ＡＡＡａａａ1'
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワードは英字と数字の両方を含めて設定してください'
      end
      it 'パスワードは全角数字では登録できない' do
        @user.password = '１２３４５６a'
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワードは英字と数字の両方を含めて設定してください'
      end
      it 'パスワードは漢字では登録できない' do
        @user.password = '一二三四五六'
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワードは英字と数字の両方を含めて設定してください'
      end
      it 'パスワードは全角ひらがなでは登録できない' do
        @user.password = 'あいうえお1'
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワードは英字と数字の両方を含めて設定してください'
      end
      it 'パスワードは全角カタカナでは登録できない' do
        @user.password = 'アイウエオ1'
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワードは英字と数字の両方を含めて設定してください'
      end
      it 'パスワードとパスワード(確認)が一致しなければ登録できない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワード（確認用）とパスワードの入力が一致しません'
      end
      it '好きな色が「---」(id=1)だと登録できない' do
        @user.fav_col_id = 1
        @user.valid?
        expect(@user.errors.full_messages).to include '好きな色が選択されていません'
      end
    end
  end
end
