poetry run black --check *.py && poetry run isort --check *.py && poetry run flake8 *.py && echo "Everything looks good"
