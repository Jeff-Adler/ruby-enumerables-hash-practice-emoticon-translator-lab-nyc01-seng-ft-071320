# require modules here
  require 'yaml'
  require 'pry'

def load_library(filepath)
  # code goes here
  temp_library = YAML.load_file(filepath)
  library = {}
  temp_library.each do |key,value|
    library[key] = {
        :english => value[0],
        :japanese => value[1]
        }
  end
  library
end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning(japanese_emoticon)
  # code goes here
  load_library()
end
