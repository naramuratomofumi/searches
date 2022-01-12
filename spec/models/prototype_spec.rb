require 'rails_helper'

RSpec.describe Prototype, type: :model do
  before do
    @prototype = FactoryBot.build(:prototype)
  end

  describe '投稿機能' do
    context '投稿ができる時' do
      it 'image, season_id, main_tops_category_id, main_tops_col_id, tops_category_id, tops_col_id, bottom_category_id, bottom_color_id, acc_category_id, acc_col_id, text,の11項目が存在し user_idが紐づいていれば投稿できる' do
        expect(@prototype).to be_valid
      end
      it 'tops_category_idが1(---)でも登録できる' do
        @prototype.tops_category_id = 1
        expect(@prototype).to be_valid
      end
      it 'tops_col_idが1(---)でも登録できる' do
        @prototype.tops_col_id = 1
        expect(@prototype).to be_valid
      end
      it 'bottom_category_idが1(---)でも登録できる' do
        @prototype.bottom_category_id = 1
        expect(@prototype).to be_valid
      end
      it 'bottom_color_idが1(---)でも登録できる' do
        @prototype.bottom_col_id = 1
        expect(@prototype).to be_valid
      end
      it 'acc_category_idが1(---)でも登録できる' do
        @prototype.tops_category_id = 1
        expect(@prototype).to be_valid
      end
      it 'acc_col_idが1(---)でも登録できる' do
      end
    end

    context '投稿できない時' do
      it 'imageが空の時' do
        @prototype.image = nil
        @prototype.valid?
        expect(@prototype.errors.full_messages).to include '画像を入力してください'
      end
      it 'main_tops_category_idが1(---)の時' do
        @prototype.main_tops_category_id = 1
        @prototype.valid?
        expect(@prototype.errors.full_messages).to include 'メイントップスが選択されていません'
      end
      it 'main_tops_col_idが1(---)の時' do
        @prototype.main_tops_col_id = 1
        @prototype.valid?
        expect(@prototype.errors.full_messages).to include 'メイントップスのカラーが選択されていません'
      end
      it 'seasonが1(---)の時' do
        @prototype.season_id = 1
        @prototype.valid?
        expect(@prototype.errors.full_messages).to include 'シーズンが選択されていません'
      end
      it 'textが空の時' do
        @prototype.text = ''
        @prototype.valid?
        expect(@prototype.errors.full_messages).to include 'コメントを入力してください'
      end
      it 'user_idが空の時' do
        @prototype.user = nil
        @prototype.valid?
        expect(@prototype.errors.full_messages).to include 'Userを入力してください'
      end
    end
  end
end
