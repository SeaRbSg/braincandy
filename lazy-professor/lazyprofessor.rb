students = File.read "test.txt"

def best_score(students = "")
    scores = students.gsub(/\s+/m, ' ').strip.split
    test_score_counter = students.split[0]
    grade_counter = test_score_counter.split('').count.to_i
    counter = 0

    until counter > grade_counter do
      puts scores.map {|w| w[counter]}.each_with_object(Hash.new(0)).max_by { |grade, count| count[grade] += 1}
      counter += 1
    end

end

puts best_score(students)
