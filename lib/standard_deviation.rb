module Stats

    # Your code here for calculating the standard deviation
    def sum_ages(ages)
      ages.sum
    end

    def mean_ages(ages)
      sum_ages(ages) / (ages.count.to_f)
    end

    def subtract_integers(ages)
      subtracted = ages.map do |age|
        (age - mean_ages(ages)).round(1)
      end
    end

    def squared_integers(ages)
      squared = subtract_integers(ages).map do |subtract|
        (subtract ** 2).round(2)
      end
    end

    def squared_sum(ages)
      squared_integers(ages).sum
    end

    def divided_integers(ages)
      squared_sum(ages) / ages.count
    end

    def standard_deviation(ages)
      Math.sqrt(divided_integers(ages)).round(2)
    end

#     def standard_deviation(ages)
#       summed_ages = sum_ages(ages)
#       mean = mean_ages(summed_ages, ages)
#       subtracted = subtract_integers(mean, ages)
#       squared = squared_integers(subtracted)
#       summed_digits = squared_sum(squared)
#       final = divided_integers(summed_digits, ages)
#       root = Math.sqrt(final).round(2)
#     end
#
#     def sum_ages(ages)
#       ages.sum
#     end
#
#     def mean_ages(summed_ages, ages)
#       summed_ages / (ages.count.to_f)
#     end
#
#     def subtract_integers(mean, ages)
#       subtracted = ages.map do |age|
#         (age - mean).round(1)
#       end
#     end
#
#     def squared_integers(subtracted)
#       squared = subtracted.map do |subtract|
#         (subtract ** 2).round(2)
#       end
#     end
#
#     def squared_sum(squared)
#       squared.sum
#     end
#
#     def divided_integers(summed_digits, ages)
#       summed_digits / ages.count
#     end
#
end
