# Write your code here.
def dictionary
dictionary = 
{
  "hello" => 'hi',
  "to" => '2',
  "too" => '2',
  "two" => '2',
  "for" => '4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  'at' => "@",
  "and" => "&"
}
end

def word_substituter(tweet)
  tweet.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      words = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end
     
def bulk_tweet_shortener(arr)
  arr.each do |t|
    puts word_substituter(t)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end
  
     