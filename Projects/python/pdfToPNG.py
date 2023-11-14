import os
from pdf2image import convert_from_path
from PIL import Image


def pdf_to_png(pdf_path, output_folder):
    # Convert PDF to list of PIL.Image
    images = convert_from_path(pdf_path)

    # Save each page as a PNG file
    for i, image in enumerate(images):
        image.save(f"{output_folder}/page_{i + 1}.png", "PNG")


def convert_folder_of_pdfs(input_folder, output_folder):
    # Ensure the output folder exists
    os.makedirs(output_folder, exist_ok=True)

    # Iterate through all PDF files in the input folder
    for filename in os.listdir(input_folder):
        if filename.endswith(".pdf"):
            pdf_path = os.path.join(input_folder, filename)
            pdf_to_png(pdf_path, output_folder)


if __name__ == "__main__":
    input_folder = "C:\Users\AG\Desktop\robs_stuff\AG-projects\Projects\python\Old"
    output_folder = "C:\Users\AG\Desktop\robs_stuff\AG-projects\Projects\python\PNG"

    convert_folder_of_pdfs(input_folder, output_folder)
