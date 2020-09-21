import argparse
import sys
import os
import re

ap = argparse.ArgumentParser()
ap.add_argument("--fixed_time_value", required=False, help ="Define the completion time for the simulation (time in us)", type=str)
ap.add_argument("--fixed_val_value", required=False, help ="Define the completion vlaue for the simulation", type=str)
ap.add_argument("--step_size", required=False, help ="Define the resolution of step size for either type of simulation", type=int)
args = vars(ap.parse_args())

time_constant_us = 100
val_constant = 100
period_step = 20


if args["fixed_time_value"] :
    if re.sub("[^0-9]", "",args["fixed_time_value"]) == '':
        sys.exit("Invalid number for fixed_time_value")
    item = str(re.sub("[^0-9]", "",args["fixed_time_value"]))
    if item != args["fixed_time_value"]:
        sys.exit("fixed_time_value must be numbers only and grater then 0")

    time_constant_us = int(item)

if args["fixed_val_value"] :
    if re.sub("[^0-9]", "",args["fixed_val_value"]) == '':
        sys.exit("Invalid number for fixed_val_value")
    item = str(re.sub("[^0-9]", "",args["fixed_val_value"]))
    if item != args["fixed_val_value"]:
        sys.exit("fixed_val_value must be numbers only and grater then 0")

    val_constant = int(item)

if args["step_size"] :
    if re.sub("[^0-9]", "",args["step_size"]) == '':
        sys.exit("Invalid number for step_size")
    item = str(re.sub("[^0-9]", "",args["step_size"]))
    if item != args["step_size"]:
        sys.exit("step_size must be numbers only and grater then 0")

    period_step = int(item)

print(time_constant_us)
print(val_constant)