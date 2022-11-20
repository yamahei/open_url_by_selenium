# see: https://zenn.dev/ydammatsu/articles/49f1d8b68a920c
require 'selenium-webdriver'

puts "open url by selenium: starting..."

options = Selenium::WebDriver::Chrome::Options.new

# 下記オプションをつけないと Docker 上で動かない。
options.add_argument('--headless')
options.add_argument('--no-sandbox')
options.add_argument('--disable-dev-shm-usage')

url = ARGV[0] || ENV["URL_TO_OPEN"] || "https://www.yahoo.co.jp/"

puts "open url by selenium: opening '#{url}'"
driver = Selenium::WebDriver.for :chrome, options: options
driver.navigate.to url
sleep 10

title = driver.title
puts "open url by selenium: title is '#{title}'"
driver.quit

puts "open url by selenium: finished."
