class SeniorTest
    # i chose not to use the constructor (initiliaze), but to create a method instead
    def rank_candidate(candidate_points)
        unless candidate_points.is_a? Array
            raise ArgumentError, 'parameter is not an array'
        end
        score = calculate_score(candidate_points[0])
        score_text = print_score(score)
        return score_text
    end

    private
    def calculate_score(skill_list)
        score = 0
        for key, value in skill_list 
            value = value > 5 ? 5 : value
            value = value < 0 ? 0 : value
            score += value.to_i
        end
        return score
    end


    def print_score(score)
        if score <= 7
            return 'Júnior - Pontuação ' + score.to_s
        elsif score <= 11
            return 'Pleno - Pontuação ' + score.to_s
        else
            return 'Sênior - Pontuação ' + score.to_s
        end
    end
end


