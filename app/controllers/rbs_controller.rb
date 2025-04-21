class RbsController < ApplicationController

  def homepage
    render ({:template => "game_templates/homepage"})
  end

  def playrock
    @computer_choice = ["rock", "paper", "scissors"].sample

    if @computer_choice == "rock"
      @outcome = "tied"
    elsif @computer_choice == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end  

    render ({:template => "game_templates/play_rock"})
  end

  def playpaper
    @computer_choice = ["rock", "paper", "scissors"].sample
  
    if @computer_choice == "rock"
      @outcome = "won"
    elsif @computer_choice == "paper"
      @outcome = "tied"
    else
      @outcome = "lost"
    end

    render ({:template => "game_templates/play_paper"})
  end

  def playscissors
    @computer_choice = ["rock", "paper", "scissors"].sample
  
    if @computer_choice == "rock"
      @outcome = "lost"
    elsif @computer_choice == "paper"
      @outcome = "won"
    else
      @outcome = "tied"
    end

    render ({:template => "game_templates/play_scissors"})
  end
end
