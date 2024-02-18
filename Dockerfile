# Use the official .NET 6 image from the Docker Hub
FROM mcr.microsoft.com/dotnet/aspnet:6.0

# Copy the files from the Docker build context to /app/DSTV3.UploadInterface.Api/ in the Docker container
COPY ./publish /app/DSTV3.UploadInterface.Api/

# Set the working directory
WORKDIR /app/DSTV3.UploadInterface.Api/

# Expose port 8503
EXPOSE 8503

# Start the app
ENTRYPOINT ["dotnet", "DSTV3.UploadInterface.Api.dll"]
