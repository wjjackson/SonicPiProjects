# sonic sub drop

# Coded by ill Will


use_debug false

live_loop :snare do
  sample :sn_generic, beat_stretch: 6, lpf_attack: 0.7, pitch_stretch: rrand(1.2, 0.8) , release: 0.9, cutoff_slide: rrand(0, 5), cutoff: rrand(60, 100)
  sleep rrand(12, 0.5)
end

live_loop :glitches do
  with_fx :gverb, spread: 0.7, mix: rrand(0.5,0.9) do
    sample :glitch_perc1, beat_stretch: rrand(1.3,1.9), lpf_attack: 0.25, release: 2, pitch: rrand(1.2,1.8), release: 0.9, cutoff_slide: rrand(0, 0.5), cutoff: rrand(60, 100)
    sleep rrand(0,2)
  end
end




live_loop :chatter do
  with_fx :gverb, spread: 0.7, mix: rrand(0.5,0.9) do
    sleep 0.125
    sample :vinyl_backspin,  amp: rrand(0.1,0.8),  beat_stretch: rrand(5,0.9), pitch_stretch: rrand(0.5,0.9), pan: rrand(0.125,0.8)
    sleep rrand(1, 8)
    
  end
end


#live_loop :electric_sounds do