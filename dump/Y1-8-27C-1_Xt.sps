include "scripts/names.spp"
include "scripts/common.spp"
"scene_start"
{
	bg_init $blackpx
	bgm $ambBeginWind
	bgm volume "ambBeginWind" 0.8 4.0
	show "unbound_earth1_CG_1" "cg/unbound_earth1_CG.jpg" 0.0 1.0 0.0 1.0 1.0 1.0 1.0 0.0
	show "unbound_earth1_CG" "cg/unbound_earth1_CG.jpg" 0.3 0.5 0.3 0.5 0.73 0.73 1.0 0.0
	show "unbound_earth2_CG" "cg/unbound_earth2_CG.jpg" 0.5 0.2 0.5 0.2 0.73 0.73 1.0 0.0
	
	show "End_1_en" "text/End_1_en.png" $cgCenter 1.0 0.0
	show "End_2_en" "text/End_2_en.png" $cgCenter 1.0 0.0
	show "End_3_en" "text/End_3_en.png" $cgCenter 1.0 0.0
	
	color "unbound_earth1_CG_1" $invisibleO
	color "unbound_earth1_CG" $invisibleO
	color "unbound_earth2_CG" $invisibleO
	
	color "End_1_en" $invisibleO
	color "End_2_en" $invisibleO
	color "End_3_en" $invisibleO
	
	show "st_icon_next" "effects/st_icon_next.png" 0.99 0.02 0.99 0.02 1.0 1.0 1.0 0.0
	color "st_icon_next" $invisibleO
	
	delay 1.2
	color "End_1_en" 1.0 1.0 1.0 1.0 1.0 linear
	delay 1.05
	color "End_2_en" 1.0 1.0 1.0 1.0 1.0 linear
	delay 2.5
	color "End_3_en" 1.0 1.0 1.0 1.0 1.0 linear
	delay 2.0
}

delay 5.0

"ctc_icon"
{
	color "st_icon_next" 1.0 1.0 1.0 1.0 0.6 linear
	wait
	color "st_icon_next" 1.0 1.0 1.0 0.5 0.5 linear
	wait
} $repeat



id 001-001
s `This is it. Let her hear it: a requiem for a world bound by "truth".`

s ``

cancel "ctc_icon" skip_loop_end


sfx $begin
sfx $impactDiveB
bgm $Opening

move "chromatic" infront "End_3_en"

"hide_ctc"
{
	hide "st_icon_next" 0.1
}

"f_chr5_1"
{
	effect chromatic 0.5 0.4 0.4 0.0 0.2
	delay 0.2
	effect chromatic 0.0 0.4 0.4 0.0 3.0
	delay 0.7
	delay 2.3
}

delay 1.4

cancel "scene_start" wait_loop_end

"sequence"
{
	bgm volume "ambBeginWind" 0.2 7.0
	color "unbound_earth1_CG_1" 1.0 1.0 1.0 1.0 8.0 linear
	move "unbound_earth1_CG_1" -2000 0 30.0 outquad
	delay 6.0
	
	hide "End_1_en" 3.0
	hide "End_2_en" 3.0
	hide "End_3_en" 3.0
	delay 2.0
	delay 3.0
	color "unbound_earth1_CG" $visibleV 5.0 linear
	move "unbound_earth1_CG" -500 0 6.5 outquad
	delay 6.5
	hide "unbound_earth1_CG_1" 0.0
	delay 2.3
	color "unbound_earth2_CG" $visibleV 2.1 linear
	move "unbound_earth2_CG" -130 -700 15.0 outquad
	delay 0.6
	move "unbound_earth1_CG" -130 -700 15.0 outquad
	sfx $flashforwardA
	delay 5.2
	hide "unbound_earth1_CG" 0.0
	hide "unbound_earth2_CG" 4.5
	delay 5.0
	hide "blackpx" 0.0
	
	show "moving_ahead_CG" "cg/moving_ahead_CG.jpg" 1.0 0.5 1.0 0.5 0.71 0.71 1.0 0.0
	show "moving_ahead_CG_2" "cg/moving_ahead_CG.jpg" 1.0 0.5 1.0 0.5 0.53 0.53 1.0 0.0
	
	color "moving_ahead_CG" $invisibleO
	color "moving_ahead_CG_2" $invisibleO
}


