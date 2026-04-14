@echo off


                                                                                                    
                                                                                                    
               :~:                                                                                  
               .JP5?:                                                                               
          ..:^~JGB#&&P?:                     .                                                      
   .^!???JJJYY5PG#&&&@@&G7.                 ?Y?~~!7?!:..                                            
      .^7JYY5PGB##&&&&&@@@#J:               .~?YYGB&#BY~::.                                         
         :~!!7?YPB#&&&&&&&&@#5?^             JGG##&&B#BJ^.                                          
           :~!?JPG#&&&@@@@@@@@@Y             :~.!5PP###P~:.                                         
           :!7J5GB#&&@@@@@@@@@@&P^                :?###B5!.                                         
           ~??J5B########&@@@@@@&#?.              :J####Y?7:                                        
         .!Y555YJJJ55PG##&@@@@@@@&&B!            .!5BBB#B5!^.                    .^^~!7?JJ?~.       
        .^~^:::^~!!77?YPG#&&@##&&@&&@P~          ^7?BB##BYY^              :7!7J5G#&&&&&#BP!         
                  ..:~7J5BB&#BBB###&&&@GJ~:^^^~^~?P##B###5~~           :~?B@@@@@@@@@&&BBGY?^        
                     .~7YG##GGGPGBGB&#&@@&&&&#GPG##BBGB###G^       .~?P#&@@@@@&&&#####BBBGG5J~:     
                      .~?G#5555PGGPGB#&&@@@@&#PYJG#BBGB#B#&P!~:^!YG#&@@@@@&&&@@&#BGPYYJJJJYJJ?7!:.  
                       .J#J77777JY5PPPGG#&#&&#BPB&###BB####GBG#&&&&&&&&&&#BBBB#&#GG5J7~^:..         
                        Y7:::::::^~?5PPGGPPG#&&B#####&&&#&#BBB&&###BG&&&BGPPPPPG#B5Y?^              
                       .:          .:~7YYJ??JG#GB&######&##&##BBGGGP#&BP5J?77?JJJGGJ^               
                                             G###&&##&&BG##&#P55555B&PJ7^.    ..::7Y.               
                                            Y##&&&&&##&#&&#B?:^!7?G#J^.            ..               
                                           .G###GBB#&B###B?.      Y~                                
                                            !##BP##&##P~~!:       .                                 
                                             7GB#&#PY~                                              
                                             :B&&#P^:                                               
                                          :^!J##GPG!                                                
                                             .?#GJY5^.                                              
                                             .^5&G?JY7.                                             
                                            .:^J!##5?J?!:                                           
                                               ^ ?G##PYYJ?~:                                        
                                                 ~J~J###BP5Y?!:                                     
                                                  !. J?!BG#BPYJ7:                                   
                                                  .. .7 ~!7J?PG5J!.                                 
                                                      .: ^:^. ~5G5J^                                
                                                          . .   ~PBY!                               
                                                                  !PP!                              
                                                                   ~G5:                             
                                                                    JB!                             
                                                                    ^BY                             
                                                                     5P.                            
                                                                     ?#:                            
                                                                     ~&^                            
                                                                     :#~                            
                                                                     .B^                            
                                                                      Y.                            
                                                                                                    
                                                                                                    
title emil kaminski funhouse
mode con: cols=80 lines=25

:loop
REM instant random color
set /a col=%random% %% 16
color %col%

cls
echo ##############################################
echo ###########   emil kaminski funhouse   ###############
echo ##############################################
echo.
echo %random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%

REM rapid beeps
for /l %%a in (1,1,5) do <nul set /p=^G

REM no real delay
goto loop