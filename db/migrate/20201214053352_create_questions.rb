class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text       :text,         null: false
      t.string     :answer,       null: false
      t.text       :commentary,   null: false
      t.text       :kifu,         null: false
      t.references :user,         null: false, foreign_key: true
      t.timestamps
    end
  end
end
