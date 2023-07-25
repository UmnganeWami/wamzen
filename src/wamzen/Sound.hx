package wamzen;
import hxd.snd.effect.Pitch;
import hxd.res.Sound as HEAPSSOUND;
import hxd.snd.Channel as HEAPSCHANNEL;
//import  as HXDSOUND;

class Sound {
    public var soundInstance:HEAPSSOUND;
    public var channelInstance:HEAPSCHANNEL;
    var pitchEffect:Pitch;
    var hasPitchEffect:Bool = false;
    public var pitch(default, set):Float = 1;
    public function set_pitch(pitch:Float){
        if(pitchEffect != null){
            pitchEffect.value = pitch;
        }
        return pitch;
    }

    public function new(?sound:HEAPSSOUND){
        loadSound(sound);
    }

    public function loadSound(?sound:HEAPSSOUND){
        this.soundInstance = sound;
        //pitch = 1;
        pitchEffect = new Pitch(pitch);
    }

    public function play(?loop:Bool = false, ?volume:Float = 1){
        this.channelInstance = soundInstance.play(loop, volume);
        channelInstance.addEffect(pitchEffect);
    }

    public function dispose(){
        soundInstance.dispose();
    }
}