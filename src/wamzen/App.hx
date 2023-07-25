package wamzen;
import hxd.App as HXDAPP;

class App extends HXDAPP {
    //public var windowTitle:String = "";
    //public var windowSize:Array<Int> = [1280,720];
    
    public function new(){
        super();
    }

    override function init() {
        super.init();
        Wamzen.init(this);
    }

    override function update(dt:Float){
        super.update(dt);
        Wamzen.update(dt);
    }

    public function getScene():h2d.Scene{
        return s2d;
    }
}