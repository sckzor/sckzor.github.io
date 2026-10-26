<!--CARD SDR GPS Decoder | April 2025 - May 2025 | /Images/portfolio/gps-1400.webp -->

# Software Defined Radio GPS Decoder

### April 2025 - May 2025

![GPS Reciever](/Images/portfolio/gps-1400.webp)


I led a team that implemented a software defined radio GPS signal decoder in C/C++. I wrote the digital signal processing and localization code for the project, while [Manuel de Tezanos Pinto](https://www.linkedin.com/in/manuel-de-tezanos-pinto/) developed the visualizations.

This project was undertaken as part of my [Software Systems](https://softsys.olin.edu/) final project at Olin College of Engineering.

In the end accuracy of the receiver was ~100 miles. The large amount of error was mostly caused by crude interpretation of the orbital elements in the satellite ephermeris data. I had a limited amount of time to write the code for this project and I wanted to focus on the signal processing pipeline more than the localization. I eventually ran out of time due to the constraints of the project. I might revisit this in the future and improve the accuracy.

The GitHub repository for the project is available [here](https://github.com/olincollege/GPS) if you are interested.

Below is a photo of my data capture setup in the parking lot of Olin College. The GPS antenna is circled in red.  The SDR and laptop are in the van.

![GPS Reciever on Van](/Images/portfolio/gps_van-1400.webp)
