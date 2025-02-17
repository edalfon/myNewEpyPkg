sync:
	uv sync
	
installme:
	uv pip install -e .

test:
	uv run pytest -s tests/ --cov=myNewEpyPkg --cov-report=term-missing

test_single:
	uv run pytest -s -v .\tests\test_myNewEpyPkg.py::test_myNewEpyPkg --cov=myNewEpyPkg --cov-report=term-missing

docs:
	uv run mkdocs build

docs_serve:
	uv run mkdocs serve

.PHONY: sync test installme docs docs_serve test_single

