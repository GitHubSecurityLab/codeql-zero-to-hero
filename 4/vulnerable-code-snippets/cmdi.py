import gradio as gr
import os

def execute_cmd(folder):
    cmd = f"python caption.py --dir={folder}"
    os.system(cmd)
    return f"Command: {cmd}"


with gr.Blocks() as demo:
    gr.Markdown("Create caption files for images in a directory")
    with gr.Row():
        folder = gr.Textbox(placeholder="Directory to caption")
        output = gr.Textbox()

    btn = gr.Button("Run")
    btn.click(
        execute_cmd,
        folder,
        output)


if __name__ == "__main__":
    demo.launch(debug=True)
