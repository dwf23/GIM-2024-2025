#include "gim_model.h"

void readCSV(const std::string& filepath, fixed_16** &dataArray, int& num_rows, int& num_cols) {

    std::ifstream file(filepath);
    if (file.is_open()) {
        // Count the number of rows and columns
        std::string line;
        num_rows = 0;
        num_cols = 0;

        while (std::getline(file, line)) {
            num_rows++;

            std::istringstream iss(line);
            std::string value;
            while (std::getline(iss, value, ',')) {
                num_cols++;
            }
        }

        // Rewind the file to read values
        file.clear();
        file.seekg(0);

        // Allocate memory for the 2D array
        dataArray = new fixed_16 *[num_rows];
        for (int i = 0; i < num_rows; ++i) {
            dataArray[i] = new fixed_16[num_cols / num_rows];
        }

        // Read values into the array
        int row = 0, col = 0;
        while (std::getline(file, line)) {
            std::istringstream iss(line);
            std::string value;

            while (std::getline(iss, value, ',')) {
                dataArray[row][col] = std::stod(value);
                col++;
            }

            row++;
            col = 0;
        }

        file.close();
    } else {
        std::cerr << "Error: Unable to open file " << filepath << std::endl;
    }
}

// Function to deallocate memory for the 2D array
void freeArray(double**& dataArray, int num_rows) {
    for (int i = 0; i < num_rows; ++i) {
        delete[] dataArray[i];
    }
    delete[] dataArray;
}
