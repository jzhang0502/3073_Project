from PIL import Image
import struct

## This function will convert the output bin from the SDRAM into an image.
def convert_binary_to_png(input_path, output_path, width, height):
    # Read binary file
    with open(input_path, 'rb') as binary_file:
        binary_data = binary_file.read()

    # Convert binary data to a list of 4-bit values
    binary_values = [format(byte, '08b') for byte in binary_data]
    binary_values = ''.join(binary_values)
    binary_values = [binary_values[i:i+4] for i in range(0, len(binary_values), 4)]
    
    # Strip the padding and scale the values to 0-255
    binary_values = [int(value, 2)<<4 for value in binary_values]
    
    # keep every 4th value, starting at 2
    binary_values = binary_values[3::4]
    # strip every 2nd value
    binary_values = binary_values[1::2]

    # convert to png image
    img = Image.new('L', (width, height))
    img.putdata(binary_values)
    img.save(output_path)

if __name__ == "__main__":
    input_path = "input_image.bin"
    output_path = "output_image.png"
    image_width = 160
    image_height = 120

    convert_binary_to_png(input_path, output_path, image_width, image_height)