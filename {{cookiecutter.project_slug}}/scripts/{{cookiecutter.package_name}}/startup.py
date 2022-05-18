"""Module containing things to run when maya loads the module."""
import logging
import site
from pathlib import Path

logger = logging.getLogger(__name__)


def initialize() -> None:
    """Initialize function called in userSetup.py"""
    link_virtualenv()


def link_virtualenv() -> None:
    """Add the virtualenv to the PYTHONPATH."""
    site_packages = (
        Path(__file__).parent.parent.parent / ".venv" / "Lib" / "site-packages"
    )
    if site_packages.exists():
        site.addsitedir(str(site_packages))
    else:
        logger.error(
            "Could not link virtualenv because it doesn't exist: %s", site_packages
        )
