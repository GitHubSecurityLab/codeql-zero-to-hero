import subprocess
from django.conf.urls import url



COMMANDS = {
    "list" :"ls",
    "stat" : "stat"
}

def command_execution_unsafe(request):
    if request.method == 'POST':
        action = request.POST.get('action', '')
        #BAD -- No sanitizing of input
        subprocess.call(action, shell=True)

def command_execution_safe(request):
    if request.method == 'POST':
        action = request.POST.get('action', '')
        #GOOD -- Use an allowlist
        subprocess.call(["application", COMMANDS[action]])

urlpatterns = [
    # Route to command_execution
    url(r'^command-ex1$', command_execution_unsafe, name='command-execution-unsafe'),
    url(r'^command-ex2$', command_execution_safe, name='command-execution-safe')
]
