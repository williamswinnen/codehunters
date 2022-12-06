namespace :bounty do
  desc "mark bounties as unsolved"
  task unsolve: :environment do
    Bounty.unsolved!
  end
end
