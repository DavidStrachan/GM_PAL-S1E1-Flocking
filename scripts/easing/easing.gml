/*
        ___   ___   _____ ___   ___   _   _____   __
       |   \ /_\ \ / / __/ __| | __| /_\ / __\ \ / /
       | |) / _ \ V /| _|\__ \ | _| / _ \\__ \\ V / 
	   |___/_/ \_\_/ |___|___/ |___/_/ \_\___/ |_|  
  ___   _   ___ ___ _  _  ___   ___  ___ ___ ___ ___ _____ 
 | __| /_\ / __|_ _| \| |/ __| / __|/ __| _ \_ _| _ \_   _|
 | _| / _ \\__ \| || .` | (_ | \__ \ (__|   /| ||  _/ | |  
 |___/_/ \_\___/___|_|\_|\___| |___/\___|_|_\___|_|   |_|  
                                                           
				       VERSION: 3.3
*/

/* todo:
	
	> I really want scripts to be in the enum however Russell says that is unlikely to come back, find a workaround if that is true
	> remove all the argument0 argument1 etc I'm sure you could tidy that area up. 

*/

enum ease {
	inBack, 
	inBounce,
	inCirc,
	inCubic,
	inElastic,
	inExpo,
	inOutBack,
	inOutBounce,
	inOutCirc,
	inOutCubic,
	inOutElastic,
	inOutExpo,
	inOutQuad,
	inOutQuart,
	inOutQuint,
	inOutSine,
	inQuad,
	inQuart,
	inQuint,
	inSine,
	linear,
	outBack,
	outBounce,
	outCirc,
	outCubic,
	outElastic,
	outExpo,
	outQuad,
	outQuart,
	outQuint,
	outSine,
	waveSine,
	waveSine2,
	waveSine3,
	waveSine4,
	waveSine5,
	waveSineDamped3,
	waveSineDamped5,
	waveCos,
	waveCos2,
	waveCos3,
	waveCos4,
	waveCos5,
	waveSaw,
	waveSaw2,
	waveSaw3,
	waveSaw4,
	waveSaw5,
	waveSquare,
	waveSquare2,
	waveSquare3,
	waveSquare4,
	waveSquare5,
	waveTriangle,
	waveTriangle2,
	waveTriangle3,
	waveTriangle4,
	waveTriangle5,
	on,
	off,
	flicker1,
	flicker2,
	doublePulse,
	beat1,
	beat2,
	heartbeat,
	lightning1,
	shakeSoft1,
	shakeSoft2,
	shakeSoft3,
	shakeMed1,
	shakeMed2,
	shakeMed3,
	shakeHard1,
	shakeHard2,
	shakeHard3,
}

