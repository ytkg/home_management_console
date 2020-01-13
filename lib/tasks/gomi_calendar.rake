namespace :gomi_calendar do
  task update: :environment do
    monthlies = ['2019-10', '2019-11', '2019-12', '2020-01', '2020-02', '2020-03',
                 '2020-04', '2020-05', '2020-06', '2020-07', '2020-08', '2020-09']
    url = ''
    html = Nokogiri::HTML.parse(open(url).read)
    html.css('#contents-area .table_data').each_with_index do |data, i|
      data.css('table tr td').each do |td|
        next if td.text.blank?
        day, content = td.text.split('日')
        gomi_calendar = GomiCalendar.find_or_initialize_by(date: "#{monthlies[i]}-#{day}")
        gomi_calendar.update(content: content)
      end
    end
  end
end
