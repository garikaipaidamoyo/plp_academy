def create_file():
    # Create a new text file named "my_file.txt" in write mode ('w')
    with open('my_file.txt', 'w') as file:
        # Write three lines of text to the file
        file.write("This is line 1\n")
        file.write("Line 2 with numbers: 12345\n")
        file.write("Third line here\n")
    print("File created and content written successfully.")


def read_file():
    try:
        # Open the file in read mode ('r')
        with open('my_file.txt', 'r') as file:
            # Read and display the contents of the file
            print("Contents of my_file.txt:")
            for line in file:
                print(line.strip())
    except FileNotFoundError:
        print("Error: File not found.")
    except PermissionError:
        print("Error: Permission denied.")
    finally:
        print("File reading completed.")


def append_file():
    try:
        # Open the file in append mode ('a')
        with open('my_file.txt', 'a') as file:
            # Append three additional lines of text to the existing content
            file.write("Fourth line added\n")
            file.write("Fifth line appended\n")
            file.write("Sixth line appended\n")
        print("File appended successfully.")
    except FileNotFoundError:
        print("Error: File not found.")
    except PermissionError:
        print("Error: Permission denied.")
    finally:
        print("File appending completed.")


# Main function to execute the tasks
def main():
    create_file()
    read_file()
    append_file()


if __name__ == "__main__":
    main()
