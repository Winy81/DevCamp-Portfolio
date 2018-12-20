module PagesHelper
	 def twitter_parser(tweet)
    regex = %r{
      \b
      (
        (?: [a-z][\w-]+:
         (?: /{1,3} | [a-z0-9%] ) |
          www\d{0,3}[.] |
          [a-z0-9.\-]+[.][a-z]{2,4}/
        )
        (?:
         [^\s()<>]+ | \(([^\s()<>]+|(\([^\s()<>]+\)))*\)
        )+
        (?:
          \(([^\s()<>]+|(\([^\s()<>]+\)))*\) |
          [^\s`!()\[\]{};:'".,<>?«»“”‘’]
        )
      )
    }ix

    tweet.gsub(regex) do |url|
      "<a href='#{url}' target='_blank'>#{url}</a>"
    end.html_safe

  end

   def color_of_bar(percent)
     if percent >= 75
       "progress-bar bg-danger"
     elsif percent >= 50
       "progress-bar bg-warning"
     elsif percent >= 25
       "progress-bar bg-success"
     else
       "progress-bar bg-muted"
     end
  end

   def level_of_bar(percent)
     if percent >= 75
       "Senior skill level"
     elsif percent >= 50
       "Usefull skills"
     elsif percent >= 25
       "Basic knowladge"
     else
       "Basic"
     end
  end

end
