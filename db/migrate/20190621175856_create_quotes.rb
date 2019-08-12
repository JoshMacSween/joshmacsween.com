# frozen_string_literal: true

class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes, &:timestamps
  end
end
