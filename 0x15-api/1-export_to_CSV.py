#!/usr/bin/python3
"""Returns information about an employee's TODO list progress based on
their id using a REST API
"""

import requests
import sys


if __name__ == "__main__":
    emp_Id = sys.argv[1]
    mainUrl = "https://jsonplaceholder.typicode.com/users"
    url = mainUrl + "/" + emp_Id
    res = requests.get(url)
    emp_username = res.json().get('username')
    todo_url = url + "/todos"
    res = requests.get(todo_url)
    tasks = res.json()
    with open("{}.csv".format(emp_Id), "w") as f:
        for task in tasks:
            f.write('"{}","{}","{}","{}"\n'.format(emp_Id, emp_username,
                    task.get("completed"), task.get("title")))
