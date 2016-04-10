# -=- utf-8 -=-

import json
import requests
import csv
import pprint
import time

def pre_process_raw_movie_list(fn="movie_list.txt", fno="movie_list_clean.txt"):
    with open(fn) as fi:
        with open(fno, "w") as fo:
            for l in fi:
                data = l.strip().split('(')
                title, year = data[0], data[1]
                year = year.replace(')','')

                try:

                    fo.write("{},{}\n".format(title.split(',')[0].strip(), year))
                except:
                    fo.write("{},{}\n".format(title, year))

def get_omdb_data(fni="movie_list_clean.txt",fno="omdb_import_data.txt"):
    with open(fni) as fi:
        reader = csv.DictReader(fi, fieldnames=['movie','year'])
        with open(fno, "wb") as fo:
            for i, l in enumerate(reader):
                r = requests.get("http://www.omdbapi.com/?t={}&y={}&plot=full&r=json".format(l['movie'], l['year']))

                if r.status_code == 200:
                    data = json.loads(r.text)

                    try:
                        title = data['Title']
                        year = data['Year']
                        director = data['Director']
                        actors = data['Actors']
                        genre = data['Genre']
                        imdbrating = data['imdbRating']

                        print(u"title={}".format(title))
                        print(u"year={}".format(year))
                        print(u"director={}".format(director))
                        print(u"actors={}".format(actors))
                        print(u"genre={}".format(genre))
                        print(u"imdbRating={}".format(imdbrating))
                        print(u"###")
                    except KeyError:
                        print "No data returned for {}\n###".format(l)
                    # pprint.PrettyPrinter(indent=4).pprint(data)
                time.sleep(1.5)

if __name__ == "__main__":
    # pre_process_raw_movie_list()
    get_omdb_data()

