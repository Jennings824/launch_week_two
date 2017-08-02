require "spec_helper"

RSpec.describe Player do
  # Player specs go here.
 let(:player1) { Player.new("Steve", "Pitcher", "Simpsons") }
 let(:player2) { Player.new("Mike", "Catcher", "Flintstones")}


  describe "Player class" do
    it "should take in three arguments one for name, position, and team_name" do
      expect(player1).to be_a(Player)
    end
  end

  describe "#name" do
    it "has a reader for name" do
      expect(player1.name).to eq("Steve")
    end

    it "does not have a writer for name" do
      expect { player1.name = "C. J. Cregg" }.to raise_error(NoMethodError)
    end
  end

  describe "#position" do
    it "has a reader for position" do
      expect(player1.position).to eq("Pitcher")
    end

    it "does not have a writer for position" do
      expect { player1.position = "Catcher" }.to raise_error(NoMethodError)
    end
  end

  describe "all" do
    it "adds player to all players array" do

    expect(Player.all).to be_a(Array)
    end
  end
end
