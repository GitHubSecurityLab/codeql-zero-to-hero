import gradio as gr
import os

def execute_cmd(folder):
    cmd = f"python caption.py --dir={folder}"
    os.system(cmd)
    return f"Command: {cmd}"


folder = gr.Textbox(placeholder="Directory to caption")
output = gr.Textbox()

demo = gr.Interface(
	execute_cmd,
	folder,
    output)

if __name__ == "__main__":
    demo.launch(debug=True)
