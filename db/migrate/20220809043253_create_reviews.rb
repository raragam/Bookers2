class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|

      t.string :review_title
      t.text :review_body

      t.timestamps
    end
  end
end
