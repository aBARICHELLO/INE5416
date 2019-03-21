# -*- coding: utf-8 -*-

n = int(input())
firstTime = 1
gname = ''
gpower = 0
gkills = 0
gdied = 0
while n > 0:
    if firstTime == 1:
        gname, t1, t2, t3 = input().split()
        gpower = int(t1)
        gkills = int(t2)
        gdied = int(t3)
        firstTime = 0
    else:
        name, t1, t2, t3 = input().split()
        power = int(t1)
        kills = int(t2)
        died = int(t3)
        if (power > gpower) or (power == gpower and kills > gkills) or (kills == gkills and power == gpower and died < gdied):
            print("powerful is:" + name)
            gname = name
            gpower = power
            gkills = kills
            gdied = died
        elif power == gpower and kills == gkills and died == gdied:
            names = [gname, name]
            names.sort()
            print(names)
            if names[0] == name:
                gname = name
                gpower = power
                gkills = kills
                gdied = died
    n = n - 1

print(gname)