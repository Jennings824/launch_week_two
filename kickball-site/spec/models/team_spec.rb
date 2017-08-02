require "spec_helper"

RSpec.describe Team do
  # Team specs go here.


   describe "Team class" do
     it "should take in one argument for name" do
       team = Team.new("Jetsons")
       expect(team).to be_a(Team)
     end
   end

   describe "#name" do
     it "has a reader for name" do
      team = Team.new("Jetsons")
       expect(team.name).to eq("Jetsons")
     end
   end

   describe "all" do
     it "adds team to all_teams array" do
      team = Team.new("Jetson Jets")
     expect(Team.all).to be_a(Array)
     end

    #  it "checks the array to make sure the pitcher is Jane for the Jetsons" do
    #    team = Team.new("Jetson Jets")
    #    team.players
    #    expect(@team_players[1].name).to eq("Jane Jetson")
    #  end

   end


end
