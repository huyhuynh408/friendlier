class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :age
      t.string :height
      t.string :gender
      t.text   :short_bio
      t.string :interests
      t.string :first_quality
      t.string :second_quaity
      t.string :third_quality

      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