delay 30.6

sfx $footstepsDB

delay 4.0
cancel "sequence" skip_loop_end

screen_textbox show 1.0
delay 1.2

id 001-002
s `Are you still scared? Like a child?`

id 001-003
s `What are you afraid of?`

screen_textbox hide 0.3
"second"
{
	sfx "flashforwardB" "sound/flashforwardB.ogg" 0.5
	bgm $ambFlashforward
	bgm volume "ambFlashforward" 0.5 3.0
	bgm volume "Opening" 0.75 4.0
	color "moving_ahead_CG" $visibleV 1.2 linear
	overlay "moving_ahead_CG" 1.0 1.0 1.0 1.0 0.0 linear
	delay 1.4
	overlay "moving_ahead_CG" 1.0 1.0 1.0 0.9 0.4 linear
	delay 0.4
	overlay "moving_ahead_CG" 1.0 1.0 1.0 0.0 2.0 linear
	delay 1.0
	sfx "impactDeep" "sound/impactDeep.ogg" 0.67
	sfx "emphasisB" "sound/emphasisB.ogg" 0.67
}

s ``

"to_first"
{
	move "moving_ahead_CG" 1400 0 40.0 outquad
}

screen_textbox show 1.0
delay 1.2

id 001-004
s `You're afraid of what she's going to say, because you know she's going to
say it.`

id 001-005
s `There's no doubt that this is your fault.`

"and_after"
{
	color "moving_ahead_CG_2" $visibleV 2.0 linear
	move "moving_ahead_CG_2" 250 0 40.0 outquad
	
	color "moving_ahead_CG" $invisibleV 1.0 linear
}

move "chromatic" infront "moving_ahead_CG_2"

invoke "anim/fq_chr8.spi" "fq_chr8_1_y"
show $whitepx 1.0 0.5

"heart"
{
	sfx $impactDeep
	delay 1.69
	hide "whitepx" 2.0
}

id 001-006
s `We know: you've thought of her every day. You've thought of her for years
and years.`

id 001-007
s `Because of that, you can understand her, even if you waste time asking
her why.`

"darkened"
{
	delay 0.5
	color "moving_ahead_CG_2" 1.0 1.0 1.0 0.0 8.0 linear
}

id 001-008
s `We can't say you did anything wrong. We made it here together.`

id 001-009
s `Don't let it hurt you. You've been hurt enough.`

screen_textbox hide 0.3

sfx $footstepsDB
bgm volume "ambFlashforward" 0.0 3.0

"under"
{
	show $blackpx 1.0 0.8
}
cancel "second" wait_loop_end
cancel "under" wait_loop_end
cancel "darkened" skip_loop_end
cancel "darkened" skip_loop_end
hide "moving_ahead_CG" 0.0
hide "moving_ahead_CG_2" 0.0
delay 2.0

s ``

delay 1.0

screen_textbox show 1.0
delay 1.2

id 001-010
s `...Are they going to be able to help?`

id 001-011
s `Well...it's best to leave it to them. They haven't failed you before.`

id 001-012
s `...She's here.`
screen_textbox hide 1.0
delay 0.5

bgm volume "Opening" 0.6 4.0
sfx "flashforwardD" "sound/flashforwardD.ogg" 0.4
delay 2.0

cancel "heart" wait_loop_end

delay 1.0

s ``

sfx $footstepsDC

delay 6.0


screen_textbox show 1.0
delay 1.2

id 001-013
s $Yo `"..."`

id 001-014
s $Yo `"...Hey."`

