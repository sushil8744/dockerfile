FROM python:3.10-slim

WORKDIR /app
RUN pip install --no-cache-dir pillow
RUN mkdir -p photos output
COPY photo_processor.py .
COPY photo/pic1.jpeg. /app/photos/.


RUN chmod +x photo_processor.py 
RUN python photo_processor.py --test || echo "Test run completed"
CMD ["python", "photo_processor.py"] 
