# DFPlayer basic MP3 multiple folders
 DFPlayer project with all the basics needed for an MP3

Main features
- Power On/ Power Off
- Play song / Play next song
- Pause / Resume
- Change Songs folder to play

DFPlayer Things to be aware of:

- Play song from Folder : SONGS _outside_ mp3 folder should have the name format nnn.mp3,where the n is a number. 
In case of a number with 2 or less digits, should come with zeros to the left, like 2 being 002.mp3 or 20 being 020.mp3.

- The FOLDER name should be between 1 and 99, also followed by a zero to the left in case of a 1digit number.
Use the funtion PlayFolder(folder number, file number) to play a sound from a folder.

- Play Advertisement : If you want a sound to play like and advertisement, interrumping another sounds or songs, and playing over them, you must place it inside the folder 'advert',
in the root directory. That one can be called using PlayAdvertidement(song number) function.
The thing is, using the function means it can be called WHILE a sound is already being played, you cant call it if no sound is playing.
