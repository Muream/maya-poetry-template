import sys
import subprocess


try:
    subprocess.run(["poetry", "--version"], shell=True)
except Exception:
    print("Poetry is not installed or not in the PATH, skipping installation.")
    sys.exit(1)
else:
    try:
        subprocess.run(["poetry", "install"], shell=True)
    except Exception as poetry_exc:
        print(poetry_exc)
        sys.exit(1)
