PImage image;
PImage image2;
float imx, imy, ix, iy;
float wid, hei, wid2, hei2;
String text;
PFont yazi;
void setup()
{
  image = loadImage("theButton.jpg");            //eylem gerçekleştiren düğme
  image2 = loadImage("refreshingButton.jpg");    //sayfa yenileyen düğme
  yazi = loadFont("TimesNewRomanPSMT-48.vlw");    
  textFont(yazi,48);
  background(50);
  size(500,500);
  imx = 210;                   // 15. satırdan 22. satıra kadar fotoların boyut ve konumlarını ayarladım.
  imy = 210;
  ix = 0;
  iy = 0;
  hei = 100;
  wid = hei * 3;
  hei2 = 75;
  wid2 = 75;
}

void draw()
{
  image(image,imx,imy,wid,hei);        //image boyut ve konumları
  image(image2,ix,iy,wid2,hei2);

}
void mousePressed()                   //mouse tuşuna basıldığında eylem başlatan fonksiyon
{
 if(mouseX >= imx && mouseX <= imx + wid)        //bu "if"in içindeki her şey "Save Button"'a basıldığında gerçekleşiyor.
 {
      rect(125,125,15,25);
      textAlign(RIGHT);
      text("Hello,world!", 400, 100 );
 }
 if(mouseX >= ix && mouseX <= ix + wid2)
 {
   background(100);                     //Arka planı öne çıkararak sayfa yenilenmiş oluyor.
 }
}
