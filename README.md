# React Router Case Sensitivity Task

## Task Description

You are given a minimal React app using React Router v6. Navigating to `/Products` works, but `/products` (and any casing variant) shows a blank page or 'No Match'.

**Your task:**
- Fix the router so that any case variant of `/Products` (e.g. `/products`, `/PRODUCTS`, etc.) correctly renders the Products component.

## Setup Instructions

### Prerequisites
- Docker installed and running

### Start the Environment

1. Run `./run.sh` (macOS/Linux) or `sh run.sh` (Windows with WSL or Git Bash).
2. Wait until you see `[SUCCESS] Application is running at http://localhost:3000`.

### Access the App

- Visit: [http://localhost:3000/Products](http://localhost:3000/Products) (Works)
- Visit: [http://localhost:3000/products](http://localhost:3000/products) (Shows No Match)

## What To Fix

Update the router configuration so that all case variants (e.g. `/Products`, `/products`, `/PRODUCTS`, etc.) render the Products page. Only change files in `src/` to solve this.

## Solution Hints
- React Router v6 matches routes case-sensitively by default.
- There is no built-in case-insensitive matching, so think about how you would support all cases for this route.

## Reset Environment

To reset:
- `docker rm -f rr-case-sensitive-task` to remove the running container
- Start again with `./run.sh`
