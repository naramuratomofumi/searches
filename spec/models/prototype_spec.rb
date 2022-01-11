require 'rails_helper'

RSpec.describe Prototype, type: :model do
  describe '投稿機能' do
    context '投稿ができる時' do
      it 'image,season_id,main_tops_category_id,main_tops_col_id,tops_category_id,tops_col_id,bottom_category_id,bottom_color_id,acc_category_id,acc_col_id,text,user_idの12項目が存在すれば投稿できる' do
      end
      it 'tops_category_idが空でも登録できる' do
      end
      it 'tops_col_idが空でも登録できる' do
      end
      it 'bottom_category_idが空でも登録できる' do
      end
      it 'bottom_color_idが空でも登録できる' do
      end
      it 'acc_category_idが空でも登録できる' do
      end
      it 'acc_col_idが空でも登録できる' do
      end
    end

    context '投稿できない時' do
      it 'imageが空の時' do
      end
      it 'main_tops_category_idが空の時' do
      end
      it 'main_tops_col_idが空の時' do
      end
      it 'seasonが空の時' do
      end
      it 'textが空の時' do
      end
      it 'user_idが空の時' do
      end
    end
  end
end
