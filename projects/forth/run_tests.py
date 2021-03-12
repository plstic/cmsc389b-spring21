import os

def checkoutput(test_config):
  errors = 0;
  for cmd,answers in test_config:
    count = 1
    os.system(cmd +" > output")
    outputfile = open('output', 'r')
    sol = open(answers, 'r')
    for line in outputfile:
      s = sol.readline()
      if s.strip() != line.strip():
        print("error on line " + str(count) + " of "+ str(answers)+ ": got " \
        ''+line[:-1]+"\texpected: "+s[:-1])
        errors = errors + 1
      count = count + 1
  if errors == 0:
    print("All tests passed successfully");
        
commands = ['gforth tree.fs public_tests.fs -e bye']
solutions = ['public-sols']
removefiles = 'rm output'

checkoutput(zip(commands,solutions))
os.system(removefiles)