// enum can nolonger contain a script so this is a dirty way to store the scripts
easeScript[ease.inBack] = EaseInBack
easeScript[ease.inBounce] = EaseInBounce
easeScript[ease.inCirc] = EaseInCirc
easeScript[ease.inCubic] = EaseInCubic
easeScript[ease.inElastic] = EaseInElastic
easeScript[ease.inExpo] = EaseInExpo
easeScript[ease.inOutBack] = EaseInOutBack
easeScript[ease.inOutBounce] = EaseInOutBounce
easeScript[ease.inOutCirc] = EaseInOutCirc
easeScript[ease.inOutCubic] = EaseInOutCubic
easeScript[ease.inOutElastic] = EaseInOutElastic
easeScript[ease.inOutExpo] = EaseInOutExpo
easeScript[ease.inOutQuad] = EaseInOutQuad
easeScript[ease.inOutQuart] = EaseInOutQuart
easeScript[ease.inOutQuint] = EaseInOutQuint
easeScript[ease.inOutSine] = EaseInOutSine
easeScript[ease.inQuad] = EaseInQuad
easeScript[ease.inQuart] = EaseInQuart
easeScript[ease.inQuint] = EaseInQuint
easeScript[ease.inSine] = EaseInSine
easeScript[ease.linear] = EaseLinear
easeScript[ease.outBack] = EaseOutBack
easeScript[ease.outBounce] = EaseOutBounce
easeScript[ease.outCirc] = EaseOutCirc
easeScript[ease.outCubic] = EaseOutCubic
easeScript[ease.outElastic] = EaseOutElastic
easeScript[ease.outExpo] = EaseOutExpo
easeScript[ease.outQuad] = EaseOutQuad
easeScript[ease.outQuart] = EaseOutQuart
easeScript[ease.outQuint] = EaseOutQuint
easeScript[ease.outSine] = EaseOutSine
easeScript[ease.waveSine] = EaseWaveSine
easeScript[ease.waveSine2] = EaseWaveSine2
easeScript[ease.waveSine3] = EaseWaveSine3
easeScript[ease.waveSine4] = EaseWaveSine4
easeScript[ease.waveSine5] = EaseWaveSine5
easeScript[ease.waveSineDamped3] = EaseWaveSineDamped3
easeScript[ease.waveSineDamped5] = EaseWaveSineDamped5
easeScript[ease.waveCos] = EaseWaveCos
easeScript[ease.waveCos2] = EaseWaveCos2
easeScript[ease.waveCos3] = EaseWaveCos3
easeScript[ease.waveCos4] = EaseWaveCos4
easeScript[ease.waveCos5] = EaseWaveCos5
easeScript[ease.waveSaw] = EaseWaveSaw
easeScript[ease.waveSaw2] = EaseWaveSaw2
easeScript[ease.waveSaw3] = EaseWaveSaw3
easeScript[ease.waveSaw4] = EaseWaveSaw4
easeScript[ease.waveSaw5] = EaseWaveSaw5
easeScript[ease.waveSquare] = EaseWaveSquare
easeScript[ease.waveSquare2] = EaseWaveSquare2
easeScript[ease.waveSquare3] = EaseWaveSquare3
easeScript[ease.waveSquare4] = EaseWaveSquare4
easeScript[ease.waveSquare5] = EaseWaveSquare5
easeScript[ease.waveTriangle] = EaseWaveTriangle
easeScript[ease.waveTriangle2] = EaseWaveTriangle2
easeScript[ease.waveTriangle3] = EaseWaveTriangle3
easeScript[ease.waveTriangle4] = EaseWaveTriangle4
easeScript[ease.waveTriangle5] = EaseWaveTriangle5
easeScript[ease.on] = EaseOn
easeScript[ease.off] = EaseOff
easeScript[ease.flicker1] = EaseFlicker1
easeScript[ease.flicker2] = EaseFlicker2
easeScript[ease.doublePulse] = EaseDoublePulse
easeScript[ease.beat1] = EaseBeat1
easeScript[ease.beat2] = EaseBeat2
easeScript[ease.heartbeat] = EaseHeartbeat
easeScript[ease.lightning1] = EaseLightning1
easeScript[ease.shakeSoft1] = EaseShakeSoft1
easeScript[ease.shakeSoft2] = EaseShakeSoft2
easeScript[ease.shakeSoft3] = EaseShakeSoft3
easeScript[ease.shakeMed1] = EaseShakeMed1
easeScript[ease.shakeMed2] = EaseShakeMed2
easeScript[ease.shakeMed3] = EaseShakeMed3
easeScript[ease.shakeHard1] = EaseShakeHard1
easeScript[ease.shakeHard2] = EaseShakeHard2
easeScript[ease.shakeHard3] = EaseShakeHard3


function ee(argument0, argument1, argument2) {
	return script_execute(global.easeScript[argument0],argument1,0,1,argument2)
}


/// @description Main function to ease things 
/// @function ease2
/// @param type1
/// @param type2
/// @param value_current
/// @param value_max
/// @param join_point_0_to_1
/// @param flip_second_0_at_end
/// returns 0 to 1
function ee2(argument0, argument1, argument2, argument3, argument4, argument5) {


	var ease_current_decimal = argument2/argument3

	if (ease_current_decimal < argument4) {
		var ease_to_use = argument0
		var value_to_use = ease_current_decimal/argument4
		var value_end = 1
	} else {
		var ease_to_use = argument1
	
		var ease_low = (argument3*argument4)
		var value_end = argument3-ease_low

		var value_to_use = (argument2-ease_low)
	}


	var ease_to_return = script_execute(global.easeScript[ease_to_use],value_to_use,0,1,value_end)

	if (argument5 == true and ease_current_decimal >= argument4) {
		ease_to_return = 1-ease_to_return
	}


	return ease_to_return


}


