class CreateOkinis < ActiveRecord::Migration[5.0]
  def change
    create_table :okinis do |t|
      t.references :user, foreign_key: true
      t.references :microposts, foreign_key: true

      t.timestamps
    end
  end
end
