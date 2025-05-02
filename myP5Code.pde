setup = function() {
    size(400, 600); 
    background(1, 198, 240);
};

draw = function() {
    background(109, 170, 220);

    // Main house
    fill(255, 0, 127);
    rect(54, 155, 100, 300);
    rect(250, 155, 100, 300);
    rect(51, 280, 300, 300);
    line(51, 484, 51, 350); 

// Lefttriangle
fill(255, 0, 127);
triangle(54, 155, 154, 155, 104, 105);
triangle(250, 155, 350, 155, 300, 105); 
    // balcony
    var railX = 51;
    while (railX < 320) {
        line(railX, 280, railX, 310);
        railX += 15;
    }

    // Top arches
    var arch = 58;
    while (arch < 350) {
        arc(arch, 280, 15, 40, radians(180), radians(360));
        arch += 15;
    }

    // Lower arches
    for (var under = 58; under < 350; under += 20) {
        arc(under, 453, 15, 40, radians(180), radians(360));
    }

    if (mousePressed) {
        showMouseDetails();
        text("🌟", random(0, 400), random(0, 200));
    }
    
    //windows
    fill(250,0,0)
     rect(100, 320, 20, 30);
    rect(130, 320, 20, 30);
    rect(160, 320, 20, 30);
    rect(190, 320, 20, 30);
    rect(220, 320, 20, 30);
    rect(250, 320, 20, 30);
    rect(280, 320, 20, 30);
    rect(190, 320, 20, 30);
  
  
  //treetrunk
  fill(87,26,7)
  rect(100,500,20,77);
  rect(200,500,20,77);
  rect(300,500,20,77);
  
  
  //leaves
  fill(34, 139, 34);
triangle(90, 500, 130, 500, 110, 460);   
triangle(190, 500, 230, 500, 210, 460); 
triangle(290, 500, 330, 500, 310, 460);  

//sun
fill(255, 255, 0);
ellipse(50, 50, 60, 60);


//star ranch 
fill(255, 215, 0); // gold color
textSize(60);
text("🌟", 160, 400); 
  
  //cars
  textSize(100);
  text("🏎",150,590)
};
  fill(255, 0, 0); // red
    textSize(40);
    text("✦", 190, 460);

showMouseDetails = function() {
    fill(255, 255, 255);
    rect(270, 300, 150, 100);
    fill(90, 120, 240);
    textSize(35);
    text("x = " + mouseX + "\ny = " + mouseY, 290, 350);
    fill(255, 0, 255);
    ellipse(mouseX, mouseY, 10, 10);
};
