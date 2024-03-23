from PIL import Image
import struct

## this function will convert a png to a padded binary file
def convert_png_to_padded_binary(input_path, output_path):
    # Open the PNG image
    img = Image.open(input_path)

    # Convert the image to grayscale
    img = img.convert('L', palette=Image.ADAPTIVE, colors=16)

    # Resize the image to 160x120 pixels
    img = img.resize((160, 120))

    # Create a list to store the padded binary values
    padded_binary_values = []

    # Iterate through each pixel and convert to 4-bit binary with padding
    for pixel_value in img.getdata():
        binary_value = format(pixel_value >> 4, '04b')  # Right shift by 4 to get the 4-bit value
        padded_binary_values.append(binary_value.zfill(32))  # Pad with 0's to make it 32 bits

    # Combine padded binary values into a single string
    padded_binary_string = ''.join(padded_binary_values)

    # Pack padded binary string into bytes and write to a binary file
    with open(output_path, 'wb') as binary_file:
        binary_file.write(struct.pack('B' * (len(padded_binary_string) // 8), *[int(padded_binary_string[i:i+8], 2) for i in range(0, len(padded_binary_string), 8)]))

if __name__ == "__main__":
    input_path = "geometry.png"
    output_path = "output_image.bin"
    convert_png_to_padded_binary(input_path, output_path)