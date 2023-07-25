package wamzen;

import hxd.res.BitmapFont;
import hxd.Res;
import hxd.res.DefaultFont;
import h2d.Text.Align;
import h2d.Object;
import hxd.res.Font;
import h2d.Text as H2DTEXT;

class Text extends H2DTEXT {
    public function new(font:BitmapFont, textColor:Int = 0xFFFFFF, ?parent:Object){
        super(null);
        setFont(font, textColor);
    }

    public function setFont(font:BitmapFont, ?color:Int = 0xFFFFFF){
        if(font != null){
            this.font = font.toFont();
        }else{
            this.font = DefaultFont.get();
        }
        this.textColor = color;
        //this.font.size = fontSize;
    }
}