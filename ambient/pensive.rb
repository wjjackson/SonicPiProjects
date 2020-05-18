
# pensive action

# Coded by ill Will
use_debug false

### frequency modulation? by changing the rate and sleep
#thanks for watching this

live_loop :rhythm do
  with_fx :lpf, cutoff: rrand(70,80) do
    n = [1,2,4,8,16].choose
    sample :drum_bass_hard, amp: 2
    sample :sn_dub, rate: [0.25, 0.5, 0.125, 1].choose, amp: 0.25 if one_in(8)
    sample :ambi_glass_rub, rate: [-1, -0.5].choose, amp: 0.25 if one_in(8)
    sample :loop_compus, attack: 0, release: 0.05, start: 1 - (1.0 / n), rate: [1,1,1,1,1,1,-1].choose
    sample :glitch_bass_g, attack: 0.45, release: 0.75, start: 1 - (1.0 / n), rate: [1,1,1,1,1,1,-1].choose
    sleep sample_duration(:loop_compus) / n
  end
end


live_loop :pad do
  sample :ambi_swoosh, amp: 0.41, attack: 0.5, rate: rrand(0.589, 0.3)
  sleep 14
end



live_loop :chime do
  with_fx :reverb, spread: 0.7, mix: 0.5 do
    sample :ambi_haunted_hum, rate: 0.63, amp: 0.2
    sleep 10
  end
end

live_loop :dark do
  sample :ambi_drone, rate: rrand(0.2,0.6), amp: 0.3
  sleep 6
end


live_loop :cymbs do
  with_fx :reverb, spread: 0.7, mix: 0.5 do
    sample :drum_splash_hard, rate: -0.16, amp: 0.05
    sleep 24
  end
end




