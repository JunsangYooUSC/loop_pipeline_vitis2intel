import re

# ## input filename
# current_files = []
# NAME_EXTEND = "2intel"
# while True:
#     print("\ncurrent files: ", current_files)
#     print("input files to translate one by one(ex. loop_pipeline.cpp)")
#     print("<filename>"+NAME_EXTEND+".extension will be the new filename")
#     print("q to quit and d when done adding files")
#     filename = input("enter command: ")
#     if filename.lower() == 'q' or filename.lower() == 'quit':
#         exit()
#     elif filename.lower() == 'd' or filename.lower() == "done":
#         break
#     elif (filename in current_files) == False:
#         current_files.append(filename)
#
# translated_files = []
# for filename in current_files:
#     filename_split = filename.split('.')
#     # filename with extension
#     if len(filename_split) > 1:
#         translated_filename = ''
#         for idx in range(len(filename_split)-1):
#             print('asdf')
#             translated_filename += filename_split[idx]
#         translated_filename += NAME_EXTEND
#         translated_filename += filename_split[-1]
#     # filename without extension
#     else:
#         translated_filename = filename + NAME_EXTEND
#     translated_files.append(translated_filename)
#
# print('\nresult files: ', translated_files)

## Functions and dictionary for one line translation
vitis2intel_header = {
    '#include .?"ap_int.h"':             '#ifdef __INTELFPGA_COMPILER__ \n#include "HLS/ac_int.h" \n#else \n#include "ref/ac_int.h" \n#endif'
    }

def vitis2intel_ap_int(code):
    # add this header always for Intel HLS component
    newcode = '#include "HLS/hls.h"\n' + code

    # change header
    for header in vitis2intel_header.keys():
        prevcode = newcode
        find_expression = header
        finds = re.findall(find_expression, prevcode)
        line_split = re.split(find_expression, prevcode)
        # rewrite code (find all parts that includes this header)
        newcode = line_split[0]
        if len(finds) > 0:
            for idx in range(len(finds)):
                # rewrite header
                newcode += vitis2intel_header[header]
                # non-header part
                newcode += line_split[idx+1]

    # change ap_int and ap_uint class
    prevcode = newcode
    find_expression = r"ap_.?int<\d*>"
    finds = re.findall(find_expression,prevcode)
    line_split = re.split(find_expression,prevcode)
    newcode = line_split[0]
    if len(finds) > 0:
        for idx in range(len(finds)):
            newcode += 'ac_int'
            # number of bits
            newcode += re.findall(r"<.*?>", finds[idx])[0][:-1]
            # signed or unsigned
            if ("ap_int" in finds[idx]) == True:
                newcode += ",true>"
            elif ("ap_uint" in finds[idx]) == True:
                newcode += ",false>"
            else:
                raise("unexpected char")
            # non-ap_int part
            newcode += line_split[idx+1]

    return newcode

## Main
def main():
    NAME_EXTEND = "2intel."
    readfilenames = input("enter filenames space separated. (q: quit): ")
    for filename in readfilenames.split(' '):
        readfile = open(readfilenames, 'r')
        code = readfile.read()
        newcode = vitis2intel_ap_int(code)
        writefile = open(readfilenames.split('.', 1)[0]+NAME_EXTEND+readfilenames.split('.', 1)[1], 'w')
        writefile.write(newcode)
        writefile.close()
        readfile.close()

if __name__ == "__main__":
    main()

# ## read and change
# # queue of filenames to change next
# read_queue = [FILENAME+".h", filename]
# write_list = []
# while not len(queue) == 0:
#     # readfile: vitis code to translate to Intel HLS
#     readfile = open(readqueue[0], 'r')
#     readcode =
#     # file with extension
#     writefilename_split = readqueue[0].split('.')
#     writefilename = ""
#     if len(writefilename_split) > 1:
#         for idx in range(len(writefilename_split)-1):
#             writefilename += writefilename_split[idx]
#         writefilename += NAME_EXTEND
#         writefilename += writefilename_split[-1]
#     # file without extension
#     else:
#         writefilename = readqueue[0] + NAME_EXTEND
#
#     # if already done translation, skip
#     if writefilename in write_list:
#         continue
#     else:
#     # writefile: New Intel code that is translated
#     writefile = open(writefilename, 'w')


