#!/usr/bin/python3
"""
prints the titles of the first 10 hot posts listed for a given subreddit
"""

from requests import get


def top_ten(subreddit):
    """
    Queries the Reddit API and prints the titles of the first
    10 hot posts listed for a given subreddit
    """

    if subreddit is None or not isinstance(subreddit, str):
        print("None")

    user_agent = {'User-agent': 'Google Chrome Version 128.0.6613.84'}
    param = {'limit': 10}
    url = 'https://www.reddit.com/r/{}/hot/.json'.format(subreddit)

    response = get(url, headers=user_agent, params=param)
    results = response.json()

    try:
        hot_data = results.get('data').get('children')

        for i in hot_data:
            print(i.get('data').get('title'))

    except Exception:
        print("None")
