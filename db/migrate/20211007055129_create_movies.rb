class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :comment
      t.text :thumbnail_url
      t.string :youtube_mid
      t.string :youtube_url
      t.string :author_name
      t.boolean :display_flag, default: true
      t.references :pattern, foreign_key: true
      t.integer :order_number, default: 0

      t.timestamps
    end
  end
end
