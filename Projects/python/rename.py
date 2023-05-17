import os

def trim_filenames(directory):
    for root, dirs, files in os.walk(directory):
        for filename in files:
            if "_" in filename:
                old_filepath = os.path.join(root, filename)
                new_filename = filename.split("_")[0]
                new_filepath = os.path.join(root, new_filename)
                os.rename(old_filepath, new_filepath)

# Example usage:
directory_path = r'C:\Users\AG\Desktop\Bennie - Copy'
trim_filenames(directory_path)