PROJECT=demand_forecast_power_tools
SOURCE=.

# linting
lint: lint.ruff lint.black
lint.ruff:
	nbqa ruff ${SOURCE}
lint.black:
	nbqa black --check ${SOURCE}


# format
format:
	nbqa black ${SOURCE}
	nbqa ruff ${SOURCE} --fix
