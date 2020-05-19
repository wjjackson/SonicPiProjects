

#fractured tape loop
in_thread do
  
  with_fx  :whammy, grainsize: [66,85,100].choose, mix: [0.2].choose do
    with_fx :tremolo, phase: 0.8, mix: 0.7 do
      with_fx :panslicer, phase: 0.25, mix: 0.5 do
        live_loop :swoosh do
          sample :ambi_glass_hum,attack: 0.3,release: 0.75 ,amp: 0.6, rate: [-0.75, -0.5,0.25,-0.25, 0.9,-0.9, 0.5,0.75].choose
          sleep 4
        end
      end
    end
  end
end

