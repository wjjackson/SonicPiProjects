
#coffee by iLLWiLL

use_bpm 70
use_random_seed 3
use_debug false

in_thread do
  live_loop :floor do
    sample :drum_heavy_kick, amp: 0.4
    sleep 1
  end
  
  with_fx :lpf, cutoff: 60 do
    
    with_fx :wobble, mix: 0.4 do
      with_fx :gverb do
        live_loop :floor do
          sample :drum_heavy_kick, amp: 1, attack: 0.3, rate: [0.5, 2, 1].choose, amp: 0.4
          sleep 1
        end
        
        live_loop :floor do
          sample :drum_heavy_kick, amp: 1, rate: [0.5, 2, 1, 4].choose, amp: 0.4
          sleep 1
        end
      end
    end
    
    
    with_fx  :gverb, room: 0.3, spread: 0.2, mix: 0.8 do
      live_loop :ambiet do
        sample :ambi_dark_woosh, rate: [0.5, 1, 0.23,0.48, 0.66].choose, amp: 0.4
        sleep 4
      end
    end
  end
  
  load_samples [:drum_heavy_kick, :elec_blip]
  
  with_fx :echo, room: 0.8, decay: 1, phase: 0.25, mix: 0.4 do
    live_loop :rhythm do
      sample :drum_heavy_kick, amp: 0.1
      sample :elec_blip, rate: [0.5, 2, 1, 4].choose * [1, 2, 3, 4, 0.5,0.250,0.25,0.5].choose, amp: 0.1
      sleep [ 0.25, 0.25, 0.125, 0.125, 0.125, 0.125].choose
    end
  end
  
  with_fx :panslicer, phase: 0.25, mix: 0.4 do
    live_loop :machine do
      sample :loop_industrial, amp: 0.05, rate: [2,1,1,1,1,1,2,1,1,2,1].choose
      sleep 1
    end
  end
end




