#!/usr/bin/python3
"""Returns information about an employee's TODO list progress based on
their id using a REST API
"""

import requests
import sys
import json


if __name__ == "__main__":
    url = "https://jsonplaceholder.typicode.com/users"
    res = requests.get(url)
    users = res.json()
    emp_data = {}
    for user in users:
        user_Id = user.get("id")
        emp_username = user.get("username")
        url = "https://jsonplaceholder.typicode.com/users/{}".format(user_Id)
        todo_url = url + "/todos/"
        res = requests.get(todo_url)
        tasks = res.json()
        emp_data[user_Id] = []
        for task in tasks:
            emp_data[user_Id].append({
                    "task": task.get("title"),
                    "completed": task.get("completed"),
                    "username": emp_username
            })
    with open("todo_all_employees.json", "w") as f:
        json.dump(emp_data, f)
