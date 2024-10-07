import logging

import cv2
import easyocr
import time
import numpy as np
from robot.api.deco import keyword


class OCRLibrary:
    def __init__(self):
        print("Initializing OCR Library with updated settings.")  # Debug statement
        # Initialize EasyOCR for English and Arabic
        # self.reader_en = easyocr.Reader(['en'], gpu=True)  # Enable GPU if available for better performance
        self.reader_ar = easyocr.Reader(['ar'], gpu=True)

    @keyword
    def extract_all_ar_text(self, image_path):
        """Extract Arabic text from the given image."""
        # Load the image
        img = cv2.imread(image_path)
        if img is None:
            logging.error(f"Could not open or find the image: {image_path}")
            return None

        # Preprocess the image
        processed_img = self.preprocess_image(img)

        # Perform OCR
        results = self.reader.readtext(processed_img, detail=0, paragraph=True)

        # Join results into a single string
        extracted_text = ' '.join(results)
        return extracted_text

    @keyword
    def extract_specific_en_text(self, image_path):
        """Extracts all English text from the given image with enhanced preprocessing."""
        print(f"Extracting all English text from: {image_path}")  # Debug statement
        img = cv2.imread(image_path)
        if img is None:
            raise Exception(f"Failed to load image: {image_path}")

        # Convert to grayscale
        gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        print("Converted image to grayscale.")  # Debug statement

        # Apply Gaussian Blur
        blurred = cv2.GaussianBlur(gray, (5, 5), 0)
        print("Applied Gaussian Blur.")  # Debug statement

        # Apply adaptive thresholding
        processed_image = cv2.adaptiveThreshold(
            blurred, 255, cv2.ADAPTIVE_THRESH_GAUSSIAN_C, cv2.THRESH_BINARY, 11, 2
        )
        print("Applied adaptive thresholding.")  # Debug statement

        # Use EasyOCR to extract text from the processed image
        result = self.reader_en.readtext(processed_image)
        extracted_text = ' '.join([text[1] for text in result])  # Join all the recognized text strings

        # Log the extracted text for debugging
        print(f"Extracted Text: {extracted_text}")  # Debug statement

        return extracted_text

    @keyword
    def extract_all_ar_text(self, image_path):
        """Extracts all Arabic text from the given image with enhanced preprocessing."""
        print(f"Extracting all Arabic text from: {image_path}")
        img = cv2.imread(image_path)
        if img is None:
            raise Exception(f"Failed to load image: {image_path}")

        # Preprocess the image for better OCR performance
        processed_image = self.preprocess_image(img)

        # Use EasyOCR to extract text from the processed image
        result = self.reader_ar.readtext(processed_image)
        extracted_text = ' '.join([text[1] for text in result])

        print(f"Extracted Arabic Text: {extracted_text}")  # Debug statement
        return extracted_text

    def load_image(self, image_path):
        """Loads an image from the given path."""
        img = cv2.imread(image_path)
        if img is None:
            raise FileNotFoundError(f"Failed to load image: {image_path}")
        print("Loaded image successfully.")  # Debug statement
        return img

    def perform_ocr(self, processed_image):
        """Performs OCR on the processed image and extracts text."""
        result = self.reader_ar.readtext(processed_image)  # Use Arabic reader
        print(f"Raw OCR Result: {result}")  # Debug statement
        extracted_text = ' '.join([text[1] for text in result])  # Join all recognized text strings
        print(f"Extracted Arabic Text: {extracted_text}")  # Debug statement
        return extracted_text

    @keyword
    def extract_specific_ar_text(self, image_path):
        """Extracts specific Arabic text from the given image with enhanced preprocessing."""
        print(f"Extracting specific Arabic text from: {image_path}")  # Debug statement
        img = cv2.imread(image_path)
        if img is None:
            raise Exception(f"Failed to load image: {image_path}")

        # Convert to grayscale
        gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        print("Converted image to grayscale.")  # Debug statement

        # Apply Gaussian Blur
        blurred = cv2.GaussianBlur(gray, (5, 5), 0)
        print("Applied Gaussian Blur.")  # Debug statement

        # Apply adaptive thresholding
        processed_image = cv2.adaptiveThreshold(
            blurred, 255, cv2.ADAPTIVE_THRESH_GAUSSIAN_C, cv2.THRESH_BINARY, 11, 2
        )
        print("Applied adaptive thresholding.")  # Debug statement

        # Use EasyOCR to extract text from the processed image
        result = self.reader_ar.readtext(processed_image)  # Use Arabic reader
        extracted_text = ' '.join([text[1] for text in result])  # Join all the recognized text strings

        # Log the extracted text for debugging
        print(f"Extracted Arabic Text: {extracted_text}")  # Debug statement

        return extracted_text

    def preprocess_image(self, img):
        """Preprocess the image to enhance OCR accuracy."""
        # Convert to grayscale
        gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

        # Denoise the image
        denoised = cv2.fastNlMeansDenoising(gray, None, 30, 7, 21)

        # Apply CLAHE for contrast enhancement
        clahe = cv2.createCLAHE(clipLimit=2.0, tileGridSize=(8, 8))
        equalized = clahe.apply(denoised)

        # Apply adaptive thresholding
        processed_image = cv2.adaptiveThreshold(
            equalized, 255, cv2.ADAPTIVE_THRESH_GAUSSIAN_C, cv2.THRESH_BINARY, 11, 2
        )

        return processed_image


    def _extract_text(self, image_path, reader):
        """Extract and format text using the given EasyOCR reader with optimized settings."""
        results = reader.readtext(image_path, detail=1, contrast_ths=0.7, adjust_contrast=0.5)
        merged_rows = self.extract_and_merge_text(results)
        return self.format_rows(merged_rows)

    def extract_and_merge_text(self, results):
        """Extract and merge text from EasyOCR results."""
        merged_rows = []
        for (bbox, text, prob) in results:
            if prob >= 0.7:  # Confidence filter
                merged_rows.append(f"{text} (Confidence: {prob:.2f})")
        return merged_rows

    def format_rows(self, rows):
        """Format the merged rows into a readable string."""
        return '\n'.join(rows)  # Join rows with newlines

    @keyword
    def live_image_processing(self):
        """Processes a live image feed from the webcam and extracts text."""
        cap = cv2.VideoCapture(0)
        time.sleep(2)  # Allow time for the camera to warm up
        ret, frame = cap.read()
        cap.release()
        if ret:
            frame_path = "temp_frame.jpg"
            cv2.imwrite(frame_path, frame)  # Save the frame
            return self.extract_all_en_text(frame_path)
        else:
            raise Exception("Failed to capture image from webcam")

    @keyword
    def take_screenshot_image_processing(self, screenshot_path):
        """Captures a screenshot of the current screen and extracts text."""
        screen = cv2.VideoCapture(0)
        ret, frame = screen.read()
        if ret:
            cv2.imwrite(screenshot_path, frame)
            return self.extract_all_en_text(screenshot_path)
        else:
            raise Exception("Failed to take screenshot")
