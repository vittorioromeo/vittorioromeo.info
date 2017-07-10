#!/bin/python3

import matplotlib.pyplot as plt

continuations = [0, 1, 2, 3, 4]
a_asmlines = [10111, 10949, 11581, 12178, 12843]

fig = plt.figure()
fig.suptitle('', fontsize=20)

ax = fig.add_subplot(1, 1, 1)

ax.plot(continuations, a_asmlines, 'r8-', label="")

xlabels = ['0 continuations', '1 continuation', '2 continuations', '3 continuations', '4 continuations']
plt.xticks(continuations, xlabels)
plt.ylabel('lines of assembly', fontsize=16)

plt.margins(0.05, 0.1)

ax.legend(loc='upper left',prop={'size': 12})


plt.savefig("plot.png")
plt.show()
