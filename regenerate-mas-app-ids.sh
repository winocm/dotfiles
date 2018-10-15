#!/bin/sh
mas list | cut -d' ' -f1 | sort -nr > mas-app-ids
