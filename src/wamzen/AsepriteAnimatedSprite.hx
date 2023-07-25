package wamzen;

#if "heaps-aseprite" 
import aseprite.res.Aseprite;
import aseprite.AseAnim;
import h2d.Interactive;

class AsepriteAnimatedSprite extends Interactive {
    var animations:Map<AseAnim, String>;
    var curAnim:AseAnim;

    public function new(aseFile:Aseprite){
        super(0,0);
    }

    public function loadTag(tagName:String){

    }
}
#end