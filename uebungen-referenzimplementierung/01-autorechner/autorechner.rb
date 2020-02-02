Shoes.app do
  stack do
    title 'Autorechner'

    caption 'Distanz:', margin_top: 10
    distance = edit_line

    caption 'Treibstoffart:', margin_top: 10
    fuel_type = list_box items: ['Benzin', 'Diesel']

    caption 'Verbrauch pro 100km:', margin_top: 30
    consumption = edit_line

    result = tagline ''

    flow do
      button 'Berechnen' do
        fuel_emission_factor = case fuel_type.text
                               when 'Benzin' then 3.92
                               when 'Diesel' then 4.79
                               end

        emissions = distance.text.to_f * fuel_emission_factor * consumption.text.to_f / 100

        result.text = "#{emissions} kg"
      end

      button 'Beenden' do
        close
      end
    end
  end
end
