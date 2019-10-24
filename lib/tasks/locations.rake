namespace :locations do
  desc 'Get all complete locations indonesia'
  task setup_location: :environment do
    Locations::GetProvincesService.new.call
    Locations::GetCitiesService.new.call
    Locations::GetDistrictsService.new.call
    Locations::GetUrbanVillagesService.new.call
  end
end
