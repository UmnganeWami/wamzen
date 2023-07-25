package wamzen;
import h2d.RenderContext;
import h2d.Object;
import hxd.res.DefaultFont;
import h2d.Text;
import h2d.Interactive;
import hxd.Cursor;
class Button extends Interactive {
    var text:Text;
    //var onPressed:Void->Void;
    public function new(width:Float, height:Float, textText:String, cursor:Cursor = Default, ?parent:Null<Null<Object>>, ?shape:Null<Null<h2d.col.Collider>>){
        super(width, height, parent, shape);
        text = new Text(DefaultFont.get());
        text.text = textText;
        text.textAlign = Center;
        addChild(text);
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