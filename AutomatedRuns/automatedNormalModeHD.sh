#!/bin/csh

#

set noclobber

if (! -e normalModeHD.m) then
    ln -s ~/Mist/Matlab/AutomatedRuns/normalModeHD.m .
endif

#cd ~/WorkDir/3GB1/1HEZ/Bidirectional

set modeIndex  = 7;


while ($modeIndex <= 11)

    echo $modeIndex

    set modelIndex = 1;

    while ($modelIndex <= 11)

	echo $modelIndex;
	nohup nice matlab -nojvm -nodisplay -r "normalModeHD($modeIndex,$modelIndex)" >& normalModeHD_Output.$modeIndex.$modelIndex.txt &
	@   modelIndex = $modelIndex + 1;

    end

    @ modeIndex = $modeIndex + 1;

end

@ modeIndex = 78;

echo $modeIndex

set modelIndex = 1;

while ($modelIndex <= 121)

    echo $modelIndex;
    nohup nice matlab -nojvm -nodisplay -r "normalModeHD($modeIndex,$modelIndex)" >& normalModeHD_Output.$modeIndex.$modelIndex.txt &
    @ modelIndex = $modelIndex + 1;

end
