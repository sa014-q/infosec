#!/usr/bin/env python3
from datetime import datetime

now = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
log_message = f"[{now}] Alert: System check passed successfully!\n"

with open(r"/home/q014/infosec/lab7/task/alert.log", "a") as log_file:
    log_file.write(log_message)

print("Alert logged successfully!")