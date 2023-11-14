
from PIL import Image
import os


def convert_to_png(input_folder, output_folder):
    # Iterate over files in the input folder
    for filename in os.listdir(input_folder):
        # Check if the file is an image
        if filename.endswith((".jpg", ".jpeg", ".bmp", ".gif", ".jfif")):
            # Construct the input and output file paths
            input_path = os.path.join(input_folder, filename)
            output_path = os.path.join(
                output_folder, os.path.splitext(filename)[0] + ".png")

            # Open and convert the image to PNG format
            with Image.open(input_path) as img:
                img.save(output_path, "PNG")
                print(f"Converted {filename} to PNG.")

    print("Conversion complete.")


# Specify the input and output folders
input_folder = r"C:\Users\AG\Desktop\Old"
output_folder = r"C:\Users\AG\Desktop\PNG"

# Call the conversion function
convert_to_png(input_folder, output_folder)
