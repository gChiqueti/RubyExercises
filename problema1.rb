class SeniorTest

    def rank_candidate(candidate_points)
        unless candidate_points.is_a? Array
            raise ArgumentError, 'param is not a array'
        end
        score = calculate_score(candidate_points[0])
        print_score(score)
        return score
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
            puts 'Júnior - Pontuação ' + score.to_s
        elsif score <= 11
            puts 'Pleno - Pontuação ' + score.to_s
        else
            puts 'Senior - Pontuação ' + score.to_s
        end
    end
end




