import gradio as gr
import os

port = int(os.getenv("PORT", 7860))

with gr.Blocks(title="🎉 Setup Complete!") as demo:
    gr.Markdown("""
    # ✅ Your IDX Gradio App is Ready!
    ---
    Welcome to your Gradio app running on **Google IDX** 🎈

    > You can now start building your own UI, models, and tools here.

    ---
    🛠️ **Tech Stack**: Gradio + uv

    💡 Tip: Edit `app.py` to customize this view.
    """)

demo.launch(server_port=port, server_name="0.0.0.0")