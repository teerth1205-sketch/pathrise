class CreateJobPos < ActiveRecord::Migration[7.0]
  def change
    create_table :job_pos do |t|
      t.integer :ids
      t.string :title
      t.string :companyName
      t.string :url

      t.timestamps
    end
  end
end
