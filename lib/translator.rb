# require modules here

def load_library(data)
  {
   :angel => {:english => "O:)"}, 
             {:japanese => "☜(⌒▽⌒)☞"},
 
 
 
   :angry =>
             {:english => ">:("},
             {:japanese => "ヽ(ｏ`皿′ｏ)ﾉ"},
 
 
   :bored =>
             {:english => ":O"},
             {:japanese => "(ΘεΘ;)"},
 

 
   :confused =>
             {:english => "%)"},
             {:japanese => "(゜.゜)"},
 

 
   :embarrassed =>
             {:english => ":$"},
             {:japanese => "(#^.^#)"},
 

 
   :fish =>
             {:english => "><>"},
             {:japanese => ">゜))))彡"},
 

 
   :glasses =>
             {:english => "8D"},
             {:japanese => "(^0_0^)"},
 
 
   :grinning =>
             {:english => "=D"},
             {:japanese => "(￣ー￣)"},
 

 
   :happy =>
             {:english => ":)"},
             {:japanese => "(＾ｖ＾)"},
 

 
   :kiss =>
             {:english => ":*"},
             {:japanese => "(*^3^)/~☆"},
 

 
   :sad =>
             {:english => ":'(",
             {:japanese => "(Ｔ▽Ｔ)"},
 

 
   :surprised =>
             {:english => ":o"},
             {:japanese => "o_O"},
 

 
   :wink =>
             {:english =>  ";)"},
             {:japanese => "(^_-)"}
 }
end

def get_japanese_emoticon(file_path, eng_emo)
  # code goes here
  library = load_library('./lib/emoticons.yml')
  library.each do |meaning, idioms|
      return idioms[:japanese] if idioms[:english] == eng_emo
         
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