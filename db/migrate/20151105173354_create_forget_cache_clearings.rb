class CreateForgetCacheClearings < ActiveRecord::Migration
  def change
    create_table :forget_cache_clearings do |t|

      t.timestamps null: false
    end
  end
end
