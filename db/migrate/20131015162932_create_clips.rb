class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
