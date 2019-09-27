import datetime

now = datetime.datetime.now()
print ("What year were you born?")
year = int(input())
print ("What month were you born?(1-12)")
month = int(input())
print ("What day were you born?")
day = int(input())
yourbday = datetime.datetime(year,month,day)
age = int((now - yourbday).total_seconds())
print ("You are %s seconds old." % age )
