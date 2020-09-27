class VowelCounter
    ACCENTS_CONVERSION_STRING = [
    "ÀÁÂÃÄÅàáâãäåĀāĂăĄąÈÉÊËèéêëĒēĔĕĖėĘęĚěÌÍÎÏìíîïĨĩĪīĬĭĮįİıÒÓÔÕÖØòóôõöøŌōŎŏŐőÙÚÛÜùúûüŨũŪūŬŭŮůŰűŲų",
    "AAAAAAaaaaaaAaAaAaEEEEeeeeEeEeEeEeEeIIIIiiiiIiIiIiIiIiOOOOOOooooooOoOoOoUUUUuuuuUuUuUuUuUuUu"]
    # i did not find a better way to consider accented vowels as a vowel but to convert them by hand

    # i chose not to use the constructor (initiliaze), but to create a method instead
    def count_vowels(text)
        unless text.is_a? String
           raise ArgumentError, 'error in count_vowels: parameter is not a string' 
        end

        text = text.downcase # change upcase chars to downcase
        text = text.tr(ACCENTS_CONVERSION_STRING[0], ACCENTS_CONVERSION_STRING[1]) # remove accents from string
        vowels = {'a'=>0, 'e'=>0, 'i'=>0, 'o'=>0, 'u'=>0}      
        text.split("").each do |char|
            if vowels.has_key?(char)
                vowels[char] += 1
            end
        end
        return vowels
    end
end