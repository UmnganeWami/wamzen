package wamzen;
import hxd.res.BitmapFont;
import h2d.RenderContext;
import h2d.Object;
import hxd.res.DefaultFont;
import wamzen.Text;
import h2d.Interactive;
import hxd.Cursor;
import hxd.res.Font;

class Button extends Interactive {
    var text:Text;
    //var onPressed:Void->Void;
    public function new(width:Float, height:Float, textText:String, cursor:Cursor = Default, ?parent:Object, ?shape:h2d.col.Collider){
        super(width, height, parent, shape);
        text = new Text(null);
        text.text = textText;
        text.textAlign = Center;
        addChild(text);
    }

    public function setButtonFont(?font:BitmapFont, ?color:Int = 0xFFFFFF){
        text.setFont(font, color);
    }

    override function draw(ctx:RenderContext) {//use draw cus fuck you it works i guess
        super.draw(ctx);
        text.x = width / 2;
        text.y = height / 2;
    }

    /*override function addChild(obj:Object){
        obj.isAbsolute = true;
        super.addChild(obj);
    }*/

    /*override function getBoundsRec( relativeTo, out, forSize ) {
        out.xMin = x;
		out.yMin = y;
		out.xMax = width;
		out.yMax = height;
    }*/

    /*override function getBoundsRec( relativeTo, out, forSize ){
        var bounds = new Bounds();
        bounds.set(x, y, width, height);
        super.getBoundsRec(relativeTo, bounds, true);
    }*/
    
}