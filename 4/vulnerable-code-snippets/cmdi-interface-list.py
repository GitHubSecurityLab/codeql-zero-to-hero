import gradio as gr
import os

def execute_cmd(folder, logs):
    cmd = f"python caption.py --dir={folder} --logs={logs}"
    os.system(cmd)
    return f"Command: {cmd}"


folder = gr.Textbox(placeholder="Directory to caption")
logs = gr.Checkbox(label="Save verbose logs")
output = gr.Textbox()

demo = gr.Interface(
	fn=execute_cmd,
	inputs=[folder, logs],
	outputs=output)

if __name__ == "__main__":
    demo.launch(debug=True)
