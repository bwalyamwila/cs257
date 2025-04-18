# Listing animals starting with a letter
# Bwalya Mwila
# 04/18/2025
'''
NAME: cli.py - command-line interface exercise 
SYNOPSIS: python3 cli.py animal by first letter of name 
DESCRIPTION: Will display a list of all the animals that being with a given first letter from the dataset.

'''
import argparse
import csv

animal_names = []
with open('/Users/bwalyamwila/cs257-1/data/data.csv') as f:
    reader = csv.DictReader(f)
    for row in reader:
        animal_names.append(row['Name'])

def get_parsed_arguments():
    parser = argparse.ArgumentParser(description='Give all animals available with a given first letter.')
    parser.add_argument('letter', help='Give the first letter of the animals you want')
    parsed_arguments = parser.parse_args()
    return parsed_arguments

def find_animals_by_letter(animals, letter):
    animals_list = []
    for animal in animals:
        if animal.upper()[0] == letter.upper():
            animals_list.append(animal)
    return animals_list

def main():
    arguments = get_parsed_arguments()
    animal_match = find_animals_by_letter(animal_names, arguments.letter)
    if animal_match:
        print(f"Animals that start with the letter {arguments.letter} are: {animal_match}")
    else:
        print(f"No animals found with {arguments.letter}")


if __name__ == '__main__':
    main()