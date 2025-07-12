trunk build --release --minify --dist "dist" # --public-url "/[pages repo name]/"

Get-ChildItem "./dist/*.wasm" | ForEach-Object {
    wasm-opt -Os --output $_ $_
}

# Remove-Item "[path to pages repo]" -Exclude "[path to pages repo]/.git" -Recurse
# Move-Item "dist/*" "[path to pages repo]"
# Remove-Item "./dist"
