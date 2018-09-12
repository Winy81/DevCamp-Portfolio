module CurrentUserConcern #a nevnek egyezni kell a file nevvel az undescore bol lesz capital
 extend ActiveSupport::Concern

  def current_user
       #the current_user provided by Devise a super azt jelenti "do not change anything" hogy semmit nem valtoztatok abszolut ugyana zt a viselkedest akarom ami eredetileg a current_usernek van
       super || guest_user_for_check
       #elentese current_user true || OpenSturct.new Egy olyan metodues ami letrehoz egyfajta peldanyt a megadott adatokkal. Theat ugy hasznalahto mint ehu peldany a database-bol
  end

  def guest_user_for_check
     OpenStruct.new(name: "Guest User", 
     	            first_name: "Guest", 
     	            last_name: "User", 
     	            email: "guest@email.com"
     	            )
  end
end
