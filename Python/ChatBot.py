import sys
from datetime import datetime

def get_response(txt: str) ->str:
    lowered: str = txt.lower()

    if lowered in ['Hellow', 'Hey','hi',]:
        return 'Hey there!'
    elif 'how are you' in lowered:
        return "I'm good Thanks!"
    elif 'your name ' in lowered:
        return "My Name is: Bot:"
    elif 'time' in lowered:
        current_time: datetime = datetime.now( )
        return f'The time is: {current_time:%H:%M}'
    elif  lowered in ['bye','see you','goodbye']:
        return "It was nice talking with you! Bye"
    else:
        return f'Sorry i dont understand {txt}'

while True:
    user_inpu: str = input('You: ')

    if user_inpu== 'exit':
        print('Bot: It was a pleasure talking to you!')
        sys,exit()
    bot_res: str  = get_response(user_inpu)
    print(f'Bot: {bot_res}')
