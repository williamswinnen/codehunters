class AddGithubRepoToSolution < ActiveRecord::Migration[7.0]
  def change
    add_column :solutions, :github_repo, :string
  end
end
