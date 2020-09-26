class SeniorTest

    def rank_candidate(candidate_points)
        score = calculate_score(candidate_points[0])
        print_score(score)
        return score
    end

    private
    def calculate_score(skill_list)
        score = 0
        for key, value in skill_list 
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




