require "yaml"


def load_library(data)
emoticons = YAML.load_file('lib/emoticons.yml') 
 
end

def get_japanese_emoticon(yaml_file, eng_emoti)
  # code goes here
  translation = ""
  new_hash = load_library(yaml_file)
  new_hash.each do |name, languages|
      if languages[:english] == eng_emoti
      translation = languages[:japanese]
    end
  end
    if translation == ""
      return "Sorry, that emoticon was not found"
    else 
      return translation
    end
end

  "Sorry, that emoticon was not found"
end


def get_english_meaning(file_path, jap_emo)
  # code goes here
  library = load_library('./lib/emoticons.yml')
  library.each do |meaning, idioms|
    return meaning if idioms[:japanese] == jap_emo
    
  end
    "Sorry, that emoticon was not found"
end 