THE SOLUTION:

This test suite uses Cucumber with Selenium and Ruby language.



INSTRUCTIONS TO SETUP ON UBUNTU 18.04.3 LTS

1. Install Ruby. In Ubuntu, you can execute the command:
sudo apt-get install ruby-full

2. Install Bundler with using the command:
sudo gem install bundler

3. In order to use Bundler with the current version of Ruby (2.5.1 on Ubuntu), you need to update RubyGems. You can do that by running the command:
gem update --system

4. Install the dependences (gems) using the command:
bundler install

5. Run the tests by executing the following the command in the folder "Features":
cucumber features/search.feature



REPORT (optional):

If you want to generate a report, do the following:

In the folder "Features", run the command:
cucumber features/search.feature --format pretty --expand --format json -o "reports/report.json" && ruby reports/report_builder.rb

Then, the file "cucumber_web_report.html" will be created in the folder Reports
