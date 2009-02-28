package :build_essential do
  description 'Build tools'
  apt 'build-essential' do
    pre :install, 'apt-get update'
  end
  requires :wget
end

package :wget do
  description 'Wget utility'
  apt 'wget'
  
  verify do
    has_executable 'wget'
  end
end