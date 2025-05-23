import gradio as gr
import os

def greet(name):
    return f"Hello, {name}!"

port = int(os.getenv("PORT", 7860))

demo = gr.Interface(fn=greet, inputs="text", outputs="text")
demo.launch(server_port=port, server_name="0.0.0.0")