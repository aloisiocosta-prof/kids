""""Ensure the generated Flutter Android app meets image_picker's SDK floor."""
from pathlib import Path
import re

path = Path("android/app/build.gradle.kts")
if not path.exists():
    path = Path("android/app/build.gradle")
if not path.exists():
    raise SystemExit("Android Gradle file not found. Run flutter create --platforms=web,android . first.")

source = path.read_text(encoding="utf-8")
patterns = [
    (r"minSdk\s*=\s*flutter\.minSdkVersion", "minSdk = 24"),
    (r"minSdkVersion\s+flutter\.minSdkVersion", "minSdkVersion 24"),
]
for pattern, replacement in patterns:
    if re.search(pattern, source):
        path.write_text(re.sub(pattern, replacement, source, count=1), encoding="utf-8")
        print(f"Configured Android minSdk 24 in {path}.")
        break
else:
    numeric = re.search(r"minSdk(?:Version)?\s*(?:=\s*)?(\d+)", source)
    if numeric and int(numeric.group(1)) >= 24:
        print(f"Android minSdk already meets requirement in {path}.")
    else:
        raise SystemExit(f"Could not safely identify the minSdk setting in {path}; inspect it manually.")
"