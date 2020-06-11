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


def get_japanese_emoticon(filepath,english_emoticon)
  # code goes here
  library = load_library(filepath)
  library.each do |emotion, description|
    if library[:english] == english_emoticon
      library[:japanese]
    end
  end
end

def get_english_meaning(filepath,japanese_emoticon)
  # code goes here
  library = load_library(filepath)
  library.each do |emotion, description|
    if library[:japanese] == japanese_emoticon
      emotion.to_s
    end
  end
end
