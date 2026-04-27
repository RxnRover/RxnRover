import argparse
import time
import os
import random
import re

def execute_loop(delay, report_directory):
    """Report file generation loop using the given delay"""

    # Get the starting report number
    current_report_number = get_last_report_number(report_directory)
    
    # Use an infinite loop of file generation until the user stops the script
    while (True):
        # Generate a report
        generate_report(report_directory, current_report_number + 1)

        # Increment report number
        current_report_number += 1

        # Wait for the specified delay time
        time.sleep(delay)



def generate_report(report_directory, current_report_number):
    """Generate a report file"""

    # Get report file name
    filename = "report{0}.txt".format(current_report_number)

    # Generate the report file
    with open(os.path.join(report_directory, filename), "w") as fout:
        starting_material = random.randrange(23, 28) # Generate starting material concentration from 1 to 50 mM
        percent_conversion = random.randrange(0, 100) # conversion to analyte from 0-100%
        
        fout.write("Original Sample Set Id\n")
        fout.write("7372\n")
        fout.write("Peak Results\n")
        fout.write("Baseline End,Name,RT,Area,Height,Amount,Units\n")
        fout.write("4.985,Starting Material,4.133,746853,330957,{0},mM\n".format(starting_material))
        fout.write("4.985,Analyte,4.240,120100,17493,{0},mM\n".format(starting_material * percent_conversion / 100.0))
    
    # Announce report file generation
    print("Generated report{0}.txt".format(current_report_number))

    

def get_last_report_number(report_directory):
    """Grab the highest report file number of type `report<number>.txt`"""

    # Initialize to smallest report number possible
    last_report_number = -1
    
    # Regex for report files
    pattern = re.compile(r"^report([0-9]+)\.txt$")

    # Get files in directory using generator
    reports = [report for report in os.listdir(report_directory) if os.path.isfile(os.path.join(report_directory, report))]

    # Check for matching files and get maximum report number
    for report in reports:
        match = re.match(pattern, report)

        # Check if match was found
        if (match):
            new_report_number = int(match.group(1))
            
            if (new_report_number > last_report_number):
                last_report_number = int(new_report_number)

    return last_report_number

    
        
def parse_args():
    """Parse command line arguments"""

    # Instantiate parser
    parser = argparse.ArgumentParser()

    # Add positional arguments
    parser.add_argument("delay", help="delay between data generation in seconds", type=int)

    # Add optional agruments
    parser.add_argument("-p", "--path", default=".", help="Path to directory containing report files and where new reports will be generated.")
    
    # Parse program arguments
    return parser.parse_args()



def program_header(args):
    """Print a descriptive program header"""

    print("-----  Mock Analyzer Data Generator -----")
    print("") # blank line
    print("") # blank line
    print("Using report directory: {0}".format(args.path))
    print("Report generation interval: {0} seconds".format(args.delay))
    print("") # blank line


    
def validate_args(args):
    """Validates argument values"""
    
    # Check valid delay
    if (args.delay <= 0):
        print("delay must be greater than zero. Use `<program> -h` for usage and help.")
        return -1

    # Check valid path given
    if (not os.path.exists(args.path)):
        print("path does not exist. Path given: {0}".format(args.path))
        return -2
    elif (not os.path.isdir(args.path)):
        print("path must be a valid directory. {0} is not valid.".format(args.path))
        return -3
    
    return 0



def main(args):
    """Main entry function for the program"""

    # Validate command line arguments
    if (validate_args(args) != 0):
        return -1

    # Print program header
    program_header(args)

    # Seed random number generator
    random.seed()
    
    # Start the main program loop
    execute_loop(args.delay, args.path)

    return 0



if __name__ == "__main__":
    # Preprocess command line arguments
    args = parse_args()

    # Pass parsed args to the main program
    main(args)
