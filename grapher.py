
import matplotlib.pyplot as plt
import csv
import argparse

def main():
    parser = argparse.ArgumentParser(description="Graphs RFI data in a simple frequency vs intensity plot")
    parser.add_argument("filepath",help="The path to the txt rfi data to be processed")

    args = parser.parse_args()
    myfile = args.filepath
    freq = []
    intensity = []

    with open(myfile,'r') as csvfile:
        plots = csv.reader(csvfile,delimiter=',')
        header = next(plots,None)
        print(header)
        for row in plots:
            freq.append(float(row[0]))
            intensity.append(float(row[1]))

    plt.plot(freq,intensity)
    plt.xlabel(str(header[0]))
    plt.ylabel(str(header[1]))
    plt.title('RFI Data Plot')
    plt.show()
    save_name = 'RFI_Data_Plot_'+myfile[:-3]
    plt.savefig(save_name)
    print('saved as '+save_name)

if __name__ == '__main__':
    main()
