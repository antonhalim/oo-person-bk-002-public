class Person
  require 'pry'

  attr_reader :name
  attr_writer :hygiene, :happiness
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness
    if @happiness < 0
      @happiness = 0
    elsif @happiness > 10
      @happiness = 10
    end
    @happiness
  end

  def hygiene
    if @hygiene < 0
      @hygiene = 0
    elsif @hygiene > 10
      @hygiene = 10
    end
    @hygiene
  end

  def happy?
    if happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if @hygiene > 7 
      true
    else
      false
    end
  end

  def get_paid(money)
    @bank_account += money
    "all about the benjamins"
  end

  def take_bath
    self.hygiene+=(4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3 
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
      if topic == "politics"
        self.happiness -= 2
        friend.happiness -= 2
        "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        self.happiness += 1
        friend.happiness += 1
        "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
      end
  end
end

