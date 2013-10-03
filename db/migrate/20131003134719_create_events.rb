class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.time :start_time
      t.time :end_time
      t.string :event_type
      t.string :title
      t.string :location, :default => "TBD"
      t.date :event_date

      t.timestamps
    end
  end
end
