import yaml, os

input = os.environ.get('relative') + os.environ.get('config')
output = os.environ.get('ini')


submission = "\n"

with open(input,'r') as file:
  feed = yaml.load(file, Loader=yaml.FullLoader)
  for k, v in feed.items():
    if k == "_id":
        submission += '[' + v + ']'
    if k == "title":
        submission += '\n  title = ' + v
    if k == "link":
        submission += '\n  link = ' + v
    if k == "feed":
        submission += '\n  feed = ' + v
  file.close

print(submission)

with open(output,'a') as ini:
  ini.write(submission)
  ini.close