id 001-015
s `She looks your way, smiling.`

screen_textbox hide 0.3

"first"
{
	sfx $flashforwardC
	sfx $emphasisA
	show "silhouetted_CG" "cg/silhouetted_CG.jpg" $cgCenter 1.0 2.0
	move "chromatic" infront "silhouetted_CG"
	overlay "silhouetted_CG" 1.0 1.0 1.0 1.0 0.0 linear
	delay 1.8
	overlay "silhouetted_CG" 1.0 1.0 1.0 0.9 0.4 linear
	delay 0.4
	overlay "silhouetted_CG" 1.0 1.0 1.0 0.0 9.0 linear
}

delay 3.2

"rhythm"
{
	move "silhouetted_CG" -20 0 3.8 inoutquad
	delay 4.0
	move "silhouetted_CG" 20 0 4.8 inoutquad
	delay 5.0
} $repeat

s ``

bgm volume "ambBeginWind" 0.3 3.0

delay 1.0

screen_textbox show 1.0
delay 1.5

id 001-016
s $Re `"Hey."`

sfx $fragmentPulse
invoke "anim/f_chr3.spi" "f_chr3_1_x"

id 001-017
s `Light begins to fall. It begins to break down, and you feel something snap
in your neck. You're wincing.`

id 001-018
s `So...it's done. She did it, like you knew she would.`

id 001-019
s `We all know what this means, but you still have to ask her—`

cancel "rhythm" skip_loop_end
invoke "anim/shake_normal.spi" "cg_shake_1" "silhouetted_CG"
invoke "anim/f_chr5.spi" "f_chr5_1_x"
bgm volume "ambFlashforward" 0.6 3.0
sfx $impactDiveB
sfx $impactDeep
cancel "cg_shake_1" wait_loop_end

"rhythm_2"
{
	move "silhouetted_CG" -20 0 3.8 inoutquad
	delay 4.0
	move "silhouetted_CG" 20 0 4.8 inoutquad
	delay 5.0
} $repeat

id 001-020
s `as the sky drops to the earth, as the earth shakes, as it's cast up in gray
clouds—`

cancel "first" wait_loop_end

"gone"
{
	sfx $impactPulseChroma
	sfx $emphasisA
	color "silhouetted_CG" 1.0 1.0 1.0 0.0 0.5 linear
	overlay "silhouetted_CG" 0.0 0.0 0.0 1.0 0.5 linear
	delay 0.5
	color "silhouetted_CG" 1.0 1.0 1.0 1.0 2.0 linear
	delay 0.8
	overlay "silhouetted_CG" 0.0 0.0 0.0 0.0 2.0 linear
	delay 1.0
}

id 001-021
s `as skies we cannot see go red, and seas beyond us turn black—`

id 001-022
s $Yo `"What did you do? What is that...?"`

id 001-023
s `And...`

id 001-024
s $Re `"That?"`

id 001-025
s `she says, laughing as she turns to look up at the pieces cascading down
from heaven...`

id 001-026
s $Re `"That's an angel losing one of its wings."`

cancel "rhythm_2" skip_loop_end
sfx $gracefallExplosionE
sfx $impactDeep
invoke "anim/shake_heavy_reverse.spi" "cg_shake_2" "silhouetted_CG"
invoke "anim/f_chr8.spi" "f_chr8_1_x"

id 001-027
s `You grit your teeth, and try not to see the devastation.`

cancel "cg_shake_2" wait_loop_end
cancel "gone" wait_loop_end

"rhythm_3"
{
	move "silhouetted_CG" -20 0 3.8 inoutquad
	delay 4.0
	move "silhouetted_CG" 20 0 4.8 inoutquad
	delay 5.0
} $repeat

