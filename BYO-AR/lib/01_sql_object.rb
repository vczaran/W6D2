require_relative 'db_connection'
require 'active_support/inflector'

# NB: the attr_accessor we wrote in phase 0 is NOT used in the rest
# of this project. It was only a warm up.

class SQLObject
  def self.columns
    self.table_name.each do |col|
      puts col
    end
  end

  def self.finalize!
  end

  def self.table_name=(table_name)
    # ...
  end

  def self.table_name
    self.to_s.downcase + 's'  # assuming table name is plural
  end

  def self.all
    table_name = self.table_name
    data = DBConnection.execute(<<-SQL)
    SELECT 
      * 
    FROM 
      #{table_name}
    SQL

    parse_all(data)
  end

  def self.parse_all(results)
    # ...
  end

  def self.find(id)
    # table_name = self.table_name
    # data = db_connection.execute(<-- SQL, id)
    # SELECT * 
    # FROM #{table_name} 
    # WHERE id = ?


    # SQL
  end

  def initialize(params = {})
    # ...
  end

  def attributes
    # ...
  end

  def attribute_values
    # ...
  end

  def insert
    # ...
  end

  def update
    # ...
  end

  def save
    # ...
  end
end
