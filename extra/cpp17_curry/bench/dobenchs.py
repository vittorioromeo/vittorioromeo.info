#!/bin/python3

import os
import sys
import subprocess
import pprint

def eprint(*args, **kwargs):
    print(*args, file=sys.stderr, **kwargs)

def run_cmd(cmd):
    return subprocess.run(cmd, shell=True, executable='/bin/bash', stdout=subprocess.PIPE, stderr=subprocess.PIPE, universal_newlines=True)

def main():
    out = "/tmp/x.s"
    flags = "-std=c++1z -S -W -Wall -Wextra -Wpedantic -fdiagnostics-color=always -DNDEBUG -o {}".format(out)

    compilers = [["g++ 7.0.0 20170113", "/usr/local/bin/g++"]]

    optimization_levels = ["-O0", "-O1", "-O2", "-O3", "-Ofast"]

    macros = [["Baseline", "VR_BASELINE"],
              ["Curry", "VR_CURRY"]]

    adds = [["", ""]]

    results = {}

    for add in adds:
        csvs = []

        addname = add[0]
        addflag = add[1]
        results[addname] = {}

        def baseline(comp, opt):
            return results[addname][macros[0][0]][comp][opt]

        def percentage_change(val, comp, opt):
            if val == 0: return 0
            
            b = baseline(comp, opt)
            return (float(val - b) / float(b)) * 100.0

        for macro in macros:
            csv = ""
            csv += ','.join([""] + list(map(lambda x: x[1:], optimization_levels)))

            macroname = macro[0]
            macrodef = macro[1]
            results[addname][macroname] = {}

            for compiler in compilers:
                compilername = compiler[0]
                compilerdef = compiler[1]
                results[addname][macroname][compilername] = {}

                optres = []

                for optimization_level in optimization_levels:
                    optlevel = optimization_level
                    optlname = optlevel[1:]


                    cmd = "{} {} {} {} -D{}=1 {}".format(compilerdef, flags, addflag, optlevel, macrodef, sys.argv[1])
                    eprint(cmd)

                    res = run_cmd(cmd)
                    if res.stderr != "":
                        print(res.stderr)
                        sys.exit(1)

                    asmwc = run_cmd("./stripasm {} | wc -l | cut -f1 -d' '".format(out))
                    reslines = int(asmwc.stdout)

                    eprint(reslines)                
                    eprint(run_cmd("./stripasm {}".format(out)).stdout)
                    eprint("\n\n\n")

                    if macroname != macros[0][0]: 
                        pc = percentage_change(reslines, compilername, optlname)
                        truncatedpc = str(pc)[:4]

                        optres.append("{} *({}{}{})*".format(reslines, "+" if pc >= 0 else "", truncatedpc, "%"))
                    else:
                        optres.append("{}".format(reslines))

                    results[addname][macroname][compilername][optlname] = reslines
                
                csv += "{}{}".format("\n", compilername + ',' + ','.join(optres))

            csvs.append(["{}".format(macroname), csv])

        pp = pprint.PrettyPrinter(indent=4)
        # pp.pprint(csvs)

        for c in csvs:
            print("**" + c[0] + addname + "**" + "\n")
            
            mdout = str(run_cmd("csvtomd <(echo '{}')".format(c[1])).stdout)
            #print('|'.join(('\n'+mdout.lstrip()).splitlines(True)))
            pmdout = '|'.join(mdout.splitlines(True))

            
            print('|' + pmdout)
            print("\n\n\n")

main()
