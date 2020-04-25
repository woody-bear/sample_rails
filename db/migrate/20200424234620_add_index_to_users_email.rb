class AddIndexToUsersEmail < ActiveRecord::Migration[5.1]
  def change
    # add_index 인덱스를 이용해서 users 모델의 email 컬럼에 인덱스를 추가
    add_index :users, :email, unique: true
  end
end