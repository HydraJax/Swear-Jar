class CreateNonProfits < ActiveRecord::Migration
  def change
    create_table :non_profits do |t|
      t.string :link
      t.string :amount
      t.references :user, index: true

      t.timestamps
    end
  end
end
