package wamzen;
import hxd.Res;
import wamzen.App as WamzenApp;
import wamzen.Scene;

using StringTools;
class Wamzen {
    /**
    * the current game scene
    */
    public static var curScene:Scene;
    public static var curApp:WamzenApp;
    /**
    * do we center the window when changing the window size?
    */
    public static var centerWindow:Bool = true;
    public static var windowName(default, set):String = "";
    public static function set_windowName(name:String){
        trace("SETTING WINDOW NAME TO "  + name);
        @:privateAccess hxd.Window.getInstance().title = name;
        return name;
    }
    public static var windowSize(default, set):Array<Int> = [1280, 720];
    public static function set_windowSize(size:Array<Int>){
        if(size.length != 2){
            throw "Cannot set window size, invalid input";
        }
        trace("SETTING THE WINDOW SIZE TO W:" + size[0] + " H:" + size[1]);
        hxd.Window.getInstance().resize(size[0], size[1]);
        var win = @:privateAccess hxd.Window.getInstance().window;
        if(centerWindow){
            win.center();
        }
        return size;
    }

    public static function init(app:WamzenApp){
        hxd.Res.initEmbed();
        curApp = app;
    }

    public static function update(dt:Float){
        if(curScene != null){
            curScene.update(dt);
        }
    }

    public static function setScene(scene:Class<Scene>){
        if(curScene != null){
            curScene.dispose();
        }
        curScene = Type.createInstance(scene, []);
        curApp.setScene(new h2d.Scene());
        curScene.self = curApp.getScene();
        curScene.init();
        return curScene;
    }
}