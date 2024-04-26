#!/usr/bin/python3
"""Returns information about an employee's TODO list progress based on
their id using a REST API
"""

import requests
import sys
import json


if __name__ == "__main__":
    emp_Id = sys.argv[1]
    mainUrl = "https://jsonplaceholder.typicode.com/users"
    url = mainUrl + "/" + emp_Id
    res = requests.get(url)
    emp_username = res.json().get('username')
    todo_url = url + "/todos"
    res = requests.get(todo_url)
    tasks = res.json()
    emp_data = {emp_Id: []}
    for task in tasks:
        emp_data[emp_Id].append({
            "task": task.get("title"),
            "completed": task.get("completed"),
            "username": emp_username
        })
    with open('{}.json'.format(emp_Id), "w") as f:
        json.dump(emp_data, f)
