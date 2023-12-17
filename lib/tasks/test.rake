namespace :test do
  namespace :system do
    task :chrome => :environment do |task, args|
      ENV["DRIVER"] = "chrome"
      Rake::Task["test:system"].invoke
    end
  end
end
