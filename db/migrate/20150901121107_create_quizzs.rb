class CreateQuizzs < ActiveRecord::Migration
  def change
    create_table :quizzs do |t|
      t.string :theme
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
