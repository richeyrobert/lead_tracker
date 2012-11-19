class CreateLeadSteps < ActiveRecord::Migration
  def change
    create_table :lead_steps do |t|
      t.string :step
      t.text :notes

      t.timestamps
    end
  end
end
