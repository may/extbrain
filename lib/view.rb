# Created: 2020-05-30
# Revised: 2020-05-30

require_relative 'extbrain_data.rb'
require 'tty-reader'

def command_loop
  reader = TTY::Reader.new
  reader.on(:keyctrl_x, :keyescape) do
  puts "Exiting..."
  exit
end
end 


# TODO - escape to cancel or exit?


def hello
  puts "Welcome to extbrain, version 0.1 (\"prototype\"), 2020-05-30"
end
                                                                       
def goodbye
  "Thank you for using extbrain. Have a good day!"
end 