function ee3(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {


	var ease_current_decimal = argument3/argument4

	if (ease_current_decimal < argument5) {
		var ease_to_use = argument0
		var value_to_use = ease_current_decimal/argument5
		var value_end = 1
	} else if (ease_current_decimal < argument6)  {
		var ease_to_use = argument1
	
		var ease_low = (argument4*argument5)
		var ease_end = argument4-ease_low

		var value_to_use = (argument3-ease_low)

		var value_end = (argument4*argument6)-ease_low
	} else {
		var ease_to_use = argument2
	
		var ease_low = (argument4*argument6)
		var ease_end = argument4-ease_low

		var value_to_use = (argument3-ease_low)

		var value_end = ease_end
	}


	var ease_to_return = script_execute(global.easeScript[ease_to_use],value_to_use,0,1,value_end)

	if (argument8 == true and ease_current_decimal >= argument6) {
		ease_to_return = 1-ease_to_return
	} else if (argument7 == true and (ease_current_decimal >= argument5 and ease_current_decimal < argument6)) {
		ease_to_return = 1-ease_to_return
	}


	return ease_to_return


}



function ee4(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11) {


	var ease_current_decimal = argument4/argument5

	if (ease_current_decimal < argument6) {
		var ease_to_use = argument0
		var value_to_use = ease_current_decimal/argument6
		var value_end = 1
	} else if (ease_current_decimal < argument7)  {
		var ease_to_use = argument1
	
		var ease_low = (argument5*argument6)
		var ease_end = argument5-ease_low

		var value_to_use = (argument4-ease_low)

		var value_end = (argument5*argument7)-ease_low
	} else if (ease_current_decimal < argument8)  {
		var ease_to_use = argument2
	
		var ease_low = (argument5*argument7)
		var ease_end = argument5-ease_low

		var value_to_use = (argument4-ease_low)

		var value_end = (argument5*argument8)-ease_low
	} else {
		var ease_to_use = argument3
	
		var ease_low = (argument5*argument8)
		var ease_end = argument5-ease_low

		var value_to_use = (argument4-ease_low)

		var value_end = ease_end
	}


	var ease_to_return = script_execute(global.easeScript[ease_to_use],value_to_use,0,1,value_end)
	

	if (argument11 == true and ease_current_decimal >= argument8) {
		ease_to_return = 1-ease_to_return
	} else if (argument10 == true and (ease_current_decimal >= argument7 and ease_current_decimal < argument8)) {
		ease_to_return = 1-ease_to_return
	} else if (argument9 == true and (ease_current_decimal >= argument6 and ease_current_decimal < argument7)) {
		ease_to_return = 1-ease_to_return
	}


	return ease_to_return


}



function ee5(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11, argument12, argument13, argument14) {


	var ease_current_decimal = argument5/argument6

	if (ease_current_decimal < argument7) {
		var ease_to_use = argument0
		var value_to_use = ease_current_decimal/argument7
		var value_end = 1
	} else if (ease_current_decimal < argument8)  {
		var ease_to_use = argument1
	
		var ease_low = (argument6*argument7)
		var ease_end = argument6-ease_low

		var value_to_use = (argument5-ease_low)

		var value_end = (argument6*argument8)-ease_low
	} else if (ease_current_decimal < argument9)  {
		var ease_to_use = argument2
	
		var ease_low = (argument6*argument8)
		var ease_end = argument6-ease_low

		var value_to_use = (argument5-ease_low)

		var value_end = (argument6*argument9)-ease_low
	} else if (ease_current_decimal < argument10)  {
		var ease_to_use = argument3
	
		var ease_low = (argument6*argument9)
		var ease_end = argument6-ease_low

		var value_to_use = (argument5-ease_low)

		var value_end = (argument6*argument10)-ease_low
	} else {
		var ease_to_use = argument4
	
		var ease_low = (argument6*argument10)
		var ease_end = argument6-ease_low

		var value_to_use = (argument5-ease_low)

		var value_end = ease_end
	}

	var ease_to_return = script_execute(global.easeScript[ease_to_use],value_to_use,0,1,value_end)


	if (argument14 == true and ease_current_decimal >= argument10) {
		ease_to_return = 1-ease_to_return
	} else if (argument13 == true and (ease_current_decimal >= argument9 and ease_current_decimal < argument10)) {
		ease_to_return = 1-ease_to_return
	} else if (argument12 == true and (ease_current_decimal >= argument8 and ease_current_decimal < argument9)) {
		ease_to_return = 1-ease_to_return
	} else if (argument11 == true and (ease_current_decimal >= argument7 and ease_current_decimal < argument8)) {
		ease_to_return = 1-ease_to_return
	}

	return ease_to_return




}