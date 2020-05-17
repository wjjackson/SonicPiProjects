#dark ambient path

# created by Ill WIll


use_synth :dull_bell

with_fx :reverb, mix: 0.7 do
  with_fx :panslicer, mix: 0.6 do
    with_fx :echo, mix: 0.2 do
      with_fx :lpf, cutoff: 60 do
        with_fx :echo, max_phase: 99, mix: 0.5 do
          
          
          
          live_loop :note1 do
            play choose([:D4,:E4]), attack: 6, release: 60
            sleep 8
          end
          
          live_loop :note2 do
            play choose([:Fs3,:G4]), attack: 4, release: 5
            sleep 16
          end
          
          live_loop :note3 do
            play choose([:A4, :C2]), attack: 5, release: 12
            sleep 11
          end
          
          live_loop :note4 do
            play choose([:D5, :Gs3]), attack: 5, release: 8
            sleep 9
          end
          
          live_loop :note5 do
            play choose([:Ds2,:E2]), attack: 18, release: 58
            sleep 8
          end
          
          live_loop :note6 do
            play choose([:F4,:G4]), attack: 14, release: 50
            sleep 10
          end
          
          live_loop :note7 do
            play choose([:A2, :C3]), attack: 55, release: 60
            sleep 5
          end
          
          live_loop :note8 do
            play choose([:D5, :G5]), attack: 5, release: 8
            sleep 19
          end
        end
      end
    end
  end
end



