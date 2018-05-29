import requests  
import pandas as pd
import time  
import urllib.request  
from bs4 import BeautifulSoup

def data_read(soup):
    data = []
    # find the place of the game
    for game_table in soup.find_all('div', class_= "cmg_matchup_line_score"):
        num = 0
        for index in (game_table.find_all('td')):
            if num == 0 or num == 5 or num == 7 or num == 12:
                info = str(index.string)
                info = ''.join(c for c in info if c.isdigit() or c.isalpha())
                data.append(info)
            num = num + 1
    print(data)
    data = pd.DataFrame({'game':data})
    return data

for num in range(1, 31):
    url = "https://www.covers.com/sports/NBA/matchups?selectedDate=2017-3-" + str(num)
    with urllib.request.urlopen(url) as url:
        s = url.read()
    soup = BeautifulSoup(s, "lxml")
    total = data_read(soup)
