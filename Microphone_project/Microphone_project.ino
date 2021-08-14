#include <DFPlayerMini_Fast.h>
#include <ezButton.h>

#include "Arduino.h"
#include "SoftwareSerial.h"

#define rxPin 10
#define txPin 11

#define LED_A 3
#define LED_B 5

#define POWER_BUTTON 6

//ezButton POWER_BUTTON(6);
ezButton CHANGE_FOLDER(7);
ezButton NEXT_BUTTON(8);
ezButton PAUSE_BUTTON(9);

#define VLM_PIN A0

#define BUSY_PIN 2

#define VOLUME_LEVEL 15 // 0 - 30 ( 18 is a good level )
#define MAX_VLM_LVL 17
#define MP3_SOUNDS_FOLDER 10

int fadeDuration = 800; //LEDS fade duration in ms

int num_tracks_in_folder = 0;
int num_folders = 2;
int actual_track_n = 0;
int actual_folder = 1;
int next_folder = 1;

SoftwareSerial mySoftwareSerial(rxPin, txPin); // RX, TX
DFPlayerMini_Fast myDFPlayer;

//microphone state
boolean isOn = false;
boolean isPlaying = false;
boolean initSound = false;
boolean folder_changed = false;

int current_volume = 0;
int inputVolume = 0;
int outputVolume = 0;

void setup()
{
  // define pin modes for tx, rx:
  pinMode(rxPin, INPUT);
  pinMode(txPin, OUTPUT);
  
  pinMode(LED_A, OUTPUT);
  pinMode(LED_B, OUTPUT);
  pinMode(BUSY_PIN,INPUT);
  pinMode(VLM_PIN,INPUT);

  //POWER_BUTTON.setDebounceTime(50);
  CHANGE_FOLDER.setDebounceTime(20);
  NEXT_BUTTON.setDebounceTime(50);
  PAUSE_BUTTON.setDebounceTime(50);

  current_volume = VOLUME_LEVEL;
  
  mySoftwareSerial.begin(9600);
  Serial.begin(115200);

  //Starting
  Serial.println();
  Serial.println(F("DFRobot DFPlayer Mini Demo"));
  Serial.println(F("Initializing DFPlayer ... (May take 3~5 seconds)"));
  
  if ( !myDFPlayer.begin(mySoftwareSerial) ) {  //Use softwareSerial to communicate with mp3.
    Serial.println(F("Unable to begin:"));
    Serial.println(F("1.Please recheck the connection!"));
    Serial.println(F("2.Please insert the SD card!"));
    Serial.println(myDFPlayer.numSdTracks()); //read mp3 state
    
    while(true);
  }
  Serial.println(F("DFPlayer Mini online."));
  myDFPlayer.printError();
  Serial.println();

  myDFPlayer.volume(VOLUME_LEVEL);  //Set volume value. From 0 to 30
  delay(200);

  Serial.print("Current Volume : ");
  Serial.print( myDFPlayer.currentVolume() );
  Serial.println();
  Serial.print("Total Num tracks: ");
  Serial.print(myDFPlayer.numSdTracks());
  Serial.println();

  num_tracks_in_folder = myDFPlayer.numTracksInFolder(actual_folder);

  Serial.print("Current track : ");
  Serial.print(myDFPlayer.currentSdTrack());
  Serial.println();
  // num_folders = myDFPlayer.numFolders() //contar 1 menos debido a la carpeta de SOUNDS
  
}

