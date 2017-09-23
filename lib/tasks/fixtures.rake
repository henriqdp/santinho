namespace :fixtures do
  desc "Populate DB by loading States/Cities fixtures"
  task load: :environment do
    require 'active_record/fixtures'
    fixtures_dir = File.join(Rails.root, '/spec/fixtures')
     Dir.glob(File.join(fixtures_dir,'*.yml')).each do |file|
       base_name = File.basename(file, '.*')
       puts "Loading #{base_name}..."
       ActiveRecord::FixtureSet.create_fixtures(fixtures_dir, base_name)
     end
  end
end
