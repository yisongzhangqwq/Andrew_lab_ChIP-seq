import re
column_index = [0,1, 2]

def main():
    with open('hichippeaks.bed') as f1, open('hichippeaksnew.bed', 'w') as f2:
        #first_line = next(f1)
        # length = len(first_line.strip().split(' '))
        #line_l = re.split('[ \t]', line.strip())
        #f2.write(first_line)
        for line in f1:
            #line_l = line.strip().split('\t')
            line_l = re.split('[ \t]', line.strip())
            f2.write('\t'.join(line_l[i] for i in column_index) + '\n')

if __name__ == '__main__':
    main()
