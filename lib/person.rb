class Person
    attr_accessor  :happiness, :hygiene, :bank_account
    attr_reader :name
    def initialize(name, bank_account=25,happiness=8,hygiene=8 )
        @name = name
        @bank_account=bank_account
        @happiness =happiness
        @hygiene =hygiene
    end
    def happiness=(num)
        @happiness =  if num > 10
                        10
                      elsif num < 0
                        0
                      else
                        num
                      end
                    end
    def hygiene=(x)
        @hygiene= if x >10
            10
        elsif x < 0
            0
        else
            x
        end
    end
    def happy?
        if (@happiness >7)
            return true
        else
            return false
        end
    end
    def clean?
        if (@hygiene >7)
            return true
        else
            return false
        end
    end
    def get_paid dollar
        @bank_account+=dollar
        "all about the benjamins"
    end
    def take_bath
        self.hygiene+=4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene-=3
        self.happiness+=2
        "♪ another one bites the dust ♫"
    end
     def call_friend homie
        homie.happiness+=3
        self.happiness+=3
       "Hi #{homie.name}! It's #{name}. How are you?"
     end
     def start_conversation human,topic
        if( topic == "politics")
            self.happiness-=2
            human.happiness-=2
            return "blah blah partisan blah lobbyist"
        end
        if (topic == "weather")
            self.happiness+=1
            human.happiness+=1
            return 'blah blah sun blah rain'
    else
        'blah blah blah blah blah'
    end
    end
end


  john = Person.new("John")
  friend = Person.new("Friend")
  john.get_paid(5)
  john.happy?
  john.take_bath
  

  puts john.name
  puts friend.name
  puts john.bank_account
  puts john.happy?
  puts friend.happy?
  puts john.hygiene
  
  
  
  