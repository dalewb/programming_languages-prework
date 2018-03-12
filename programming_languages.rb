require 'pry'


languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
  }
}


def reformat_languages(languages)
  new_hash ={}
  languages.each do |style, lang_data|
    lang_data.each do |name, type_data|
      type_data.each do |k,v|
        new_hash[name] = {k => v} unless new_hash[name]
        # binding.pry 
        if new_hash[name].keys.include?(:style)
          binding.pry
          new_hash[name][:style] << style 
        else
          new_hash[name][:style] = [style] 
        end 
        # binding.pry
      end
    end 
  end 
  new_hash
end

reformat_languages(languages)
