#!/bin/sh
export PATH="$HOME/.venv/bin:$PATH"
source .venv/bin/activate
gradio app.py