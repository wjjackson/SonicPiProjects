# Coded by ill Will
use_debug false

use_bpm 80
live_loop :flow do
  with_fx :lpf, cutoff: 75 do
    with_fx :bitcrusher, mix: 0.4 do
      sample :ambi_dark_woosh, rate: rrand(0.6, 0.8),  attack: 0.4
      sleep 16
    end
  end
end

live_loop :bass do
  with_fx :lpf, cutoff: 99 do
    n = [1,2,4,8,16].choose
    sample :loop_compus, attack: 0, release: 0.05, start: 1 - (1.0 / n), rate: [1,1,1,1,1,1,-1].choose
    sleep sample_duration(:loop_compus) / n
  end
end


live_loop :rez do
  with_fx :lpf, cutoff: 75 do
    sample :bass_hard_c
    sleep 8
  end
end
