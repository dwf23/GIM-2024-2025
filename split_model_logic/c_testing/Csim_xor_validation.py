### Code mostly taken from Maya's google colab notebook linked below
### https://colab.research.google.com/drive/1esl6YgfoboAyaEYdRGiY6Jg3cW6rjfI8
### This assumes sigmoid activation function

import numpy as np
import os

# Function to parse the text file
def parse_file(filename):
    with open(filename, "r") as file:
        lines = file.readlines()
    
    # Initialize storage variables
    new_w1, new_w2, new_b1, new_b2 = [], [], [], []
    current_section = None

    for line in lines:
        line = line.strip()
        if not line:
            continue
        
        if line.startswith("new_w1:"):
            current_section = "new_w1"
        elif line.startswith("new_w2:"):
            current_section = "new_w2"
        elif line.startswith("new_b1:"):
            current_section = "new_b1"
        elif line.startswith("new_b2:"):
            current_section = "new_b2"
        else:
            values = list(map(float, line.split()))
            if current_section == "new_w1":
                new_w1.append(values)
            elif current_section == "new_w2":
                new_w2.append(values)
            elif current_section == "new_b1":
                new_b1.extend(values)
            elif current_section == "new_b2":
                new_b2.extend(values)

    # Convert lists to numpy arrays
    weight_1 = np.array(new_w1)
    weight_2 = np.array(new_w2)[0]#.reshape(-1)  # Ensure it's 2x1 column vector
    bias_1 = np.array(new_b1).reshape(-1, 1)  # Ensure it's 2x1 column vector
    bias_2 = np.array([np.array(new_b2)[0]]) #since last layer only 1

    return weight_1, weight_2, bias_1, bias_2

script_dir = os.path.dirname(os.path.abspath(__file__))  # Get script's directory
filename = os.path.join(script_dir, "final_w_b.txt")  # Construct full path

weight_1, weight_2, bias_1, bias_2 = parse_file(filename)

print("file Weights and Biases:")
print("weight_1 =", weight_1.shape, "\n", weight_1, "\n")
print("weight_2 =", weight_2.shape, "\n", weight_2, "\n")
print("bias_1 =", bias_1.shape, "\n", bias_1, "\n")
print("bias_2 =", bias_2.shape, "\n", bias_2, "\n")

###change the numbers below then run script
#weight1 is 2by2 for weights from input to hidden
# weight_1 = np.array([[0.13458, 0.513578 ],[0.18444, 0.785335 ]])
# #weight2 is 2by1 for weights from hidden to output
# weight_2 = np.array([0.853975, 0.494237 ])
# #biases for inputs
# bias_1 = np.array([[0.505246], [0.0652865]])
# #biases for the output
# bias_2 = np.array([0.428122])

class xor:
    def __init__(self, weight1, weight2, bias1, bias2):
        self.weight1 = weight1
        self.weight2 = weight2
        self.bias1 = bias1
        self.bias2 = bias2
        return

    def sigmoid(self, z):
        z= 1/(1+np.exp(-z))
        return z
    
    def forward_prop(self, w1,w2,b1, b2,x):
        z1 = np.dot(w1,x) + b1
        a1 = self.sigmoid(z1)
        z2 = np.dot(w2,a1) + b2
        a2 = self.sigmoid(z2)
        return z1,a1,z2,a2
    
    def predict(self,w1,w2,b1, b2,input):
        z1,a1,z2,a2 = self.forward_prop(w1,w2,b1,b2,input)
        #print(a1, a2)
        a2 = np.squeeze(a2)
        #print(a2)
        if a2>=0.5:
            print("For input", [i[0] for i in input], "output is 1")
            return 1
        else:
            print("For input", [i[0] for i in input], "output is 0")
            return 0
        
    
    def test(self):
        accuracy = 0
        testcase1 = np.array([[1],[0]])
        testcase2 = np.array([[0],[1]])
        testcase3 = np.array([[1],[1]])
        testcase4 = np.array([[0],[0]])
        test1 = self.predict(self.weight1, self.weight2, self.bias1, self.bias2, testcase1)
        test2 = self.predict(self.weight1, self.weight2, self.bias1, self.bias2, testcase2)
        test3 = self.predict(self.weight1, self.weight2, self.bias1, self.bias2, testcase3)
        test4 = self.predict(self.weight1, self.weight2, self.bias1, self.bias2, testcase4)
        if (test1 == 1):
            accuracy +=1
        if (test2 == 1):
            accuracy +=1
        if (test3 == 0):
            accuracy +=1
        if (test4 == 0):
            accuracy +=1
        print("Accuracy: " +  str(accuracy/4))

             
        

testmodel = xor(weight_1, weight_2, bias_1, bias_2)
testmodel.test()
