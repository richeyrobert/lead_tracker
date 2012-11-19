class CreateLeadSources < ActiveRecord::Migration
  def change
    create_table :lead_sources do |t|
      t.string :source
      t.text :notes

      t.timestamps
    end
  end
end
