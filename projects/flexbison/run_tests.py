import os

def checkoutput(test_config):
  count = 0
  for cmd,answers in test_config:
    os.system(cmd +" > output")
    outputfile = open('output', 'r')
    sol = open(answers, 'r')
    for line in outputfile:
      s = sol.readline()
      if s.strip() != line.strip():
        print("error on line " + str(count) + " of "+ str(answers)+ ": got " \
        ''+line[:-1]+"\texpected: "+s[:-1])
        count = count + 1
  if count == 0:
    print("All tests passed successfully");
        
commands = ['(./bbcalc < public_input )']
solutions = ['public_sols']
removefiles = 'rm *.lex* *.tab.* output'

checkoutput(zip(commands,solutions))
os.system(removefiles)
