# encoding: utf-8
namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    data1 = Locations.create(locationclass:"旅遊", name:"陽明山", phone:"0233456789", lat:"25.157327", lng:"121.547999")
    data2 = Locations.create(locationclass:"旅遊", name:"台北101", phone:"021111111", lat:"25.034264", lng:"121.560464")
    data3 = Locations.create(locationclass:"旅遊", name:"太魯閣", phone:"0237878987", lat:"24.156348", lng:"121.621263")
    data4 = Locations.create(locationclass:"客戶", name:"小陳", phone:"0932565443", lat:"25.042915", lng:"121.564965")
    data5 = Locations.create(locationclass:"客戶", name:"小李", phone:"0911456789", lat:"25.042915", lng:"121.564965")
    data6 = Locations.create(locationclass:"客戶", name:"小白", phone:"0953336339", lat:"25.042915", lng:"121.564965")
  end
end