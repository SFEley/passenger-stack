package :git, :provides => :scm do
  description 'Git Distributed Version Control'
  apt %w( git-core )
  
  verify do
    has_executable 'git'
  end
end
