#!/usr/bin/python3
"""Returns information about am employee todo list progress using their ID"""

import requests
import sys

if __name__ == "__main__":
    url = "https://jsonplaceholder.typicode.com"
    employee = requests.get(url + "/users" + "/{}".format(sys.argv[1])).json()
    employee_todos = requests.get(url + "/todos",
                                  params={"userId": sys.argv[1]}).json()
    completed_tasks = [task.get("title") for task in
                       employee_todos if task.get("completed") is True]
    print("Employee {} is done with tasks({}/{}):".format(
        employee.get("name"), len(completed_tasks), len(employee_todos)))
    [print("\t {}".format(done)) for done in completed_tasks]
