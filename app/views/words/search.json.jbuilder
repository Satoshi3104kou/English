json.array! @words do |word|
  json.id word.id
  json.letter word.letter
  json.meaning word.meaning
  json.engineer tweet.engineer
  
end