# require modules here
require 'pry'
require 'yaml'


# angel:
#   - "O:)"      
#   - "☜(⌒▽⌒)☞"
# => "angel" => ["O:)", - "☜(⌒▽⌒)☞" ]

  # happy:
  #   - ":)"
  #   - "(＾ｖ＾)"

  # {
  #     'happy' => {
  #       :english => ":)",
  #       :japanese => "(＾ｖ＾)"
  #     }
  # }
  
#   {
#   "angel" => [ "O:)", "☜(⌒▽⌒)☞" ],
#   "angry" => [ ">:(", "ヽ(ｏ`皿′ｏ)ﾉ" ],
#   "bored" => [ ":O", "(ΘεΘ;)" ],
#   "confused" => [ "%)", "(゜.゜)" ],
#   "embarrassed" => [ ":$", "(#^.^#)" ],
#   "fish" => [ "><>", ">゜))))彡" ],
#   "glasses" => [ "8D", "(^0_0^)" ],
#   "grinning" => [ "=D", "(￣ー￣)" ],
#   "happy" => [ ":)", "(＾ｖ＾)" ],
#   "kiss" => [ ":*", "(*^3^)/~☆" ],
#   "sad" => [ ":'(", "(Ｔ▽Ｔ)" ],
#   "surprised" => [ ":o", "o_O" ],
#   "wink" => [ ";)", "(^_-)" ]
# }

def load_library(yaml_library)
  # code goes here
  library = YAML.load_file(yaml_library)
  translation = {}
  
  library.each do |meaning, language|
    translation[meaning] = {}
    eng_emoji = language[0]
    jap_emoji = language[1]
    
    translation[meaning][:english] = eng_emoji
    translation[meaning][:japanese] = jap_emoji
  end
  translation
end

  # {
  #     'happy' => {
  #       :english => ":)",
  #       :japanese => "(＾ｖ＾)"
  #     }
  # }

def get_japanese_emoticon(yaml_library, english_emoticon)
  # code goes here
    library = load_library(yaml_library)
  
    library.each do |meaning, language|
      if language[:english] == english_emoticon
        return language[:japanese]
        
      end
    
    end
  
    "Sorry, that emoticon was not found"
    
end

def get_english_meaning(yaml_library, japanese_emoticon)
  # code goes here
    library = load_library(yaml_library)
  
    library.each do |meaning, language|
      if language[:japanese] == japanese_emoticon
        return meaning
      end
      
    end

    "Sorry, that emoticon was not found"
  
end






