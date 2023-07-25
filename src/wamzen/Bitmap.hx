package wamzen;
import h2d.Object;
import h2d.Bitmap as H2DBITMAP;
import hxd.res.Image;
import h2d.Tile;

//does nothing much more than the base h2d.bitmap does
class Bitmap extends H2DBITMAP {
    public function new(?sprite:Image, ?parent:Object){
        super(null, parent);
        if(sprite != null){
            trace("loaded image!");
            loadTile(sprite.toTile());
        }
    }

    public function loadTile(tile:Tile){
        this.tile = tile;
    }
}