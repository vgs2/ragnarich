import requests

def get_market_data(api_key:str):
    link = 'https://api.originsro.org/api/v1'
    method = '/market/list'
    headers = {'x-api-key': api_key}
    return requests.get(link + method, headers=headers).json()