void loop()
{
  
  //POWER_BUTTON.loop();
  CHANGE_FOLDER.loop();
  NEXT_BUTTON.loop();
  PAUSE_BUTTON.loop();

  if(digitalRead(BUSY_PIN) == LOW ){
    isPlaying = true;
  }else if( digitalRead(BUSY_PIN) == HIGH ) {
    isPlaying = false;
  }

  // POTENTIOMETER - VOLUME 
  /*
  inputVolume = analogRead(VLM_PIN); //Volume lvl recived by Potentiometer
  outputVolume = map(inputVolume, 0, 1023, 0, MAX_VLM_LVL);

  if( (outputVolume != current_volume) && (outputVolume <= MAX_VLM_LVL) ){
     // modify actual volume output
    current_volume = outputVolume;
    
    if(current_volume <= MAX_VLM_LVL){
      myDFPlayer.volume(current_volume);

      Serial.println();
      Serial.print("Volume changed to: ");
      Serial.print(current_volume);
      
    }
    
  }
  */

  //

  if (digitalRead(POWER_BUTTON) == LOW) //inversed switch button
  {
    if(isOn)
    {
      turnOff();
    }else{
      Initiation();
    }
  }

  if(PAUSE_BUTTON.isPressed() && PAUSE_BUTTON.getStateRaw() == LOW)
  {
    if(isPlaying)
    {
      pause();
      //isPlaying = false;  
    }
    else
    {
      resume();
    }
    
  }


  if(NEXT_BUTTON.isPressed() && NEXT_BUTTON.getStateRaw() == LOW )
  {
    playNextSong();
  }

  if(CHANGE_FOLDER.isPressed() && CHANGE_FOLDER.getStateRaw() == LOW )
  {
    
    changeFolder();
    //'next_folder' value changed
    updateActualFolder();
    
    Serial.println();
    Serial.print("Changing folder to: ");
    Serial.print(next_folder);
    Serial.println();

    num_tracks_in_folder = myDFPlayer.numTracksInFolder(next_folder);
    Serial.print("Tracks in folder ");
    Serial.print(next_folder);
    Serial.print(": ");
    Serial.print(num_tracks_in_folder);
    Serial.println();
    
  }

  

}

void Initiation(){
  // play FURRRÑIUUNN microphone sound
  Serial.println(F("STARTING.."));
  isOn = true;
  
  myDFPlayer.playFolder(MP3_SOUNDS_FOLDER,1);  //Play the ON SOUND mp3
  actual_track_n = 1;
  initSound = true;
  delay(200);
  fadeLed(digitalRead(LED_A));
}

void fadeLed(boolean input){
  for(int state=0;state<256;state++){
    if (input==LOW){
      analogWrite(LED_A, state);
      analogWrite(LED_B, state);
    }else{
      analogWrite(LED_A, 255-state);
      analogWrite(LED_B, 255-state);
    }
    delay(fadeDuration/256); //=(total fading duration)/(number of iterations)
  }
}

void playNextSong(){

  if(initSound == true){
    // Play init Sound
    actual_track_n = 1;
    initSound = false;
  }else{

    if(actual_folder != next_folder){
      //after changing folder, play first sound of folder
       actual_track_n = 1;
       actual_folder = next_folder;
    }else{
      if(actual_track_n < num_tracks_in_folder) {
        actual_track_n++;
      }else{
        actual_track_n = 1;
      }
        
    }
      
  }
  
  
  myDFPlayer.playFolder(actual_folder,actual_track_n);
  //isPlaying = true;
  Serial.print("-Playing track "); 
  Serial.print(actual_track_n);
  Serial.print("-");
  Serial.println();

  Serial.print("Track number: ");
  Serial.print(actual_track_n);
  Serial.print(" in folder :");
  Serial.print(actual_folder);
  Serial.println();
      
  delay(200);
}

void changeFolder(){

  if(next_folder < num_folders){
    next_folder++;
  }else{
    next_folder = 1;
  }

  actual_track_n = 1;
  
  folder_changed = true;
  
  delay(200);
}


void updateActualFolder(){
  actual_folder = next_folder;
  
  delay(200);
}

void pause()
{
  if(initSound == true){
    myDFPlayer.playFolder(actual_folder,actual_track_n);
    Serial.println("-Playing first song- ");
    initSound = false;
  }else{
    myDFPlayer.pause();
    Serial.println("-Paused- ");
  }
  delay(500);
}

void resume()
{

  if(initSound == false && folder_changed == false){
    myDFPlayer.resume();
    Serial.println("-Resumed- ");
  }
  
  if(initSound == true){
    myDFPlayer.playFolder(actual_folder,actual_track_n);
    Serial.println("-Playing first song- ");
    initSound = false;
  }

  if(folder_changed == true){
    myDFPlayer.playFolder(actual_folder,actual_track_n);
    Serial.println("-Playing first song- ");
    folder_changed = false;
  }
  
  
  delay(500);
}

void turnOff(){
  Serial.println(F("TURNING OFF.."));
  isOn = false;
  
  myDFPlayer.playFolder(MP3_SOUNDS_FOLDER,1);  //Play the ON SOUND mp3
  //isPlaying = false;
  fadeLed(digitalRead(LED_A));
}



 
