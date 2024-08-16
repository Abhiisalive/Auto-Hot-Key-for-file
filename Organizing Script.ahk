; -------------------------------------------------------------
; Generate folder structures for organizing video projects, youtber name- Alexander Behne
;Date created 15 August 2024 
;Date of last Edilt 15 August 2024
;Version 1.0

#SingleInstance  force



; Initialize the directory name variable
DirectoryName := ""

; Define the hotkeys with dummy labels
^Numpad1::
    if (DirectoryName = "")
        return
    Run, %DirectoryName%Anime Trailers
return

^Numpad2::
    if (DirectoryName = "")
        return
    Run, %DirectoryName%Anime Video
return

^Numpad3::
    if (DirectoryName = "")
        return
    Run, %DirectoryName%Gif
return

^Numpad4::
    if (DirectoryName = "")
        return
    Run, %DirectoryName%PNG
return

^Numpad5::
    if (DirectoryName = "")
        return
    Run, %DirectoryName%SFX
return

; Set active project folder
^Numpad0::
    InputBox, DirectoryName, Set Active Project Folder, Enter active project folder:,, 300, 130
    if (ErrorLevel) ; If the user cancels the input
    {
        DirectoryName := "" ; Clear the directory name if it is invalid
        return
    }

    ; Check if the directory exists
    if (!FileExist(DirectoryName)) 
    {
        MsgBox, The directory "%DirectoryName%" does not exist! Please try again.
        DirectoryName := "" ; Clear the directory name if it is invalid
        return
    }

    ; Ensure directory path ends with a backslash
    if (SubStr(DirectoryName, -1) != "\")
        DirectoryName := DirectoryName . "\"
return








#IfWinActive ahk_class CabinetWClass

^F9::

CreateFolder("Anime Video")
CreateFolder("Anime Trailers")
CreateFolder("Bg")
CreateFolder("Export")
CreateFolder("Gif")
CreateFolder("Audio")
CreateFolder("SFX")
CreateFolder("Manga/Manhwa Images")
CreateFolder("PNG")
CreateFolder("Images")
CreateFolder("Logo")
CreateFolder("Meme")
CreateFolder("BGM")

CreateFolder(FolderName) {
send, ^+n
send, %FolderName% 
send, {Enter} 
sleep, 500
}






