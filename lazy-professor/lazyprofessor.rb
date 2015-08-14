students = File.read "test.txt"

def best_score(students = "")
    scores = students.gsub(/\s+/m, ' ').strip.split
    test_score_counter = students.split[0]
    grade_counter = test_score_counter.split('').count

    grade_counter.times.map do |counter|
      current_scores = scores.map {|w| w[counter] }
      count = Hash.new 0
      current_scores.each do |grade|
        count[grade] += 1
      end
      count.keys.max_by { |grade| count[grade] }
    end
end

puts best_score(students).join
