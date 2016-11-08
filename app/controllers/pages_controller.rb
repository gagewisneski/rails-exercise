class PagesController < ApplicationController

  def home
  end

  def fortune
    fortunes = [
      "A fresh start will put you on your way",
      "A friend asks only for your time not your money",
      "A friend is a present you give yourself",
      "A gambler not only will lose what he has, but also will lose what he doesn’t have",
      "A golden egg of opportunity falls into your lap this month",
      "A good friendship is often more important than a passionate romance"
    ]

    fortunes.shuffle!

    @fortune = fortunes[0]
  end

  def lottery
    numbers = [
      1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59 ,60
    ]

    @lottery_numbers = []

    6.times do
      numbers.shuffle!
      @lottery_numbers << numbers.pop
    end

    @first = @lottery_numbers[0]
    @second = @lottery_numbers[1]
    @third = @lottery_numbers[2]
    @fourth = @lottery_numbers[3]
    @fifth = @lottery_numbers[4]
    @sixth = @lottery_numbers[5]
  end

  def counter
    #You can't count the amount of refreshes because whenever you refresh the page it restarts the code from the beginning so it would set your views counter to 0 every time.
  end

  def bottles
    count = 99
    @lyrics = []
    99.times do 
      @lyrics << "There are #{count} bottles on the wall, we take one down pass it around now there are #{count - 1} on the wall."
      count -= 1
    end
    @lyrics << "There are no more bottles on the wall"
    @lyrics
  end

end








