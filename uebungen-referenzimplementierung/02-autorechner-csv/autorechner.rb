require 'csv'

Shoes.app do
  stack do
    title 'Autorechner (CSV)'

    results = stack
    result = tagline

    button 'Datei auswaehlen..' do
      filename = ask_open_file

      input = CSV.read(filename)

      results.clear

      emissions = input.map do |track|
        fuel_emission_factor = case track[3]
                               when 'Benzin' then 3.92
                               when 'Diesel' then 4.79
                               end

        emissions = track[2].to_f * fuel_emission_factor * track[4].to_f / 100

        results.append { para "#{track[0]} - #{track[1]}: #{emissions}" }

        emissions
      end

      result.text = "#{emissions.reduce(:+)} kg"
    end
  end
end
