#!/usr/bin/python3
"""Returns information about an employee's TODO list progress based on
their id using a REST API
"""

import requests
import sys


if __name__ == "__main__":
    mainUrl = "https://jsonplaceholder.typicode.com/users"
    url = mainUrl + "/" + sys.argv[1]
    res = requests.get(url)
    emp_name = res.json().get('name')
    todo_url = url + "/todos"
    res = requests.get(todo_url)
    tasks = res.json()
    task_count = 0
    completed_task = []
    for task in tasks:
        if task.get("completed"):
            completed_task.append(task)
            task_count += 1
    print("Employee {} is done with tasks({}/{}):"
          .format(emp_name, task_count, len(tasks)))
    for task in completed_task:
        print("\t {}".format(task.get('title')))
