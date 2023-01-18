import subprocess

# Get a list of running services
services = subprocess.run(["service", "--status-all"], capture_output=True, text=True).stdout

# Get a list of installed packages
packages = subprocess.run(["dpkg", "-l"], capture_output=True, text=True).stdout

# Print the lists
print("Running services:")
print(services)
print("\nInstalled packages:")
print(packages)

