

  size(1000, 700 );

  // a variable for x position
  int xPos = 0;
  
  // create an array.
  double[] numbers = new double[30] ;
  numbers[0] = 0.0;
  numbers[1] = 0.01;

  // fill the array with fibonacci numbers
  for ( int i = 2; i < numbers.length; i++ )
  {
    numbers[i] = numbers[i-1] + numbers[i-2];
  }
  
  // draw stuff
  for( int i = 2 ; i < numbers.length; i++)
  {
    fill((int)numbers[i]/1.99, 10, 10, 90);
    //rect(0, 0, 700- numbers[i], 700 - numbers[i]);
    ellipse( xPos, (int)numbers[i], (int)numbers[i], (int)numbers[i]);
    fill((int)numbers[i]/1.99, (int)numbers[i]/1.99, 10, 30);
    //rect(width-xPos, height-(int)numbers[i]-50, (int)numbers[i],(int)numbers[i]);
    //line(0,height, xPos, numbers[i] );
    //line(width, 0, xPos, numbers[i] );
    xPos+=30;
  }
