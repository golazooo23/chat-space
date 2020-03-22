class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      # NOT NULL制約 nameはカラム名,stringはデータ型
      t.string :name, null: false
      # 一意性制約 インデックス必須 usersはテーブル名、emailはカラム名、stringはデータ型
      add_column :users, :email, :string
      add_index :users, :email, unique: true
      # 外部キー referencesはデータ型 これでuser_idというカラムが生成される
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
