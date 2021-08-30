class ChangeCommentsStatusDefault < ActiveRecord::Migration[6.1]
  def change
  	change_column_default :comments, :status, false
  end
end