"away"
{
	sfx $flashforwardC
	overlay "silhouetted_CG" 0.98 0.76 0.44 0.4 0.3 linear
	wait
	overlay "silhouetted_CG" 1.0 1.0 1.0 1.0 1.8 linear
	delay 1.3
	color "silhouetted_CG" 1.0 1.0 1.0 0.0 0.5 linear
	delay 2.0
	color "silhouetted_CG" 1.0 1.0 1.0 1.0 2.0 linear
	wait
	overlay "silhouetted_CG" 0.79 0.79 0.79 0.3 2.1 linear
	delay 5.1
}

"other"
{
	sfx $impactPulseChroma
	sfx $emphasisB
	delay 12.2
	overlay "silhouetted_CG" 0.79 0.79 0.79 0.7 6.0 linear
	wait
	sfx $emphasisA
	overlay "silhouetted_CG" 1.0 0.0 0.0 0.0 0.6 linear
	delay 1.0
}

id 001-028
s `But you can't not see it. It's in you. It's in all of us.`

id 001-029
s `Faces we can't know, distorting and shattering.`

id 001-030
s `The feathers of a thousand dreams are falling down. Hosts of them, and
billions more...`

id 001-031
s `Agony has spread out, and it will spread again and again.`

screen_textbox hide 0.3
cancel "away" wait_loop_end

s ``

bgm volume "ambFlashforward" 0.0 4.0

"to_her"
{
	sfx $impactPulseChroma
	color "silhouetted_CG" $invisible
}

cancel "to_her" wait_loop_end
cancel "other" skip_loop_end
delay 3.0
cancel "rhythm_3" skip_loop_end
screen_textbox show 1.0
delay 1.2

id 001-032
s $Yo `"...Why?"`

id 001-033
s `You already know what she's going to say. She knows you do, and looks
at you pitifully.`

s ``

"to_you"
{
	color "silhouetted_CG" 1.0 1.0 1.0 1.0 1.9 linear
}

delay 2.3

id 001-034
s $Re `"...You know that better than any of us: what 'slavery' really is. You've been
a slave all your life, and so have we—you've just had it worse."`

id 001-035
s $Re `"I don't even need to be personal about it. Throughout history, humanity
itself has lorded over other humans. And what have the downtrodden done?
They've rejected the yoke."`

cancel "cg_shake_2" wait_loop_end

scale "silhouetted_CG" 1.0 1.0 0.74 0.86 86.0 outsine
move "silhouetted_CG" -300 -600 86.0 outquad


id 001-036
s `She raises a finger toward the sky.`

id 001-037
s $Re `"Go on and look. That's where I'm aiming. That's what I reject."`

id 001-038
s `Her eyes are clear. She's being honest with you.`

"sfx_heartbeats"
{
	sfx $heartbeatA
	delay 0.7
	sfx $heartbeatB
}


id 001-039
s `Her heart beats, and yours does too.`

"sfx_heartbeats_loop"
{
	sfx $heartbeatA
	delay 1.7
	sfx $heartbeatB
	delay 1.7
} $repeat

id 001-040
s `...How long?`

id 001-041
s `How long have you loved those eyes of hers?`

id 001-042
s `...She tells you this truth as her hand falls:`

id 001-043
s $Re `"If a throne exists up there..."`

screen_textbox hide 0.3
color "silhouetted_CG" 1.0 1.0 1.0 0.0 0.1 linear
bgm stop "Opening" 0.1
bgm stop "ambFlashforward" 0.1
bgm volume "ambBeginWind" 0.0 0.1
sfx $begin
sfx $impactShroud
cancel "sfx_heartbeats_loop" skip_loop_end
delay 2.0
bgm volume "ambBeginWind" 0.5 4.0

s ``
delay 1.0

hide "silhouetted_CG" 0.0
screen_textbox show 1.0
delay 1.2

id 001-044
s $Re `"...then I will take the King's seat, and burn the kingdom to the ground."`

"scene_end"
{
	delay 0.5
	delay 0.6
	screen_textbox hide 1.0
	delay 0.5
	bgm stop "ambBeginWind" 4.0
	
}
