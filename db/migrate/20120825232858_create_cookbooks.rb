class CreateCookbooks < ActiveRecord::Migration
  def change
    create_table :cookbooks do |t|

      t.timestamps
    end
  end
end
