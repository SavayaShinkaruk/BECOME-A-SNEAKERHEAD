PImage [] picArray = new PImage [100];
 
int array[];

void setup() {
  
File dir = new File("sunday_ver2/png");
File [] files = dir.listFiles();

  for (int i = 0; i <= files.length - 1; i++)   
  {
 
    String path = files[i].getAbsolutePath();
    image(picArray[int(random(picArray.length))], random(width), random(height));
   //arrayOfImages[i] = load(path);
  } 
  
}

void draw () {
  
 background(0);
 
 
  
}
