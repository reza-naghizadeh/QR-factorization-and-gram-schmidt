# QR Factorization and Gram-Schmidt Orthogonalization

This MATLAB project demonstrates the use of QR factorization to identify linearly dependent columns in a matrix and then applies the Gram-Schmidt process to compute an orthonormal basis for the dependent columns.

This code was developed as part of our Optimization course project at IASBS, in collaboration with my groupmate, [Erfan Faridi](https://github.com/erfanfaridii/).

## Features
- **QR Factorization**: Decomposes the input matrix to identify linearly dependent columns.
- **Column Extraction**: Constructs a new matrix from the identified dependent columns.
- **Gram-Schmidt Process**: Computes an orthonormal basis for the new matrix.
- **Visualization**: Plots both the original and orthonormalized vectors.

## Files
- **`qr_factorization_and_gram_schmidt.m`**: Main script containing the QR factorization and Gram-Schmidt implementation.

## How to Use
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/matrix-qr-gram-schmidt.git
   cd matrix-qr-gram-schmidt
   ```
2. Open `qr_factorization_and_gram_schmidt.m` in MATLAB.
3. Run the script to see:
   - The indices of dependent columns.
   - The matrix with dependent columns.
   - The computed orthonormal matrix.
   - Visual plots of the original and orthonormalized vectors.

## Example Output
After running the script, you will see:
- Indices of dependent columns.
- The new matrix formed by dependent columns.
- The orthonormal matrix derived using the Gram-Schmidt process.
- A plot showing the comparison between original and orthonormal vectors.

## Requirements
- MATLAB R2016b or later.
