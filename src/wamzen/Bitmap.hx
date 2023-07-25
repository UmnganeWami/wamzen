package wamzen;
import h2d.Object;
import h2d.Bitmap as H2DBITMAP;
import hxd.res.Image;
import h2d.Tile;

class Bitmap extends H2DBITMAP {
    public function new(?sprite:Image, ?parent:Object){
        super(null, parent);
        if(sprite != null) loadTile(sprite.toTile());
    }

    public function loadTile(tile:Tile){
        this.tile = tile;
    }
}