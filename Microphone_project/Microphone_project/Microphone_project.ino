#include <DFPlayerMini_Fast.h>

#include "Arduino.h"
#include "SoftwareSerial.h"

#define LED_A 3
#define LED_B 5
#define POWER_BUTTON 6
#define PAUSE_BUTTON 9
#define NEXT_BUTTON 8
#define CHANGE_FOLDER 7

#define ACTIVATED LOW
#define VOLUME_LEVEL 16 // 0 - 30

#define MP3_SOUNDS_FOLDER 10

int fadeDuration = 800; //duration of fade in ms

int num_tracks_in_folder = 0;
int num_folders = 2;
int actual_track_n = 0;
int actual_folder = 1;
int next_folder = 1;

SoftwareSerial mySoftwareSerial(10, 11); // RX, TX
DFPlayerMini_Fast myDFPlayer;

//microphone state
boolean isOn = false;
boolean isPlaying = false;
boolean initSound = false;
int current_volume = 0;

void setup()
{
  pinMode(LED_A, OUTPUT);
  pinMode(LED_B, OUTPUT);
  pinMode(POWER_BUTTON, INPUT_PULLUP);
  pinMode(PAUSE_BUTTON, INPUT_PULLUP);
  pinMode(NEXT_BUTTON, INPUT_PULLUP);
  pinMode(CHANGE_FOLDER, INPUT_PULLUP);
  
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


  if (digitalRead(POWER_BUTTON) == ACTIVATED)
  {
    if(isOn)
    {
      turnOff();
    }else{
      Initiation();
    }
  }

  if (digitalRead(PAUSE_BUTTON) == ACTIVATED && isOn)
  {
    if(isPlaying)
    {
      pause();
      
      isPlaying = false;
    }
    else
    {
      isPlaying = true;
      if(initSound == true){
        myDFPlayer.playFolder(1,1);
        initSound = false;
      }else{
         resume();
         
      }
      
    }
  }


  if (digitalRead(NEXT_BUTTON) == ACTIVATED && isOn)
  {
    playNextSong();
  }

  if (digitalRead(CHANGE_FOLDER) == ACTIVATED && isOn)
  {
    
    changeFolder();
    //'next_folder' value changed
    
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
    Serial.println(F("--------------------------"));
    
  }

  

}

void Initiation(){
  // play FURRRÑIUUNN microphone sound
  Serial.println(F("STARTING.."));
  Serial.println("");
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
    actual_track_n = 1;
    initSound = false;
  }else{

    num_tracks_in_folder = myDFPlayer.numTracksInFolder(actual_folder);
    
    if(actual_folder != next_folder || !(actual_track_n < num_tracks_in_folder) ){
       actual_track_n = 1;
       actual_folder = next_folder;
    }else{
        actual_track_n++; 
    }
      
  }
  
  
  myDFPlayer.playFolder(actual_folder,actual_track_n);  //Play the first song
  isPlaying = true;
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
  
  delay(200);
}


void updateActualFolder(){
  actual_folder = next_folder;
  
  delay(200);
}

void pause()
{
  myDFPlayer.pause();
  Serial.println("-Paused- ");
  delay(500);
}

void resume()
{
  myDFPlayer.resume();
  Serial.println("-Resumed- ");
  delay(500);
}

void turnOff(){
  Serial.println(F("TURNING OFF.."));
  isOn = false;
  
  myDFPlayer.playFolder(MP3_SOUNDS_FOLDER,1);  //Play the ON SOUND mp3
  isPlaying = false;
  fadeLed(digitalRead(LED_A));
}
 
