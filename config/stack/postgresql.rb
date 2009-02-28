package :postgres do
  description 'PostgreSQL database'
  apt %w( postgresql postgresql-client libpq-dev )
  
  verify do
    has_executable 'psql'
  end
end
 
package :postgresql_driver, :provides => :database do
  description 'Ruby PostgreSQL database driver'
  gem 'postgres'
  
  verify do
    has_gem 'postgres'
  end
  
  requires :ruby_enterprise, :postgres
end
