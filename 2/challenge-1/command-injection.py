COMMANDS = {
    "list" :"ls",
    "stat" : "stat"
}
def command_execution_unsafe(request):
    if request.method == 'POST':
        action = request.POST.get('action', '')
        #BAD -- No sanitizing of input
        subprocess.call(["application", action])
def command_execution_safe(request):
    if request.method == 'POST':
        action = request.POST.get('action', '')
        #GOOD -- Use an allowlist
        subprocess.call(["application", COMMANDS[action]])
