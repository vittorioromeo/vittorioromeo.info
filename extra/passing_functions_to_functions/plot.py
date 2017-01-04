#!/bin/python3

import matplotlib.pyplot as plt

fns = [1, 2, 3, 4, 5]
a_baseline = [7, 11, 15, 19, 23]
a_fview = [10, 17, 24, 31, 38]
a_stdfn = [37, 70, 101, 132, 163]
a_inlstdfn = [32, 60, 86, 112, 138]

fig = plt.figure()
fig.suptitle('Stateful | `g++ -Ofast`', fontsize=20)

ax = fig.add_subplot(1, 1, 1)


ax.plot(fns, a_baseline, 'r8-', label="baseline, template, inline  `function_view`")
ax.plot(fns, a_fview, 'bs-', label="function_view")
ax.plot(fns, a_inlstdfn, 'yD-', label="inline `std::function`")
ax.plot(fns, a_stdfn, 'g^-', label="`std::function`")

xlabels = ['1 fn', '2 fns', '3 fns', '4 fns', '5 fns']
plt.xticks(fns, xlabels)
plt.ylabel('lines of assembly', fontsize=16)

plt.margins(0.05, 0.1)

ax.legend(loc='upper left',prop={'size': 12})


plt.savefig("plot.png")
plt.show()