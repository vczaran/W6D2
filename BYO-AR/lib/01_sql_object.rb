require_relative 'db_connection'
require 'active_support/inflector'

# NB: the attr_accessor we wrote in phase 0 is NOT used in the rest
# of this project. It was only a warm up.

class SQLObject
  def self.columns
    # ...
  end

  def self.finalize!
  end

  def self.table_name=(table_name)
    # ...
  end

  def self.table_name
    # ...
  end

  def self.all
    table_name = self.table_name
    db_connection.execute(<<-SQL)
    SELECT 
      * 
    FROM 
      table_name;
    SQL
  end

  def self.parse_all(results)
    # ...
  end

  def self.find(id)
    table_name = self.table_name
    query = "SELECT * FROM #{table_name} WHERE id = ?"
    db_connection.execute(query, id).first
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
