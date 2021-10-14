game:executecommand("say N-File Loaded")



function Changename()
game:executecommand("say To change your username press the ~ key in main menu and type /name ^1username");
end



--1min = 60,000
--2 = 120,000
--3 = 180,000
--4 = 240,000
--5 = 300,000
--6 = 360,000
--7 = 420,000
--8 = 480,000
--9 = 540,000
--10 = 600,000

game:oninterval(Changename,300000)