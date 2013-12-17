desc "This task is called by the Heroku scheduler add-on"
task :extract_celebrity_data => :environment do
  puts "Updating data..."
  ExtractCelebrityDataJob.perform_async('bob', 5)
  puts "Job complete."
end
