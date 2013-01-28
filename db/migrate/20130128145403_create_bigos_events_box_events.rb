class CreateBigosEventsBoxEvents < ActiveRecord::Migration
  def change
    create_table :bigos_events_box_events do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
