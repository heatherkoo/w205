import tweepy

consumer_key = "DMlVJ1D1yldlQZmw5Tk7LxIfS";
#eg: consumer_key = "YisfFjiodKtojtUvW4MSEcPm";


consumer_secret = "JktJ16Pc1LSxedxSCAKo05dj1SOz2TS77AWfMD8WkJNdOD1gEc";
#eg: consumer_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token = "912854886190116864-3dITXkAb13egqArrt2LUwnzq9v0r713";
#eg: access_token = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token_secret = "9C7jMpdC27PDqH4MEb4DNyzQyuwzP8lavI93Kbtyqm7kv";
#eg: access_token_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";


auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)

api = tweepy.API(auth)



